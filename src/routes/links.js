const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/', isLoggedIn, async (req, res) => {
    const links = await pool.query('SELECT bantuans.id, bantuans.tanggal, useraskers.name, bantuans.judul, bantuans.jumlah_bantuan, bantuan_givers.nilai_bantuan FROM bantuans, useraskers, bantuan_givers WHERE bantuans.useraskers_id = useraskers.id AND bantuan_givers.bantuan_id = bantuans.id');
    res.render('links/list', { links });
});

router.get('/edit/:id', async (req, res) => {
    const { id } = req.params;
    const links = await pool.query('SELECT bantuans.id, bantuans.tanggal, useraskers.name, bantuans.judul, bantuans.detail, bantuans.jumlah_bantuan, bantuan_givers.nilai_bantuan FROM bantuans, useraskers, bantuan_givers WHERE bantuans.useraskers_id = useraskers.id AND bantuan_givers.bantuan_id = ?', [id]);
    console.log(links);
    res.render('links/edit', {link: links[0]});
});

// router.post('/edit/:id', async (req, res) => {
//     const { id } = req.params;
//     const { title, description, url} = req.body; 
//     const newLink = {
//         title,
//         description,
//         url
//     };
//     await pool.query('UPDATE links set ? WHERE id = ?', [newLink, id]);
//     req.flash('success', 'Link Updated Successfully');
//     res.redirect('/links');
// });

module.exports = router;
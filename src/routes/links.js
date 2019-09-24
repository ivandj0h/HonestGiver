const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

router.get('/', isLoggedIn, async (req, res) => {
    const links = await pool.query('SELECT bantuans.tanggal, useraskers.name, bantuans.judul, bantuans.jumlah_bantuan, bantuan_givers.nilai_bantuan FROM bantuans, useraskers, bantuan_givers WHERE bantuans.useraskers_id = useraskers.id AND bantuan_givers.bantuan_id = bantuans.id');
    res.render('links/list', { links });
});

router.get('/', async (req, res) => {
    const terpenuhi = await pool.query('SELECT bantuan_givers.tanggal_dibantu, bantuan_givers.nilai_bantuan, useraskers.name, bantuans.tanggal, bantuans.judul FROM bantuan_givers, useraskers, bantuans WHERE bantuan_givers.bantuan_id = bantuans.id AND bantuans.useraskers_id = useraskers.id');
    res.render('links/edit', { terpenuhi });
});

router.post('/edit/:id', async (req, res) => {
    const { id } = req.params;
    const { title, description, url} = req.body; 
    const newLink = {
        title,
        description,
        url
    };
    await pool.query('UPDATE links set ? WHERE id = ?', [newLink, id]);
    req.flash('success', 'Link Updated Successfully');
    res.redirect('/links');
});

module.exports = router;
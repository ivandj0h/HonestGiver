const express = require('express');
const router = express.Router();

const pool = require('../database');
const { isLoggedIn } = require('../lib/auth');

const moment = require('moment');
moment().format();

router.get('/', isLoggedIn, async (req, res) => {
    const link = await pool.query('SELECT bantuan_givers.tanggal_dibantu, bantuan_givers.nilai_bantuan, useraskers.name, bantuans.tanggal, bantuans.judul FROM bantuan_givers, useraskers, bantuans WHERE bantuan_givers.bantuan_id = bantuans.id AND bantuans.useraskers_id = useraskers.id');
    res.render('link/list', { link });
});

module.exports = router;
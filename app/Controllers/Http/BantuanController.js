'use strict'

const Bantuan = use('App/Models/Bantuan')
//const Database = use('Database')

class BantuanController {

    async home({ view }) {

        //const bantuan = await Bantuan.all()
        //const bantuan = await Database.from('bantuans').where('id', 1)
        const bantuan = await Bantuan
            .query()
            .with('userasker')
            .select('id','tanggal', 'judul')
            .fetch()

            return view.render('home', {
              title: 'BANTUAN DIBUTUHKAN',
              data: bantuan.toJSON()
            })
    }
}

module.exports = BantuanController
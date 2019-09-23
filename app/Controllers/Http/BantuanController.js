'use strict'

const Bantuan = use('App/Models/Bantuan')
//const Database = use('Database')

class BantuanController {

    async home({ view }) {

        const bantuan = await Bantuan.all()

        return view.render('home', {
            title: 'BANTUAN DIBUTUHKAN',
            data: bantuan.toJSON()
        })
    }

    async index({ view }) {
        const bantuan = await Bantuan.all()

        return view.render('datas.index', {
            title: 'DETAIL BANTUAN DIBUTUHKAN',
            data: bantuan.toJSON()
        })
    }    

    async detail({ params, view }) {
        const bantuan = await Bantuan.find(params.id)

        return view.render('datas.detail', {
            title: 'DETAIL BANTUAN DIBUTUHKAN',
            data: bantuan
        })
    }
}

module.exports = BantuanController
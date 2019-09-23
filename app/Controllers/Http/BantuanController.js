'use strict'

const Bantuan = use('App/Models/Bantuan')

class BantuanController {

    async home({ view }) {

        const bantuan = await Bantuan.all()

        return view.render('home', {
            title: 'BANTUAN DIBUTUHKAN',
            description: 'Social Honest is a social assistance platform created to bridge between those who need financial assistance and those who want to help and HonestGiver is part of Social Honest, a mini-application that acts as an aid provider.'
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
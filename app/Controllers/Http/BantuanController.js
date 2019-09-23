'use strict'

const Bantuan = use('App/Models/Bantuan')

class BantuanController {

    async home({ view }) {

        const bantuan = await Bantuan.all()

            return view.render('home', {
              title: 'BANTUAN DIBUTUHKAN',
              data: bantuan.toJSON()
            })
    }
}

module.exports = BantuanController
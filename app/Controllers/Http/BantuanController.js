'use strict'

class BantuanController {
    async index({ view }) {
        return view.render('home', {
          title: 'Latest Posts'
        })
      }
}

module.exports = BantuanController

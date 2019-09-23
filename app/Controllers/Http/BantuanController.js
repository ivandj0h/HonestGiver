'use strict'

class BantuanController {
    
    async home({ view }) {
        return view.render('home', {
          title: 'Testing'
        })
      }
}

module.exports = BantuanController

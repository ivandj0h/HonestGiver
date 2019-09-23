'use strict'

class BantuanController {
    
    async home({ view }) {

      const cthData = [
        {name: 'juna',age: 5},
        {name: 'dave',age: 11}
      ]

        return view.render('home', {
          title: 'BANTUAN DIBUTUHKAN',
          data:cthData
        })
      }
}

module.exports = BantuanController

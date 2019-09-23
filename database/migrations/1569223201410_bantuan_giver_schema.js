'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class BantuanGiverSchema extends Schema {
  up () {
    this.create('bantuan_givers', (table) => {
      table.increments()
      table.integer('bantuan_id')
      table.integer('giver_user_id')
      table.date('tanggal_dibantu')
      table.float('nilai_bantuan',17,8)
      table.timestamps()
    })
  }

  down () {
    this.drop('bantuan_givers')
  }
}

module.exports = BantuanGiverSchema

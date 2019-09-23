'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class BantuanSchema extends Schema {
  up () {
    this.create('bantuans', (table) => {
      table.increments()
      table.integer('asker_user_id').unsigned().index('asker_user_id')
      table.date('tanggal')
      table.string('judul', 254)
      table.float('jumlah_bantuan',17,8)
      table.text('detail')
      table.timestamps()
    })
  }

  down () {
    this.drop('bantuans')
  }
}

module.exports = BantuanSchema

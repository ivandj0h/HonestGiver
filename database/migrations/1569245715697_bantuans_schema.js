'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class BantuansSchema extends Schema {
  up () {
    this.create('bantuans', (table) => {
      table.increments()
      table.bigInteger('asker_user_id').references('id').inTable('useraskers')
      table.date('tanggal', 40).nullable()
      table.string('judul', 225).nullable()
      table.decimal('jumlah_bantuan',17,8).nullable()
      table.text('detail').nullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('bantuans')
  }
}

module.exports = BantuansSchema

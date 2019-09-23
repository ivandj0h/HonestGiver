'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class BantuanGiversSchema extends Schema {
  up () {
    this.create('bantuan_givers', (table) => {
      table.increments()
      table.integer('bantuan_id').unsigned().references('id').inTable('bantuans')
      table.integer('giver_user_id').unsigned().references('id').inTable('usergivers')
      table.date('tanggal_dibantu').nullable()
      table.decimal('nilai_bantuan', 17,8).nullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('bantuan_givers')
  }
}

module.exports = BantuanGiversSchema

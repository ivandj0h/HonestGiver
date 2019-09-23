'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class BantuangiversSchema extends Schema {
  up () {
    this.create('bantuangivers', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('bantuangivers')
  }
}

module.exports = BantuangiversSchema

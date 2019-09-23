'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class BantuansSchema extends Schema {
  up () {
    this.create('bantuans', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('bantuans')
  }
}

module.exports = BantuansSchema

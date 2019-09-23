'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class UseraskersSchema extends Schema {
  up () {
    this.create('useraskers', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('useraskers')
  }
}

module.exports = UseraskersSchema

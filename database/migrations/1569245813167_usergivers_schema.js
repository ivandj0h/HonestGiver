'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class UsergiversSchema extends Schema {
  up () {
    this.create('usergivers', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('usergivers')
  }
}

module.exports = UsergiversSchema

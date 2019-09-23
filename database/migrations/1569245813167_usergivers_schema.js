'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class UsergiversSchema extends Schema {
  up () {
    this.create('usergivers', (table) => {
      table.increments()
      table.string('name', 80).notNullable().unique()
      table.string('email', 254).notNullable().unique()
      table.string('password', 60).notNullable()
      table.boolean('is_active').defaultTo(0)      
      table.timestamps()
    })
  }

  down () {
    this.drop('usergivers')
  }
}

module.exports = UsergiversSchema

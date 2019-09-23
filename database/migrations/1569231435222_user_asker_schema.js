'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class UserAskerSchema extends Schema {
  up () {
    this.create('user_askers', (table) => {
      table.increments()
      table.string('username', 80).notNullable().unique()
      table.string('email', 254).notNullable().unique()
      table.string('password', 60).notNullable()
      table.boolean('is_active').defaultTo(0)      
      table.timestamps()
    })
  }

  down () {
    this.drop('user_askers')
  }
}

module.exports = UserAskerSchema

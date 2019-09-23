'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class UserAsker extends Model {
    bantuan () {
        return this.hasOne('App/Models/Bantuan')
    }  
}

module.exports = UserAsker

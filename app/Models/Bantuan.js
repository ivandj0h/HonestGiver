'use strict'

/** @type {typeof import('@adonisjs/lucid/src/Lucid/Model')} */
const Model = use('Model')

class Bantuan extends Model {
    userasker() {
        return this.belongsTo('App/Models/Userasker')
    }

    static get dates() {
        return super.dates.concat(['tanggal'])
    }

    static castDates(field, value) {
        if (field === 'tanggal') {
            return value.format('DD-MM-YYYY')
        }
    }
}

module.exports = Bantuan

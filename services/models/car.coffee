'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

CarSchema = new Schema
	_company:
		type: Schema.Types.ObjectId
		ref: 'jp_company'
		require: true

	_route:
		type: Schema.Types.ObjectId
		ref: 'jp_route'
		require: true

	name:
		type: String

	start_time:
		type: String

	price:
		type: String

	seats:
		type: [String]

	notes:
		type: String

	created_date:
		type: Date
		default: Date.now


module.exports = mongooes.model 'jp_car', CarSchema

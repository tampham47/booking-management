'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

UserSchema = new Schema
	_company:
		type: Schema.Types.ObjectId
		ref: 'jp_company'
		require: true

	user_name:
		type: String
		unique: true
		require: true

	phone_number:
		type: String

	email:
		type: String

	full_name:
		type: String

	birthday:
		type: Date

	role:
		type: String
		enum: ['admin', 'manager']

	created_date:
		type: Date
		default: Date.now

module.exports = mongooes.model 'jp_user', UserSchema
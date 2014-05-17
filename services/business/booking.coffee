'use strict'

Booking = require '../models/booking'

GetByCar = (_car, str_date) ->
	Booking.find({_car: _car, str_date: str_date})
	.populate('_guest').exec()

create = (data) ->
	# create function always return a promise
	Booking.create(data)

update = (id, data) ->
	Booking.findByIdAndUpdate(id, data).exec()

getById = (id) ->
	Booking.getById(id).exec()

getAll = ->
	Booking.find({}).exec()

get = (index, limit) ->
	Booking.find({}).sort({created_date: -1})
	.skip(index).limit(limit).exec()


module.exports = {
	create, update,
	getById, getAll, get, GetByCar
}

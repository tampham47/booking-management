'use strict'

Car = require '../models/car'

create = (data) ->
	# create function always return a promise
	Car.create(data)

update = (id, data) ->
	Car.findByIdAndUpdate(id, data).exec()

getById = (id) ->
	Car.getById(id).exec()

getAll = ->
	Car.find({}).populate('_route').exec()

get = (index, limit) ->
	Car.find({}).sort({created_date: -1})
	.skip(index).limit(limit).exec()

GetByRoute = (_route) ->
	Car.find({ _route: _route}).populate('_route').exec()


module.exports = {
	create, update, getById, getAll, get
	GetByRoute
}

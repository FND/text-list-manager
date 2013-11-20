$ = jQuery

class TextListManager

	constructor: (node, @delimiter = ", ") ->
		@field = $(node).data("text-list-manager", @)
		@deserialize()
		return

	list: ->
		return (item for item in @items) # clone to avoid mutability

	add: (item) ->
		@items.push(item)
		@serialize()
		return
	
	serialize: ->
		@field.val @items.join(@delimiter)
		return

	deserialize: ->
		@items = []
		return

# jQuery API wrapper

$.fn.textListManager = (cmd, args...) ->
	if cmd and @length > 1
		throw "multiple elements only supported for initialization" # XXX: sad

	result = null
	@each (i, node) ->
		manager = $(node).data("text-list-manager") # XXX: breaks encapsulation
		unless manager
			manager = new TextListManager(node)
		if cmd
			result = manager[cmd](args...)
			return false

	return if cmd then result else @

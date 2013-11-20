$ = jQuery
module = QUnit.module
test = QUnit.test
strictEqual = QUnit.strictEqual
deepEqual = QUnit.deepEqual

module("TextListManager API", setup: ->
	@fixtures = $("#qunit-fixture")
	return)

test("initialization", ->
	@fixtures.append($("<textarea />")[0] for i in [1..3])
	el = @fixtures.find("textarea").eq(1)

	list = el.textListManager("list")
	strictEqual el.val(), ""
	deepEqual list, []

	el.textListManager("add", "hello world")
	strictEqual el.val(), "hello world"
	deepEqual list, ["hello world"]

	return)

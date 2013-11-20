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
	el = @fixtures.find("textarea").textListManager().eq(1)

	list = el.textListManager("list")
	strictEqual el.val(), ""
	deepEqual list, []

	el.textListManager("add", "foo")
	list = el.textListManager("list")
	strictEqual el.val(), "foo"
	deepEqual list, ["foo"]

	el.textListManager("add", "hello world")
	list = el.textListManager("list")
	strictEqual el.val(), "foo, hello world"
	deepEqual list, ["foo", "hello world"]

	return)

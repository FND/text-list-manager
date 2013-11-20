Text List Manager

API for managing list values within `textarea` or `input` fields

    jQuery("textarea").textListManager();
    jQuery("textarea").textListManager("list"); // ["foo", "bar"]
    jQuery("textarea").textListManager("add", "hello world");


Contributing
------------

* `make dependencies`
* `make autocompile` (watches and compiles CoffeeScript files)
* `make test` (requires [PhantomJS](http://phantomjs.org)), or simply open
  `test/index.html` in a browser

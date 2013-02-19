Dart: Up and Running
=============

This is the book "Dart: Up and Running" by Kathy Walrath and Seth Ladd.
More info: http://shop.oreilly.com/product/0636920025719.do

An HTML version of this book is online at
http://www.dartlang.org/docs/dart-up-and-running/.

As of February 2013, this is our primary repository for the book. (We'll copy the .xml files to the private
O'Reilly repo from time to time; they'll publish from their repo every few months.)

The code/ directory is up-to-date but incomplete.

Updating the dartlang.org copy of this book
------------------
Basically, you get the dartlang.org project, and you run `make book`.
See https://github.com/dart-lang/dartlang.org#readme for details.

Project structure
---------------------

**code/:**
	Code samples used in the book. We want this to be automatically checked
	against or included in the XML files, but we're not there yet. We also
	want this code to be automatically tested.

**figs/:**
	Figures and images.

**README.md:**
	This file.

**\*.xml:** 
	Book contents. **book.xml** is the entry point for the book, from an
	XML point of view.

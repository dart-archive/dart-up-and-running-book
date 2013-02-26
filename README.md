Dart: Up and Running
=============

[![Build Status](https://drone.io/github.com/dart-lang/dart-up-and-running-book/status.png)](https://drone.io/github.com/dart-lang/dart-up-and-running-book/latest)

This is the book _Dart: Up and Running_ by Kathy Walrath and Seth Ladd.
More info: http://shop.oreilly.com/product/0636920025719.do

An HTML version of this book is online at
http://www.dartlang.org/docs/dart-up-and-running/.


Repo info
-----------
As of February 2013, this is our primary repository for the book. We copy the .xml files to the private
O'Reilly repo from time to time; we expect them to publish from their repo every few months.

Currently, drone.io tests only whether the .dart files under code/ pass static analysis (dart_analyzer).
We don't yet have .dart files for every snippet in the book.
In the future, we might want to test whether the .xml files are valid.

Updating the dartlang.org copy of this book
------------------
Basically, you get the dartlang.org project, and you run `make book`.
See https://github.com/dart-lang/dartlang.org#readme for details.

Project structure
---------------------

**code/:**
	Code samples used in the book. We want this to be automatically checked
	against or included in the XML files, but we're not there yet.

**figs/:**
	Figures and images.

**README.md:**
	This file.

**\*.xml:** 
	Book contents. **book.xml** is the entry point for the book, from an
	XML point of view.
	
**runtests.sh:**
       BASH script that runs dart_analyzer on all Dart source files in the code directory.

Dart: Up and Running
=============

[![Build Status](https://drone.io/github.com/dart-lang/dart-up-and-running-book/status.png)](https://drone.io/github.com/dart-lang/dart-up-and-running-book/latest)

Note: The listFiles.dart test will fail until a new SDK is released.

This is the book _Dart: Up and Running_ by Kathy Walrath and Seth Ladd.
More info: http://shop.oreilly.com/product/0636920025719.do

An HTML version of this book is online:
http://www.dartlang.org/docs/dart-up-and-running/


Repo and testing info
-----------
As of February 2013, this is our primary repository for the book. We copy the .xml files to the private
O'Reilly repo from time to time; we expect them to publish from their repo every few months.

Currently, drone.io tests only whether the .dart files under **code/** pass static analysis (dart_analyzer).
We could do real unit testing, and we could do better with HTML samples.
In the future, we might want to test whether the .xml files are valid.
The command for that would be something like this:

    xmllint --postvalid --xinclude --noout book.xml

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

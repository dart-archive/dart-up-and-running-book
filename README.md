Dart: Up and Running
=============

[![Build Status](https://drone.io/github.com/dart-lang/dart-up-and-running-book/status.png)](https://drone.io/github.com/dart-lang/dart-up-and-running-book/latest)

This is the book _Dart: Up and Running_ by Kathy Walrath and Seth Ladd.
More info: http://shop.oreilly.com/product/0636920025719.do

An HTML version of this book is online:
http://www.dartlang.org/docs/dart-up-and-running/


Repo and testing info
-----------
The text in this repo is old; the latest text is in the
dart-lang/www.dartlang.org repo under
[/src/site/docs/dart-up-and-running](https://github.com/dart-lang/www.dartlang.org/tree/master/src/site/docs/dart-up-and-running).
This repo still contains the latest code.

Currently, drone.io tests only whether the .dart files under **code/** pass static analysis (dart_analyzer).
We could do real unit testing, and we could do better with HTML samples.

Issues and suggestions
----------------------
If you'd like to notify us about an issue in the book or if you'd like to suggest changes please use the [www.dartlang.org issue tracker](https://github.com/dart-lang/www.dartlang.org/labels/UpAndRunning).

Project structure
---------------------

**code/:**
	Code samples used in the book. We want this to be automatically checked
	against or included in the XML files, but we're not there yet.

**figs/:**
	OBSOLETE: Figures and images.

**README.md:**
	This file.

**\*.xml:** 
	OBSOLETE: Book contents. **book.xml** is the entry point for the book, from an
	XML point of view.
	
**runtests.sh:**
       BASH script that runs dart_analyzer on all Dart source files in the code directory.

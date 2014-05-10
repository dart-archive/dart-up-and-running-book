Dart: Up and Running
=============

[![Build Status](https://drone.io/github.com/dart-lang/dart-up-and-running-book/status.png)](https://drone.io/github.com/dart-lang/dart-up-and-running-book/latest)

Это книга _Dart: Up and Running_ создана Kathy Walrath and Seth Ladd.

Информация: http://shop.oreilly.com/product/0636920025719.do

HTML версия этой книги в сети:
http://www.dartlang.org/docs/dart-up-and-running/


Репозиторий и информация о тестировании
-----------
По состоянию на февраль 2013 года, это наше основное хранилище для книги. Время от времени мы копируем .xml файлы из частного репозитория O'Reilly; Мы ожидаем обновления их репозитория каждые несколько месяцев.

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

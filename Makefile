all:	test doc-code-merge

# Run doc-code-merge.
#
# The reason I have to do this awful trick with tar is because
# doc-code-merge wants to start out with a fresh output directory
# everytime (just in case stuff got deleted), whereas Subversion
# likes to put .svn directories all over the place, and it gets
# really upset if you delete them.
doc-code-merge:	xml code
	doc_code_merge.dart xml code output

	(cd output && tar cf - *) | \
	(cd merged && tar xf -)

	rm -rf output

# Run dart_analyzer and run each Dart file.
#
# This is hideously ugly, but I don't know of any other way to do it.
# Worst of all, dart_analyzer always seems to exit with a status of 1,
# so I can't test that it was successful.
test:
	@dart_files=`find code -name \*.dart` && \
	(for i in $$dart_files; do \
		echo Analyzing $$i > /dev/tty; \
		echo --enable_type_checks $$i; \
	done;) | \
	dart_analyzer -batch 2>&1 | \
	egrep -v ">>>|with -batch ignored"; \
	for i in $$dart_files; do \
		echo Testing $$i; \
		dart --enable-checked-mode $$i > /dev/null; \
	done
	rm -rf out
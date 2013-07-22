import 'dart:async';

// fake methods to make the below examples work

dbQuery(query, {onSuccess(results)}) {
  Timer.run(() => onSuccess([]));
}

Future expensiveWork() {
  return new Future.value(true);
}

Future lengthyComputation() {
  return new Future.value(true);
}

Future costlyQuery() {
  return new Future.value(true);
}


Future deleteLotsOfFiles() {
  return new Future.value(true);
}

Future copyLotsOfFiles() {
  return new Future.value(true);
}

Future checksumLotsOfOtherFiles() {
  return new Future.value(true);
}

// end fake methods

Future longExpensiveSearch() {
  var completer = new Completer();

  // Perform exhaustive search.
  dbQuery('select * from table', onSuccess: (results) {
    // Sometime later,
    // found it!!
    completer.complete(results);
  });

  return completer.future;
}

Future doSearch() {
  var future = longExpensiveSearch(); // Returns immediately.

  return future.then((results) {
    // The following code executes when the operation is complete.
    print('Here are the results: $results');
  });
}

Future runSearch() {
  var future = longExpensiveSearch(); // Returns immediately.

  return future.then((results) {
    print('Here are the results: $results');
  }).catchError((e) {
    print("Oops! Encountered $e");
  });
}

Future runQuery() {
  Future result = costlyQuery();

  return result.then((value) => expensiveWork())
               .then((value) => lengthyComputation())
               .then((value) => print('done!'))
               .catchError((exception) => print('DOH!'));
}

Future wait() {
  Future deleteDone = deleteLotsOfFiles();
  Future copyDone = copyLotsOfFiles();
  Future checksumDone = checksumLotsOfOtherFiles();

  Future.wait([deleteDone, copyDone, checksumDone]).then((List values) {
    print('Done with all the long steps');
  });

}

main() {
  runSearch();
  doSearch();
  runQuery();
  wait();
}

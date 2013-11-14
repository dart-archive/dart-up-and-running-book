import 'dart:async';

// fake methods to make the below examples work

Future getFuture() {
  return new Future.value(true);
}

handleValue(value) {
  print('value is $value');
}

handleError(error) {
  print('error is $error');
}

Future dbQuery(query) {
  return new Future.value(true);
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
  // Do some setup.
  // Perform an exhaustive search.
  return dbQuery('select * from table');
}

Future runSearch() {
  var future = longExpensiveSearch(); // Returns immediately.

  return future.then((results) { print('Here are the results: $results'); })
    .catchError((e) {
      print("Oops! Encountered $e"); });
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
  Future<int> future = getFuture();
  future.then((value) => handleValue(value))
        .catchError((error) => handleError(error));

  runSearch();
  runQuery();
  wait();
}

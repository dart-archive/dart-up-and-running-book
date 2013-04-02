class OutOfLlamasException { }

breedMoreLlamas() { }
buyMoreLlamas() { }
cleanLlamaStalls() { }

class Point { }

main() {
  var numberOfLlamas = 1;
  if (numberOfLlamas <= 0) {
    throw new StateError('Value must be greater than zero');
  }
  if (numberOfLlamas <= 0) {
    throw 'Out of llamas!';
  }

  distanceTo(Point other) => throw new UnimplementedError();

  try {
    breedMoreLlamas();
  } on OutOfLlamasException {
    buyMoreLlamas();
  }

  try {
    breedMoreLlamas();
  } on OutOfLlamasException {           // A specific exception
    buyMoreLlamas();
  } on Exception catch(e) {             // Anything else that is an exception
    print('Unknown exception: $e');
  } catch(e) {                          // No specified type, handles all
    print('Something really unknown: $e');
  }

  try {
    breedMoreLlamas();
  } finally {
    cleanLlamaStalls();  // Always clean up, even if an exception is thrown.
  }

  try {
    breedMoreLlamas();
  } catch(e) {
    print('Error: $e');  // Handle the exception first.
  } finally {
    cleanLlamaStalls();  // Then clean up.
  }
}

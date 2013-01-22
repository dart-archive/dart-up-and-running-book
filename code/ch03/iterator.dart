class Process {
  // Represents a process...
}

class ProcessIterator implements Iterator<Process> {
  Process current;
  bool moveNext() {
    // True if calling next() would return a process
    return false;
  }
}

// A mythical class that lets you iterate through all processes.
class Processes extends Iterable<Process> {
  final Iterator<Process> iterator = new ProcessIterator();
}

main() {
  // Objects that implement Iterable can be used with for-in.
  for (var process in new Processes()) {
    // Do something with the process.
  }
}


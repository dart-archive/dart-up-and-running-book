var CLOSED = 1;
var PENDING = 2;
var APPROVED = 1;
var DENIED = 1;
var OPEN = 1;

executeClosed() { }
executePending() { }
executeApproved() { }
executeDenied() { }
executeOpen() { }
executeUnknown() { }
executeNowClosed() { }

main () {
  switcher();
  switcheroo();
  switcherooni();
  switchItUp();
}

switcher() {
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      break;
    case 'PENDING':
      executePending();
      break;
    case 'APPROVED':
      executeApproved();
      break;
    case 'DENIED':
      executeDenied();
      break;
    case 'OPEN':
      executeOpen();
      break;
    default:
      executeUnknown();
  }
}

switcheroo() {
  var command = 'OPEN';
  switch (command) {
    case 'OPEN':
      executeOpen();
      // ERROR: Missing break causes an exception to be thrown!!
      // NOTE: Added break so sample passes dart_analyzer
      break;
  
    case 'CLOSED':
      executeClosed();
      break;
  }
}

switcherooni() {
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':     // Empty case falls through.
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      executeNowClosed();
      break;
  }
}

switchItUp() {
  var command = 'CLOSED';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      continue nowClosed; // Continues executing at the nowClosed label.

  nowClosed:
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      executeNowClosed();
      break;
  }
}

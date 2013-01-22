main() {
  // Get the current date and time.
  var now = new Date.now();
  print(now);
  
  // Create a new Date with the local time zone.
  var y2k = new Date(2000);   // January 1, 2000
  print(y2k);
  
  // You can specify the month and day (and hour, minute, second, and millisecond).
  y2k = new Date(2000, 1, 2); // January 2, 2000
  print(y2k);
  
  // Specify the date as a UTC time.
  y2k = new Date.utc(2000);   // January 1, 2000, UTC
  print(y2k);
  
  // Specify a date and time in milliseconds since the Unix epoch.
  y2k = new Date.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
  print(y2k);
  
  // Parse an ISO 8601 date.
  y2k = new Date.fromString('2000-01-01T00:00:00Z');
  print(y2k);
  
  assert(y2k.millisecondsSinceEpoch == 946684800000);
}


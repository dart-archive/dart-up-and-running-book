import 'dart:isolate';

echo() {
  port.receive((msg, reply) {
    reply.send('I received: $msg');
  });
}

main() {
  var sendPort = spawnFunction(echo);
  sendPort.call('Hello from main').then((reply) {
    print(reply);    // I received: Hello from main
  });
}

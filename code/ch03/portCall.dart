import 'dart:isolate';
import 'dart:async';

echo(SendPort initialReplyTo) {
  var port = new ReceivePort();
  initialReplyTo.send(port.sendPort);
  port.listen((msg) {
    var data = msg[0];
    print('echo received msg: $data');
    SendPort replyTo = msg[1];
    replyTo.send(data);
//    port.close();
    if (data == 'bar') port.close();
  });
}

Future sendReceive(SendPort port, msg) {
  ReceivePort response = new ReceivePort();
  port.send([msg, response.sendPort]);
  return response.first;
}

main() {
  var response = new ReceivePort();
  Future<Isolate> remote = Isolate.spawn(echo, response.sendPort);
  remote.then((_) => response.first)
      .whenComplete(response.close) // Close when complete.
      .then((sendPort) {
        sendReceive(sendPort, 'foo')
            .then((msg) {
              print('remote isolate handler received msg: $msg');
            });
      });
}
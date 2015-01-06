import 'dart:html';

main() {
  var button = new ButtonElement();
  button
    ..id = 'confirm'
    ..text = 'Confirm'
    ..classes.add('important')
    ..onClick.listen((e) => window.alert('Confirmed!'));
  querySelector('#registration').children.add(button);
}

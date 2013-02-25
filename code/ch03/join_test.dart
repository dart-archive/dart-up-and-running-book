import 'dart:uri';

String encodeMap(Map data) {
  return data.keys.map((k) {
    return '${encodeUriComponent(k)}=${encodeUriComponent(data[k])}';
  }).join('&amp;');
}

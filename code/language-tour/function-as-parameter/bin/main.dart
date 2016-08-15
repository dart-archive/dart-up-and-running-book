printElement(element) {
  print(element);
}

main() {
  var list = [1, 2, 3];
  
  // Pass printElement as a parameter.
  list.forEach(printElement);
}

String say(String from, String msg, [String device]) {
  var result = '$from says $msg';
  // BEGIN(checking_optional_parameter_value_existence)
  if (?device) {    // Returns true if the caller specified the parameter.
    //...The user set the value. Do something with it...
  }
  // END(checking_optional_parameter_value_existence)
  return result;
}

main() {}

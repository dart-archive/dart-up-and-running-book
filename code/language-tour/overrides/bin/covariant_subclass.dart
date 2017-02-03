// NOTE: This passes strong mode analysis.
// dartanalyzer --strong bin/covariant_subclass.dart

class Widget {
  void addChild(Widget widget) {
    print('added child: $widget');
  }
}

class RadioButton extends Widget {
  void select() {
    print('selected');
  }
}

class RadioGroup extends Widget {
  void addChild(covariant RadioButton button) {
    button.select();
    super.addChild(button);
  }
}

void main() {
  var container = new Widget();
  var radioGroup = new RadioGroup();
  var radioButton = new RadioButton();

  radioGroup.addChild(radioButton);
  container.addChild(radioGroup);
}

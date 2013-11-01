// MOVE TO CHAPTER 3?
main() {
//  var namedIntArguments = new Map<Symbol, int>();
//  namedIntArguments[#d] = 4;
//  namedIntArguments[#e] = 5;
//  assert(Function.apply(foo, [1,2,3], namedIntArguments)
  assert(Function.apply(foo, [1,2,3], {#d: 4, #e: 5})
      == foo(1, 2, 3, d: 4, e: 5));
  Function.apply(foo, [1,2,3]);
  
  var a = new A();
  a.bar();
//  a.baz();
}

int foo(int a, int b, int c, {int d: 0, int e: 0}) {
  // ...
//  var result = a + b + c + d + e;
//  print(result);
//  return result;
}

class A {
  var b = new B();
  
  void noSuchMethod(Invocation invocation) {
    if (invocation.memberName == #bar) {
      print('A responding to bar() by calling b.baz()');
      return b.baz();
    } else {
      return super.noSuchMethod(invocation);
    }
  }
}

class B {
  void baz() {
    print('B responding to baz()');
  }
}
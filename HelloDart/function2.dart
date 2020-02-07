/**
 * 在很多语言中, 函数并不能作为一等公民来使用, 比如Java/OC. 这种限制让编程不够灵活,
 * 所以现代的编程语言基本都支持函数作为一等公民来使用, Dart也支持.
 * 这就意味着你可以将函数赋值给一个变量, 也可以将函数作为另外一个函数的参数或者返回值来使用.
 */
main(List<String> args) {
  // 1.将函数赋值给一个变量
  var bar = foo;
  print(bar);

  // 2.将函数作为另一个函数的参数
  test(foo);

  // 3.将函数作为另一个函数的返回值
  var func =getFunc();
  func('kobe');
}

// 1.定义一个函数
foo(String name) {
  print('传入的name:$name');
}

// 2.将函数作为另外一个函数的参数
test(Function func) {
  func('coderwhy');
}

// 3.将函数作为另一个函数的返回值
getFunc() {
  return foo;
}

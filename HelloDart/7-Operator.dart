/**
 * 特殊运算符
 */
main(List<String> args) {
  /**
   * 除法、整除、取模运算
   */
  var num = 7;
  print(num / 3); // 除法操作, 结果2.3333..
  print(num ~/ 3); // 整除操作, 结果2;
  print(num % 3); // 取模操作, 结果1;
  /**
   * ??=赋值操作：
   *    当变量为null时，使用后面的内容进行赋值。
   *    当变量有值时，使用自己原来的值。
   */
  String name1 = "heyou";
  print(name1);
  var name2 = 'kobe';
  //var name2 = null;
  name2 ??= 'james'; 
  print(name2); // 当name2初始化为kobe时，结果为kobe，当初始化为null时，赋值了james

  /**
   * 条件运算符：expr1 ?? expr2
   *    如果expr1是null，则返回expr2的结果;
   *    如果expr1不是null，直接使用expr1的结果。
   */
  //var temp = 'heyou';
  var temp = null;
  var name3 = temp ?? 'kobe';
  print(name3);
}


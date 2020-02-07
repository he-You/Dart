/**
 * 一、Dart语言的入口也是main函数，并且必须显示的进行定义；
 * 二、Dart的入口函数main是没有返回值的；
 * 三、传递给main的命令行参数，是通过List<String>完成的。
 * 从字面值就可以理解List是Dart中的集合类型。
 * 其中的每一个String都表示传递给main的一个参数；
 * 四、定义字符串的时候，可以使用单引号或双引号；
 * 五、每行语句必须使用分号结尾
 */
main(List<String> args) {
  print("hello dart");
  // 1.整数类型int
  int age = 18;
  int hexAge = 0x12;
  print(age);
  print(hexAge);

  // 2.浮点类型double
  double height = 1.88;
  print(height);

  //
  // 字符串和数字转化
  // 1.字符串转数字
  var one = int.parse('111');
  var two = double.parse('12.22');
  //runtimeType:获取对象的类型
  print('${one} ${one.runtimeType}'); // 111 int
  print('${two} ${two.runtimeType}'); // 12.22 double

  // 2.数字转字符串
  var num1 = 123;
  var num2 = 123.456;
  var num1Str = num1.toString();
  var num2Str = num2.toString();
  var num2StrD = num2.toStringAsFixed(2); // 保留两位小数
  print('${num1Str} ${num1Str.runtimeType}'); // 123 String
  print('${num2Str} ${num2Str.runtimeType}'); // 123.456 String
  print('${num2StrD} ${num2StrD.runtimeType}'); // 123.46 String

  // 布尔类型
  var isFlag = true;
  print('$isFlag ${isFlag.runtimeType}');

  /*注意: Dart中不能判断非0即真, 或者非空即真
   *Dart的类型安全性意味着您不能使用if(非booleanvalue)或assert(非booleanvalue)之类的代码。
   */

  //字符串和其他变量或表达式拼接: 使用${expression}, 如果表达式是一个标识符, 那么{}可以省略
  var name = 'heyou';
  var age1 = 18;
  var height2 = 1.88;
  print('my name is ${name}, age is $age1, height is $height2');
}


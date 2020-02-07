/**
 * 函数的基本定义
 * Dart是一种真正的面向对象语言，所以即使函数也是对象，所有也有类型, 类型就是Function。
 *  这也就意味着函数可以作为变量定义或者作为其他函数的参数或者返回值.
 *  函数的定义方式:
 *  返回值 函数的名称(参数列表) {
 *    函数体
 *    return 返回值
 * }
 */
main(List<String> args) {
  print(sum(1,2));
  print(sum(3,2));

  // 调用printInfo1函数
  printInfo1('heyou'); // name=heyou age=null height=null
  printInfo1('heyou', age: 24); // name=heyou age=18 height=null
  printInfo1('heyou', age: 24, height: 1.88); // name=heyou age=18 height=1.88
  printInfo1('heyou', height: 1.88); // name=heyou age=null height=1.88
}
int sum(num num1, num num2) {
  return num1 + num2;
}

//另外, 如果函数中只有一个表达式, 那么可以使用箭头语法(arrow syntax)
sum1(num num1,num num2)=>num1+num2;

/**
 * 参数问题：
 *    1.函数的参数可以分成两类: 必须参数和可选参数；前面使用的参数都是必须参数.
 *    可选参数可以分为 命名可选参数 和 位置可选参数
 *        a). 命名可选参数: {param1, param2, ...}
 *        b). 位置可选参数: [param1, param2, ...]
 */

// 命名可选参数
printInfo1(String name, {int age, double height}) {
  print('name=$name age=$age height=$height');
}
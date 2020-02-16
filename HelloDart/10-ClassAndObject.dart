/**
 * 类和对象
 *    1.成员member
 *    2.方法method
 * class 类名 {
 *     类型 成员名;
 *     返回值类型 方法名(参数列表) {
 *          方法体
 *        }
 *  }
 */
main(List<String> args) {
  Person()..name="heyou"..eat();

  var stu = Student();
  stu.name = 'heyou';
  stu.sno = 110;
  stu.study();

  Student.time = '早上8点';
  // stu.time = '早上9点'; 错误做法, 实例对象不能访问类成员
  Student.attendClass();
  // stu.attendClass(); 错误做法, 实现对象补鞥呢访问类方法
  
}
/**
 * 这里有一个注意点: 我们在方法中使用属性(成员/实例变量)时，并没有加this；
 * Dart的开发风格中，在方法中通常使用属性时，会省略this，但是有命名冲突时，this不能省略；
 */
class Person {
  String name;
  eat(){
    print("$name在吃");
  }
}

/**
 * 类中定义的成员和方法都属于对象级别的, 在开发中, 我们有时候也需要定义类级别的成员和方法
 * 在Dart中我们使用static关键字来定义:
 */
class Student {
  String name;
  int sno;

  static String time;

  study() {
    print('$name在学习');
  }

  static attendClass() {
    print('去上课');
  }
}

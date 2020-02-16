import 'dart:math';

import '10-ClassAndObject.dart';

/**
 * 构造方法：
 *    1.普通构造方法：我们知道, 当通过类创建一个对象时，会调用这个类的构造方法。当类中没有明确指定构造方法时，将默认拥有一个无参的构造方法。
 *          i:当有了自己的构造方法时，默认的构造方法将会失效，不能使用；
 *            当然，你可能希望明确的写一个默认的构造方法，但是会和我们自定义的构造方法冲突；这是因为Dart本身不支持函数的重载（名称相同, 参数不同的方式）。
 *    2.命名构造方法：通过这种方法可以实现创建相同名称的构造方法   
 *    3.重定向构造方法：某些情况下，一个构造方法去调用另一个构造方法，我们称之为重定向构造方法
 *    4.常量构造方法：在某些情况下，传入相同值时，我们希望返回同一个对象，这个时候，可以使用常量构造方法.
 *          i:默认情况下，创建对象时，即使传入相同的参数，创建出来的也不是同一个对象，但是, 如果将构造方法前加const进行修饰，那么可以保证同一个参数，创建出来的对象是相同的
 *          这样的方法称之为常量构造方法
 *          注：a)拥有常量构造方法的类中，所有的成员变量必须是final修饰的.
 *             b)为了可以通过常量构造方法，创建出相同的对象，不再使用 new关键字，而是使用const关键字;如果是将结果赋值给const修饰的标识符时，const可以省略.
 *    5.工厂构造方法：
 */
class Person {
  String name;
  int age;
  /**
   *   普通构造方法
   *   Person(String name, int age) {
   *      this.name = name;
   *      this.age = age;
   *    }
   */

  /**
   * 在实现构造方法时，通常做的事情就是通过**参数给属性**赋值,为了简化这一过程, Dart提供了一种更加简洁的语法糖形式.
   * 上面的构造方法可以优化成下面的写法：
   * Person(this.name, this.age);
   */
    // Person() {
    //   name = '';
    //   age = 0;
    // }
    // 命名构造方法
    Person.withArgments(String name, int age) {
      this.name = name;
      this.age = age;
    }
    // 新的构造方法
    Person.fromMap(Map<String, Object> map) {
      this.name = map['name'];
      this.age = map['age'];
    }
    //有参构造方法
    Person(this.name, this.age);
    //const Person(this.name, this.age);
    //重定向构造方法，注意：是在冒号后面使用this调用
    Person.fromName(String name) : this(name, 0);
    
  @override
  String toString() {
    return 'name=$name age=$age';
  }
}

class Point{
  final num x;
  final num y;
  final distance;
  //初始化列表
  Point(this.x,this.y):distance = sqrt(x*x+y*y);
  //上面这种初始化变量的方法, 我们称之为初始化列表(Initializer list)
}
main(List<String> args) {
  // 创建对象
  var p1 = new Person("heyou",23);
  print(p1);
  var p2 = new Person.withArgments('heyou', 24);
  print(p2);
  // 通过上面的构造方法创建对象
  var p3 = new Person.fromMap({'name': 'kobe', 'age': 30});
  print(p3);

  var p4 = new Person("heyou",24);
  var p5 = new Person("heyou",24);
  //identical(对象1, 对象2)函数来判断两个对象是否是同一个对象
  print(identical(p4, p5));
  //var p6 = const Person("heyou",24);
  //var p7 = const Person("heyou",24);
  //identical(对象1, 对象2)函数来判断两个对象是否是同一个对象
  print(identical(p4, p5));
}
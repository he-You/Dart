/**
 * 构造方法：
 *    1.普通构造方法：我们知道, 当通过类创建一个对象时，会调用这个类的构造方法。当类中没有明确指定构造方法时，将默认拥有一个无参的构造方法。
 *          i:当有了自己的构造方法时，默认的构造方法将会失效，不能使用；
 *            当然，你可能希望明确的写一个默认的构造方法，但是会和我们自定义的构造方法冲突；这是因为Dart本身不支持函数的重载（名称相同, 参数不同的方式）。
 *    2.命名构造方法：通过这种方法可以实现创建相同名称的构造方法   
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
  Person() {
      name = '';
      age = 0;
    }
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
  @override
  String toString() {
    return 'name=$name age=$age';
  }
}
main(List<String> args) {
  // 创建对象
  var p1 = new Person();
  print(p1);
  var p2 = new Person.withArgments('heyou', 24);
  print(p2);
  // 通过上面的构造方法创建对象
  var p3 = new Person.fromMap({'name': 'kobe', 'age': 30});
  print(p3);
}
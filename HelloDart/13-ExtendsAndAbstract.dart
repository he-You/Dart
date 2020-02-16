/**
 * 类的继承与抽象方法:
 * 子类中可以调用父类的构造方法，对某些属性进行初始化：
 *      子类的构造方法在执行前，将隐含调用父类的无参默认构造方法（没有参数且与类同名的构造方法）。
 *      如果父类没有无参默认构造方法，则子类的构造方法必须在初始化列表中通过super显式调用父类的某个构造方法。
 */
main(List<String> args) {
  var p = new Person();
  p.age = 24;
  p.run();
  print(p.age);
}

class Animal {
  int age;

  run() {
    print('在奔跑ing');
  }
}

class Person extends Animal {

}

/**
 * 抽象方法与子类的继承实现
 * 注意事项:
 *      注意一：抽象类不能实例化.
 *      注意二：抽象类中的抽象方法必须被子类实现, 抽象类中的已经被实现方法, 可以不被子类重写.
 */
abstract class Shape {
  getArea();
}

class Circle extends Shape {
  double r;

  Circle(this.r);

  @override
  getArea() {
    return r * r * 3.14;
  }
}

class Reactangle extends Shape {
  double w;
  double h;

  Reactangle(this.w, this.h);

  @override
  getArea() {
    return w * h;
  }
}

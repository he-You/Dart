/**
 * 级联语法：..
 * 某些时候，我们希望对一个对象进行连续的操作，这个时候可以使用级联语；（类似Java的链式调用）
 */

class Person {
  String name;
    void run() {
    print("${name} is running");
  }

  void eat() {
    print("${name} is eating");
  }

  void swim() {
    print("${name} is swimming");
  }
}

main(List<String> args) {
  final p1 = Person();
  p1.name = 'heyou';
  p1.run();
  p1.eat();
  p1.swim();

  final p2 = Person()
        ..name="heyou"
        ..run()
        ..eat()
        ..swim();
}
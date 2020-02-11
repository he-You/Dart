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
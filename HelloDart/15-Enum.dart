/**
 * 枚举类型：
 * 枚举类型中有两个比较常见的属性:
 *    index: 用于表示每个枚举常量的索引, 从0开始.
 *    values: 包含每个枚举值的List.
 */
main(List<String> args) {
  print(Colors.green);
  print(Colors.red.index);
  print(Colors.green.index);
  print(Colors.blue.index);
  print(Colors.values);
  
}

enum  Colors{
  red,
  green,
  yellow,
  blue
}
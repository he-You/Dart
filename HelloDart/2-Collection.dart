/**
 * 对于集合类型，Dart则内置了最常用的三种：List / Set / Map
 */
main(List<String> args) {
  // List定义
  // 1.使用类型推导定义
  var letters = ['a', 'b', 'c', 'd'];
  print('$letters ${letters.runtimeType}');

  // 2.明确指定类型
  List<int> numbers = [1, 2, 3, 4];
  print('$numbers ${numbers.runtimeType}');
  /**
   * 其中，set可以这样来定义：
   * 其实，也就是把[]换成{}就好了。
   * Set和List最大的两个不同就是：Set是无序的，并且元素是不重复的。
   */
  // Set的定义
  // 1.使用类型推导定义
  var lettersSet = {'a', 'b', 'c', 'd'};
  print('$lettersSet ${lettersSet.runtimeType}');

  // 2.明确指定类型
  Set<int> numbersSet = {1, 2, 3, 4};
  print('$numbersSet ${numbersSet.runtimeType}');

  // Map的定义
  // 1.使用类型推导定义
  var infoMap1 = {'name': 'heyou', 'age': 18};
  print('$infoMap1 ${infoMap1.runtimeType}');

  // 2.明确指定类型
  Map<String, Object> infoMap2 = {'height': 1.88, 'address': '苏州市'};
  print('$infoMap2 ${infoMap2.runtimeType}');

  // 获取集合的长度
  print(letters.length);
  print(lettersSet.length);
  print(infoMap1.length);

  // 添加/删除/包含元素
  numbers.add(5);
  numbersSet.add(5);
  print('$numbers $numbersSet');

  numbers.remove(1);
  numbersSet.remove(1);
  print('$numbers $numbersSet');

  print(numbers.contains(2));
  print(numbersSet.contains(2));

  // List根据index删除元素
  numbers.removeAt(3);
  print('$numbers');

  // Map的操作
  // 1.根据key获取value
  print(infoMap1['name']); // heyou

  // 2.获取所有的entries
  print('${infoMap1.entries} ${infoMap1.entries.runtimeType}'); // (MapEntry(name: heyou), MapEntry(age: 18)) MappedIterable<String, MapEntry<String, Object>>

  // 3.获取所有的keys
  print('${infoMap1.keys} ${infoMap1.keys.runtimeType}'); // (name, age) _CompactIterable<String>

  // 4.获取所有的values
  print('${infoMap1.values} ${infoMap1.values.runtimeType}'); // (heyou, 18) _CompactIterable<Object>

  // 5.判断是否包含某个key或者value
  print('${infoMap1.containsKey('age')} ${infoMap1.containsValue(18)}'); // true true

  // 6.根据key删除元素
  infoMap1.remove('age');
  print('${infoMap1}'); // {name: heyou}

}
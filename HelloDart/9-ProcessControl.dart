/**
 * 流程控制
 */
main(List<String> args) {
  /**
   * 不支持非空即真或者非0即真，必须有明确的bool类型
   */
  var name = null;
  if(name==null){
    print("Hi");
  }else{
    print("hello");
  }
  /**
   * 普通for循环
   */
  for (var i = 0; i < 5; i++) {
    print(i);
  }
  /**
   * foreach
   */
  var names = ['heyou', 'kobe', 'James'];
  for (var name in names) {
    print(name);
  }
  /**
   * while和do-while和其他语言一致;
   * break和continue用法也是一致
   */

  /**
   * switch-case
   */
  var direction = 'east';
  switch (direction) {
    case 'east':
      print('东面');
      break;
    case 'south':
      print('南面');
      break;
    case 'west':
      print('西面');
      break;
    case 'north':
      print('北面');
      break;
    default:
      print('其他方向');
  }
}
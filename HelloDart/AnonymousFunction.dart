/**
 * 匿名函数:大部分我们定义的函数都会有自己的名字， 比如前面定义的foo、test函数等等。
 * 但是某些情况下，给函数命名太麻烦了，我们可以使用没有名字的函数，
 * 这种函数可以被称之为匿名函数( anonymous function)，也可以叫lambda或者closure。
 */
main(List<String> args) {
  // 1.定义数组
  var movies = ['盗梦空间', '星际穿越', '少年派', '大话西游'];

  // 2.使用forEach遍历: 有名字的函数
  printElement(item) {
    print(item);
  }
  movies.forEach(printElement);

  // 3.使用forEach遍历: 匿名函数
  movies.forEach((item) {
    print(item);
  });
  movies.forEach((item) => print(item));
}
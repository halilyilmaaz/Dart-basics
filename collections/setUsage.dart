import 'dart:math';

/** 
 * Listlerden en önemli farkı elemanları sıralı olarak tutmaz,
 * dolayısıyla List lerdeki gibi indexler yoktur.
 * Bir diğer farkı ise elemanlar uniq dir
 * 
 * Index olmadan elemanları kontol etmek için contains methodu 
 * kullanılır.
 */

main(List<String> args) {
  //var names = Set();
  Set<String> names = Set();
  names.add("halil");
  names.add("yilmaz");
  names.add("halil");
  names.add("cemal");
  names.add("halil");

  for (String name in names) {
    print("name : $name");
  }

  // herhangi bir elemana erişmek için..
  if (names.contains("halil")) {
    bool result = names.remove("halil");
    print(result);
  }

  var liste = List();
  liste.add("halil");
  liste.add("emre");
  liste.add("akin");
  var rand = new Random();
  var element = liste[rand.nextInt(liste.length)];
  print("------------------------------------");
  print(element);
}

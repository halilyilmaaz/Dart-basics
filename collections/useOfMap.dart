/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir kolleksiyon öğesidir.
 * List ve Set' ten ayıran özellik elemanları key ve value olarak saklamasıdır.
 * Python daki sözlüklere benzetilebilir.
 * Sabir bir uzunluğu yoktur, dinamiktir.
 */

main(List<String> args) {
  //Map<String, String> kisiler = Map();
  Map<String, Object> kisiler =
      Map(); // object daha genel veri turleri kullanmayı sağlar
  kisiler["ad"] = "halil";
  kisiler["yas"] = 30;
  print(kisiler);

  for (Object key in kisiler.keys) {
    print("key : $key");
  }
  print("----------------------------------");
  for (Object values in kisiler.values) {
    print("key : $values");
  }
  print("----------------------------------");
  // lambda
  kisiler.forEach((key, value) {
    print("$key,$value");
  });

  print("----------------------------------");

  print(kisiler["yas"]);
  print(kisiler["ad"]);

  print("----------------------------------");

  Map<String, int> citys = {
    "Ankara": 06,
    "istanbul": 34,
  };
  print(citys);
  print("${citys["Ankara"]}");
}

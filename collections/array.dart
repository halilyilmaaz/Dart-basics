/*
  there are two lists 
   1- Regular list
   2-Irregular List

   => List<int> numbers = List(10); // regular list
    -> numbers[0]; --> 0.index
 */
main(List<String> args) {
  List<int> numbers = List(5);
  numbers[0] = 3;
  numbers[1] = 6;
  numbers[2] = 7;
  print("index 0 : " + numbers[0].toString());

  var names = List(3);
  names[0] = "halil";
  names[1] = "yilmaz";
  names[2] = "yildiz";

  print("names : ${names[0]}"); // just show [0] index
  //print("names : ${names}"); // show all list

  for (String read in names) {
    print(read);
  }

  for (int i = 0; i < numbers.length; i++) {
    print("$i index ${numbers[i]}");
  }
}

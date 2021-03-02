// Dynamic List

main(List<String> args) {
  List<int> numbers = List();

  // if u wanna add element. You have to use .add
  numbers.add(1);
  numbers.add(3);
  numbers.add(5);
  //numbers[2] = 4;

  //numbers.clear();
  //numbers.remove(1);    // this method remove by value
  //numbers.removeAt(0);  // this method remove by index
  //numbers.removeLast(); // this method remove last object etc etc
  print("number : $numbers");

  for (int s in numbers) {
    print("num : $s");
  }

  print("---------------------------------------");
  List<String> citys = ["ist", "ank", "izm"];
  citys.add("London");
  for (String city in citys) {
    print("city : $city");
  }
}

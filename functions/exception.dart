//used to not terminate the program
// EXCEPTION
main(List<String> args) {
  int res = 12 ~/ 5; // ~ we use this operator for int/int
  print("res : $res");

  // specific name of error exception
  try {
    int res1 = 12 ~/ 0; // if u wanna use that u get an error
    print("res : $res1");
  } on IntegerDivisionByZeroException {
    print("u can not use that");
  }

  // exception
  try {
    int res1 = 12 ~/ 0; // if u wanna use that u get an error
    print("res : $res1");
  } catch (e) {
    print("error : $e"); // this bloc gives u error name
  }

  // exception and stacktrace
  try {
    int res1 = 12 ~/ 2; // if u wanna use that u get an error
    print("res and stacktrace : $res1");
  } catch (e, s) {
    print("error : $e , $s"); // this bloc gives u error name
  }

  // finally bloc
  try {
    int res1 = 12 ~/ 0; // if u wanna use that u get an error
    print("res and stacktrace : $res1");
  } catch (e, s) {
    print("error : $e , $s"); // this bloc gives u error name
  } finally {
    print("finally block run");
  }
  print("-----------------------------------------");
// personally exception
  try {
    atm(-12);
  } catch (e) {
    print("not negative : " + e.showError());
  }
}

// personally exception build

atm(int usd) {
  if (usd > 0) {
    print("succes : $usd");
  } else {
    throw new atmexception();
  }
}

class atmexception implements Exception {
  String showError() => "not getive gives usd";
}

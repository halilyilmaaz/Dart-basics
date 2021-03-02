main(List<String> args) {
  sum();
  int res = subtraction(4, 2);
  print("subtraction result : " + res.toString());

  print("multiply : " + multip(3, 5).toString());

  print("max :" + max(4, 5).toString());

  print("min :" + min(4, 5).toString());
}

// normally usage
void sum() {
  int num1 = 10;
  int num2 = 12;
  print("sum : ${num1 + num2}");
}

int subtraction(int s1, int s2) {
  return (s1 - s2);
}

// Fat Arrow usage
int multip(int s1, int s2) => s1 * s2;

int max(int s1, int s2) => s1 > s2 ? s1 : s2;

int min(int s1, int s2) => s1 < s2 ? s1 : s2;

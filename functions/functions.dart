main(List<String> args) {
  areaCalculate();
  print(calculate2());
  int result = calculate3(2, 3, 4);
  print("result :" + result.toString());
}

// funcs

void areaCalculate() {
  int en = 8, boy = 12;
  int cev = (en + boy) * 12;
  print("cevre : $cev");
}

int calculate2() {
  int en = 8, boy = 12, alan = 0;
  alan = en * boy;

  return alan;
}

int calculate3(int en, int boy, int h) {
  return en * boy * h;
}

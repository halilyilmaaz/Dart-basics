main(List<String> args) {
  cityList("Istanbul", "Ankara", "Izmir");
  countyrList("Istanbul", "Ankara");
  continent("US", cont2: "Europe", cont3: "Asia");
  print("proc : " + proc(3, 4, 5).toString());
  print("proc : " + proc(3).toString());
  print("proc2 : " + proc2(3, b: 2, h: 3).toString());
}

void cityList(String city, String city2, String city3) {
  print("city 1 :$city");
  print("city 2 :$city2");
  print("city 3 :$city3");
}

void countyrList(String co1, String co2, [String co3]) {
  print("country 1 :$co1");
  print("country 2 :$co2");
  /*
  if (co3 != null) {
    print("country 3 :$co3");
  } else {
    print("null value");
  }*/

  co3 != null ? print("country 3 : $co3") : print("null value");
}

// assign default value
void continent(String cont1, {String cont2, String cont3}) {
  print("continent 1 : $cont1");
  print("continent 2 : $cont2");
  print("continent 3 : $cont3");
}

int proc(int e, [int b = 3, int h = 4]) => e * b * h;

int proc2(int e, {int b = 2, int h = 2}) => e * b * h;

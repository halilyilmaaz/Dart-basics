/**
 * Extends deyimi 
 */

main(List<String> args) {
  var k1 = Kopek();
  k1.cins = "labrador";
  k1.renk = "sarı";
  var h1 = Hayvan();

  var kedi1 = Kedi();
  kedi1.yemekYe();
}

class Hayvan extends Object {
  String renk;

  void yemekYe() {
    print("hayvan yemek yiyor");
  }
}

class Kedi extends Hayvan {
  String renk;
  int yas;

  void miyav() {
    print("miyavla");
  }

  void yemekYe() {
    print("kedi yemek yiyior");
  }
}

class Kopek extends Hayvan {
  String renk;
  String cins;

  void havla() {
    print("hav hav");
  }

  void yemekYe() {
    print("kopek yemek yiyor");
  }
}

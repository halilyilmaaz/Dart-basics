main(List<String> args) {
  var k1 = Kopek("golden", "siyah");
  var h1 = Hayvan("siyah");
}

class Hayvan {
  String renk;
  Hayvan(String renkk) {
    this.renk = renkk;
    print("hayvan sınıfından nesne üretildi $renk");
  }
}

class Kopek extends Hayvan {
  String cins;
  Kopek(this.cins, String renk) : super("beyaz renk") {
    print("Kopek sınıfından nesne üretildi $cins renk: $renk");
  }
}

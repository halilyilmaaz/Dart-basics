main(List<String> args) {
  Er halil = new Er();
  Er veli = Er();

  Asker asker = Asker();
  Yuzbasi ali = Yuzbasi();

  hazirOl(halil); // upcasting (yukarı cevrim)
  hazirOl(asker); //  upcasting (yukarı cevrim)
  hazirOl(ali);

  // Late Binding (GEÇ BAĞLAMA)
  Asker yeni = Er();
  hazirOl(yeni);
}

void hazirOl(Asker asker) {
  asker.selamVer();
  //asker = new Asker();
  //asker = new Er();
}

class Asker {
  void selamVer() {
    print("Asker selam ver");
  }
}

class Er extends Asker {
  @override
  void selamVer() {
    print("Er selam ver");
  }
}

class Yuzbasi extends Asker {
  @override
  void selamVer() {
    // TODO: implement selamVer
    print("yuzbasi selam ver");
  }
}

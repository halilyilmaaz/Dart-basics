/**
 * Abstract (Soyut Sınıf) : Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilmez , abstract sınıflarda normal ve abstract methodlar olur.
 * Abstract methodlar alt sınıflarca override edilmek zorundadır.
 * 
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstrat tanımlanmalıdır.
 * 
 */

main(List<String> args) {
  var k1 = Kare();
  k1.en = 4;
  k1.boy = 4;
  print(k1.alanHesap());
}

abstract class Sekil {
  int en;
  int boy;

  void alanHesap();

  void cevreHesap();
}

class Dikdortgen extends Sekil {
  @override
  int alanHesap() {
    return en * boy;
  }

  @override
  int cevreHesap() {
    return 2 * (en + boy);
  }
}

class Kare extends Sekil {
  @override
  int alanHesap() {
    return en * boy;
  }

  @override
  int cevreHesap() {
    return 2 * (en + boy);
  }
}

import 'classAndObject.dart';

/**
 * KURUCU METHODLAR - CONSTRUCTOR 
 * 
 * Farklı türde constructor oluşturabiliriz.
 * 1-Default : Sınıfı adının yanına () dediğimizde çalışan ve sınıf adıyla aynı olan methoddur.
 *  Ogrenci halil = new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *  Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlanan boş bir methoddur.
 *  Kurucu methodların geri dönüş tipi olmaz
 * 
 * 
 * 2-Parametreli kurucu method : Aslında default constructorların parametre almış halidir.
 *  Ogrenci halil = new Ogrenci("isimdeğeri"); şeklinde tanımlanabilir.
 * 
 * Dart dilinde method overloading olmadığı için sadece ya default yapıcı yada parametreli yapıcı olmalıdır.
 * 
 * 3-Named(isimlendirilmiş) : Sınıf içerinde 
 * SinifAdi.methodAdi(){
 *  bu kısma kodlar gelir...
 * }
 * İstenilen sayıda isimlendirilmiş kurucu oluşturulabilir.
 * 
 */

main(List<String> args) {
  var halil = Ogrenci(20, "halil", true);

  Ogrenci beynun = new Ogrenci(12, "beynun", false);

  halil.adi = "halil";
  halil.cinsiyet = true;
  halil.ogrNo = 12;

  var nesne = Ogrenci.cinsiyetBilgisiOlmayanKurucu(12, "halilbeynun");
  print("${nesne.ogrNo}" + " " + "${nesne.adi}");
}

class Ogrenci {
  // instance veya Field variable
  int ogrNo;
  String adi;
  bool cinsiyet;

  Ogrenci(int no, String ad, bool cinsyet) {
    this.ogrNo = no;
    this.adi = ad;
    this.cinsiyet = cinsyet;
    print("$no $ad $cinsiyet");
  }
  /*
  // Daha hızlı bir kullanım örneği
  Ogrenci(this.ogrNo, this.adi, this.cinsiyet) {
    print("daha hızlı constructor");
  }
  */
  // Named constructor
  Ogrenci.cinsiyetBilgisiOlmayanKurucu(int no, String ad) {
    this.ogrNo = no;
    this.adi = ad;
  }

  void dersCalis() {}
  void uyu() {}
}

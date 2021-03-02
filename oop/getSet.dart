import 'private.dart';

main(List<String> args) {
  var halil = Ogrenci(20, "halil", true);

  Ogrenci beynun = new Ogrenci(12, "beynun", false);

  //print(halil.adi); // dediğimizde GET methodu çalışıyor..
  halil.adi = "değiştirilmiş isim"; // dediğimizde SET methodu çalışıyor..
  halil.ogrenciNot = 85;

  halil.bilgiPrint();
  print(halil.ogrenciNotOku);
}

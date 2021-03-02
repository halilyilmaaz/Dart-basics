/**
 * Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara ulaşmak istediğimizde kullanılır.
 * 
 * Static kullanarak nesne değiş sınıf değişkenleri ve methodları oluşturabiliriz.
 * Bir sınıftaki tanımlanan method ve değişkenlere ulaşmak için mutlaka nesne üretmek gerekirdi.
 * Ama biz bunları static olarak tanımlarsak artık nesne üretmeden bu değişkenlere erişebilir ve kullanabiliriz. 
 * Artık onlar nesnelerin değil, sınıfın method ve değişkenlerinindir.
 */

main(List<String> args) {
  var halil = Ogrenci();
  halil.ad = "halil";
  //halil.ogrSayisi++; sınıf uzerinden ulaşmamız gerekmekte
  //Ogrenci.ogrSayisi++;
  print(
      "${halil.ad} ogrencisi olusturuldu toplam ogr sayısı : ${Ogrenci.ogrSayisi} okul kodu : ${Ogrenci.okulKodu}");

  var ali = Ogrenci();
  ali.ad = "ali";
  //Ogrenci.ogrSayisi++; // staticden sonra const yaptıgımız için bu da hata veriyor.
  Ogrenci.okulKodu++;
  print(
      "${ali.ad} ogrencisi olusturuldu toplam ogr sayısı : ${Ogrenci.ogrSayisi} okul kodu : ${Ogrenci.okulKodu}");
  Ogrenci.OgrSayisiYaz();
}

class Ogrenci {
  String ad;
  static int okulKodu = 1234;

  // const tanımlayarak sabitlemiş oluyoruz. artık bu değer üzerinde değişiklik vs yapılamaz.
  static const int ogrSayisi = 0;

  static void OgrSayisiYaz() {
    print("toplam ogr sayısı : $ogrSayisi ");
  }
}

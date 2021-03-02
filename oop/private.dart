class Ogrenci {
  // instance veya Field variable
  int _ogrNo;
  String adi;
  bool cinsiyet;

  Ogrenci(int _no, String ad, bool cinsyet) {
    this._ogrNo = _no;
    this.adi = ad;
    this.cinsiyet = cinsyet;
    print("$_no $ad $cinsiyet");
  }
  // SET METHODU
  void set ogrenciNot(int no) {
    if (no <= 0) {
      this._ogrNo = 1;
    } else {
      this._ogrNo = no;
    }
  }

  // GET METHODU
  int get ogrenciNotOku {
    return _ogrNo;
  }

  void bilgiPrint() {
    print("$adi $cinsiyet $_ogrNo ");
  }
}

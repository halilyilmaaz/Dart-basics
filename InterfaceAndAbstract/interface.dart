/**
 * Dart dilinde interface kavramı yoktur ama sınıfları implents anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
 * Interfaceler sayesinde ortaak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
 * 
 * Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
 * Interfaceler sayesinde dart dilinde olmayan çoklu kalıtım sağlanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirilebilir.
 */

main(List<String> args) {}

class Kumanda {
  void sesAc() {
    print("kumanda sınıfı ses ac");
  }

  void sesKapat() {
    print("kumanda sınıı ses kapat");
  }
}

class Bir {
  void method() {
    print("herhangi bir method");
  }
}

class Televizyon implements Kumanda, Bir {
  @override
  void sesAc() {
    print("Televizyon sınıfı ses ac");
  }

  @override
  void method() {
    print("Televizyon sınıfı bir method");
  }

  @override
  void sesKapat() {
    print("Televizyon sınıı ses kapat");
  }
}

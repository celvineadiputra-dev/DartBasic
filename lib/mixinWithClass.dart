mixin Terbang {
  void terbang() {
    print("Saya terbang tinggi");
  }
}

mixin Berenang {
  void berenang() {
    print("Saya berenang di air");
  }
}

mixin Berjalan {
  void jalan() {
    print("Tap tap... saya berjalan");
  }
}

class BurungPipit with Terbang, Berjalan {
  void suara() {
    print("Suara burung");
  }
}

class Hiu with Berenang {
  void suara() {
    print("Suara hiu");
  }
}

class Bebek with Terbang, Berenang, Berjalan {
  void suara() {
    print("Suara bebek");
  }
}

void main() {
  var burungPipit = BurungPipit();
  burungPipit.terbang();
  burungPipit.jalan();

  print("================================");

  var hiu = Hiu();
  hiu.berenang();

  print("================================");

  var bebek = Bebek();
  bebek.terbang();
  bebek.jalan();
  bebek.berenang();
}

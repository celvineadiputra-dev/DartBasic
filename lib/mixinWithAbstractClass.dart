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

abstract class Hewan {
  void cetakNama(); // skip this line
}

class Ayam extends Hewan with Terbang, Berjalan {
  final String _nama;
  
  Ayam(this._nama);

  void suara() {
    print("Suara ayam");
  }

  @override
  void cetakNama() {
    print("Nama ayam $_nama");
  }
}

class Hiu extends Hewan with Berenang {
  final String _nama;
  
  Hiu(this._nama);

  void suara() {
    print("du dudu");
  }

  @override
  void cetakNama() {
    print("Nama hiu $_nama");
  }
}

class Bebek extends Hewan with Terbang, Berenang, Berjalan {
  final String _nama;
  
  Bebek(this._nama);

  void suara() {
    print("Suara bebek");
  }

  @override
  void cetakNama() {
    print("Nama bebek $_nama");
  }
}

void main() {
  var ayam = Ayam("Rambo");
  ayam.cetakNama();
  ayam.terbang();
  ayam.jalan();

  print("================================");

  var hiu = Hiu("Baby Shark");
  hiu.cetakNama();
  hiu.berenang();

  print("================================");

  var bebek = Bebek("Donal Duck");
  bebek.cetakNama();
  bebek.terbang();
  bebek.jalan();
  bebek.berenang();
}

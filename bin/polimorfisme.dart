// Parent Class (Superclass)
class Kendaraan {
  String merek;
  int tahun;

  // Contructor
  Kendaraan(this.merek, this.tahun);

  // Method
  void klakson() {
    print("Tinn tinn");
  }

  void info() {
    print("Ini adalah kendaraan merek $merek, tahun $tahun");
  }
}

class Mobil extends Kendaraan {
  int jumlahPintu;

  // Contructor untuk Mobil
  Mobil(String merek, int tahun, this.jumlahPintu) : super(merek, tahun);

  // Method untuk mobil
  void bukaPintu() {
    print("Membuka $jumlahPintu pintu mobil");
  }

  @override // ini adalah konsep dari plimorfisme
  void klakson() {
    print("Beep Beep");
  }
}

class Motor extends Kendaraan {
  String warna;

  Motor(String merek, int tahun, this.warna) : super(merek, tahun);

  @override
  void klakson() {
    print("tot tot wuk wuk");
  }
}

void main() {
  var mobilSaya = Mobil("Toyota", 2023, 4);
  mobilSaya.info();
  mobilSaya.klakson();
  mobilSaya.bukaPintu();

  print("==================================================");

  var motorSaya = Motor("Honda", 2025, "Putih");
  motorSaya.info();
  motorSaya.klakson();

  print("==================================================");
  
  var kendaraan = Kendaraan("Generic", 0);
  kendaraan.info();
  kendaraan.klakson();
}
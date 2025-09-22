abstract class Bentuk {
  double hitungLuas();
  double hitungKeliling();

  void info() {
    print("Ini adalah sebuah bentuk geometri.");
  }
}

class Persegi extends Bentuk {
  double sisi;

  Persegi(this.sisi);

  @override
  double hitungLuas() {
    return sisi * sisi;
  }

  @override
  double hitungKeliling() {
    return 4 * sisi;
  }
}

class Lingkaran extends Bentuk {
  double radius;

  Lingkaran(this.radius);

  @override
  double hitungLuas() {
     return 3.14 * radius * radius;
  }

  @override
  double hitungKeliling() {
    return 2 * 3.14 * radius;
  }
}

void main() {
  var persegi = Persegi(13);
  print("Keliling dari persegi : ${persegi.hitungKeliling()}");
  print("Luas dari persegi : ${persegi.hitungLuas()}");

  print("=================================================================");

  var lingkaran = Lingkaran(7);
  print("Keliling dari lingkaran : ${lingkaran.hitungKeliling()}");
  print("Luas dari lingkaran : ${lingkaran.hitungLuas()}");
}
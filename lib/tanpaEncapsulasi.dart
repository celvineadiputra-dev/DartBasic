class RekeningBank {
  String pemilikRekening;
  double saldo;

  RekeningBank(this.pemilikRekening, this.saldo);

  void info() {
    print("Pemilik Rekening : $pemilikRekening, Saldo : $saldo");
  }
}

void main() {
  var rekeningBudi = RekeningBank("Budi", 100000);
  rekeningBudi.info();

  // MASALAH BESAR: Kode dari luar bisa mengubah saldo seenaknya!
  rekeningBudi.saldo = 500000;

  rekeningBudi.info();
}
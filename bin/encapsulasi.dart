class RekeningBank {
  String _pemilikRekening;
  double _saldo;

  RekeningBank(this._pemilikRekening, this._saldo);

  void info() {
    print("Pemilik Rekening : $_pemilikRekening, Saldo : $_saldo");
  }

  void deposit(double jumlah) {
    if (jumlah > 0) {
      _saldo += jumlah;
      print("Deposit berhasil : Rp.$_saldo");
    } else {
      print("Deposit gagal");
    }
  }

  // Metode publik untuk mengurangi saldo (TARIK TUNAI)
  void tarik(double jumlah) {
    if (jumlah > _saldo) {
      print('Gagal! Saldo tidak mencukupi.');
    } else if (jumlah <= 0) {
      print('Jumlah penarikan tidak valid.');
    } else {
      _saldo = _saldo - jumlah;
      print('Penarikan berhasil: Rp $jumlah');
    }
  }
}

void main() {
  var rekeningBudi = RekeningBank("Budi", 100000);
  rekeningBudi.info();

  // Mencoba mengakses _saldo secara langsung? GAGAL!
  // rekeningAni._saldo = 5000000; // Ini akan menghasilkan error.

  rekeningBudi.deposit(1000);
  rekeningBudi.info();

  rekeningBudi.tarik(50000);
  rekeningBudi.info();
}

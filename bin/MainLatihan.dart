import 'package:dart_application_1/Latihan/KopiTidakTersediaException.dart';
import 'package:dart_application_1/Latihan/SaldoTidakCukupException.dart';

Future<String> coffeMachine(String coffe, int eWallet) async {
  final hargaKopi = {'espresso': 25000, 'latte': 30000, 'cappuccino': 32000};

  final harga = hargaKopi[coffe];
  if (harga == null) {
    throw KopiTidakTersediaException("Kopi tidak tersedia");
  }

  if (eWallet < harga) {
    throw SaldoTidakCukupException("Saldo anda tidak cukup");
  }

  await Future.delayed(Duration(seconds: 3));
  return "1 cangkir $coffe panas berhasil dibuat";
}

Future<void> orderCoffe(String coffe, int eWallet) async {
  print("====================================");
  print("Pesanan : $coffe");
  print("====================================");

  try {
    String result = await coffeMachine(coffe, eWallet);

    print("Sukses : $result");
  } on KopiTidakTersediaException catch (e) {
    print("Gagal Kopi : $e");
  } on SaldoTidakCukupException catch (e) {
    print("Gagal Saldo : $e");
  } catch (e) {
    print("Error : tidak terduga : $e");
  } finally {
    print("Selesai : Apakah ada pesanan lain");
  }
}

void main() async {
  int eWallet = 30000;

  await orderCoffe("espresso", eWallet);
  await orderCoffe("latte", eWallet);
  await orderCoffe("kopi kapal api", eWallet);
  await orderCoffe("cappuccino", eWallet);
}
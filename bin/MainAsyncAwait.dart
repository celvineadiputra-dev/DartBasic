import 'dart:async';
import 'dart:io';

import '../lib/AsyncAwait.dart';

void uiInteraction() {
  Timer.periodic(Duration(milliseconds: 500), (timer) {
    print("👉 UI Berjalan");
  });
}

void main() async {
  print("Program dimulai......");

  uiInteraction();

  // // Contoh sync
  print("Memanggil syncFetchUserName");
  String userNameSync = syncFetchUserName();
  print("Data berhasil didapat: $userNameSync");
  // // end

  // Contoh async
  print("Memanggil asyncFetchUserName");
  String userNameAsync = await asyncFetchUserName();
  print("Data berhasil didapat: $userNameAsync");
  // end

  print("Selesai");

  await Future.delayed(Duration(seconds: 1));
  exit(0);
}

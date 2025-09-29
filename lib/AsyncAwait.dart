import 'dart:io';

// Fungsi ini sekarang menjadi asinkronus dan akan
// mengembalikan sebuah Future<String>.
Future<String> fetchUserName() async {
  return "User 1";
}

// fungsi sync
String syncFetchUserName() {
  print("Menunggu 2 detik");
  for (var i = 0; i < 2; i++) {
    print(i + 1);
    sleep(Duration(seconds: 1));
  }
  return "User 1 : sync";
}

// Fungsi ini mensimulasikan pengambilan data dari network
Future<String> asyncFetchUserName() async {
  print("Menunggu 2 detik");
  return Future.delayed(Duration(seconds: 2), () {
    return "User 2 : async";
  });
}
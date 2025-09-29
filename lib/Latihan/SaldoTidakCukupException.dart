class SaldoTidakCukupException implements Exception {
  final String message;

  SaldoTidakCukupException(this.message);

  @override
  String toString() {
    return "SaldoTidakCukupException : $message";
  }
}

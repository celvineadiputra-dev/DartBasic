class KopiTidakTersediaException implements Exception {
  final String message;

  KopiTidakTersediaException(this.message);

  @override
  String toString() {
    return "KopiTidakTersediaException : $message";
  }
}

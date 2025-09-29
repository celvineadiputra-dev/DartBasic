// 1. Buat class yang mengimplementasikan interface Exception.
class ArrayAccessException implements Exception {
  
  // 2. Buat properti untuk menyimpan pesan error yang lebih deskriptif.
  final String message;

  // 3. Buat constructor untuk class ini.
  ArrayAccessException(this.message);

  // 4. (Opsional tapi sangat dianjurkan) Override method toString()
  //    agar saat di-print, outputnya lebih informatif.
  @override
  String toString() {
    return "ArrayAccessException: $message";
  }
}
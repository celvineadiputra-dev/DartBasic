int accessArray(int index) {
  var list = [1, 2, 3, 4];

  return list[index];
}

int? accessArraySafe(int index) {
  try {
    var list = [1, 2, 3, 4];

    return list[index];
  } catch (e) {
    print("Gagal : Block catch error : $e");
  } finally {
    print("access array selesai");
  }
}

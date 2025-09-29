import 'package:dart_application_1/CustomException.dart';

int? accessArraySafeWithCustomException(int index) {
  try {
    var list = [1, 2, 3, 4];

    if (index > list.length) {
      throw ArrayAccessException("Index lebih besar dari list");
    } else {
      return list[index];
    }
  } on ArrayAccessException catch (e) {
    print("-----------CUSTOM EXCEPTION----------");
    print(e);
    print("-----------CUSTOM EXCEPTION----------");
  } catch (e) {
    print("Gagal : Block catch error : $e");
  } finally {
    print("access array selesai");
  }
}

import 'package:dart_application_1/TryCatchFinally.dart';

void main() {
  print("Program mulai....");

  int result1 = accessArray(1);
  print(result1);

  int result2 = accessArray(5);
  print(result2);

  int? result3 = accessArraySafe(1);
  print(result3);

  int? result4 = accessArraySafe(5);
  print(result4);

  print("Program selesai....");
}
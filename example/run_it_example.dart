import 'package:run_it/run_it.dart';

void main() {
  // [run] will have `null` or `void` as derfault return tupe.
  run(() => print('Hello World'));

  // [run] will have [int] as return type.
  int time = run(() => 10);

  // [runOn] will have [int] as return type and [it] will be [int]
  int houres = time.runOn((it) => it ~/ 3600);

  // [run] will have [double] as return type and [it] will be [int]
  double seconds = time.run((it) => it / 1000);

  // [let] will have `void` as derfault return tupe.
  seconds.let((it) => print("$it seconds AND $houres houres In $time"));

  print("-" * 36);
  /* ‼️‼️ Attention this execution can bug, some time. */
  dynamic map = {};
  map.run((it) => print(it)); // NoSuchMethodError: Class '_Map<dynamic, dynamic>' has no instance method 'run'.
  // Use on know types (advice).
}

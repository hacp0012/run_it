import 'package:run_it/run_it.dart';

// This is a simple example to show how to use the run_it package.
// It demonstrates the use of run, runOn, let, isNull, isNotNull, and ifNotNull methods.
// The example includes basic operations with integers and demonstrates how to handle null checks.
// Note: The last part of the example with dynamic map is intentionally left to show a potential issue with dynamic types.
// It is recommended to use known types to avoid runtime errors.
// This example is for demonstration purposes only and may not be suitable for production use.
// Make sure to run this example in a Dart environment where the run_it package is available.
// For more information, refer to the run_it package documentation.

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

  seconds.ifNotNull((it) => print("Seconds is not null: $it"));

  // [isNull] will return [bool] as default type.
  print("Seconds is null: ${seconds.isNull}");

  // [isNotNull] will return [bool] as default type.
  print("Seconds is not null: ${seconds.isNotNull}");
  print("Time is null: ${time.isNull}");

  print("-" * 36);
  /* ‼️‼️ Attention this execution can bug, some time. */
  dynamic map = {};
  map.run((it) => print(it)); // NoSuchMethodError: Class '_Map<dynamic, dynamic>' has no instance method 'run'.
  // Use on know types (advice).
}

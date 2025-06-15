A list of very useful extensions that allow you to execute code or a variable before assignment,
or to check for null.

## Features

[Inspired by Kotlin Scope functions](https://kotlinlang.org/docs/scope-functions.html) — visit for more information 🚩

This package allows you to execute code on a variable or data type.
Useful when you want to perform an operation on a variable's value before assigning it.

Note: These extensions work on all types.

## Getting started

Start by importing this in your file:

```dart
import 'package:run_it/run_it.dart';
```

And that's it! You have a whole range of extensions available in your code.

![exempl image](assets/exemple_1.png)

Extended to Dart core types.

```dart
TYPES RUNNERS

 T = Value Type
 I = Return Type
 x = void

 I             T(it)
bool isTrue = yesIsTrue.run((it) {---})

return   methods    parameter
   I        run        x
   I      T.run        T
   T      T.runOn      T
   x      T.let        T
   x        --         x
   T        --         x
```

[Visit, for more details](https://kotlinlang.org/docs/scope-functions.html#function-selection)

## Usage

```dart
// [run] will have `null` or `void` as default return type.
run(() => print('Hello World'));

// [run] will have [int] as return type.
int time = run(() => 10);

// [runOn] will have [int] as return type and [it] will be [int]
int hours = time.runOn((it) => it ~/ 3600);

// [run] will have [double] as return type and [it] will be [int]
double seconds = time.run((it) => it / 1000);

// [let] will have `void` as default return type.
seconds.let((it) => print("$it seconds AND $hours hours In $time"));
```

[Visit for more exemples](https://kotlinlang.org/docs/scope-functions.html)

## Additional information

Note: These extensions work on all types but may rarely have issues with variables of type [dynamic], especially those containing a [Map].

```dart
dynamic map = {};
map.run((it) => print(it)); // Error: Map has no run method.
// Use on known types (advice).
```

Inspired by Kotlin.
[Scope functions](https://kotlinlang.org/docs/scope-functions.html)

[Function selection 🚩](https://kotlinlang.org/docs/scope-functions.html#function-selection)

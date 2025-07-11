/// Dart extensions to handle running and null check.
extension ExtOnType<T> on T {
  /// Run a function on a value of any type.
  ///
  /// ```dart
  /// bool value = false;
  /// bool receiver = true;
  /// receiver = value.runOn((it) => it);
  ///
  /// Good to use on data that have same Type.
  /// ```
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  T runOn(T Function(T it) fn) => fn.call(this);

  /// Run a function on a value of any type without any required return.
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  void let(void Function(T it) fn) => fn.call(this);

  /// Return R and receive T.
  /// Ex:
  /// ```dart
  /// bool isTrue = true;
  /// String value = isTrue.run((it) => it ? 'true' : 'false');
  ///
  /// // R : String : value : will return String
  /// // T : bool : isTrue : will receive bool (it)
  /// ````
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  R run<R>(R Function(T it) fn) => fn.call(this);

  /// Check whether the value is null or not.
  ///
  /// > No favorable to use on dynamic type.
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  bool get isNull => this == null;
}

extension ExtOnTypeNullCheckers<T> on T {
  /// Check if provided value is not null.
  ///
  /// > No favorable to use on dynamic type.
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  bool get isNotNull => this != null;

  /// Run callback if value is not null and return [R] or [R?]
  ///
  /// > No favorable to use on dynamic type.
  @pragma('vm:prefer-inline')
  @pragma('dart2js:tryInline')
  R? ifNotNull<R>(R Function(T it) fn) => isNotNull ? fn.call(this) : null;
}

/// Run a code at any where and return the expected Type.
///
/// ```dart
/// bool isTrue = run(() => true);
/// run(() => print('true'));
/// ```
///
/// return type are otpional.
@pragma('vm:prefer-inline')
@pragma('dart2js:tryInline')
T run<T>(T Function() fn) => fn.call();

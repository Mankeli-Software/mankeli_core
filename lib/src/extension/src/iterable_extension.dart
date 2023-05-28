import 'dart:math';

/// {@template iterable_extension}
/// Extensions on [Iterable] to perform various operations
/// {@endtemplate}
extension IterableExtension<T> on Iterable<T> {
  /// {@macro iterable_extension}
  ///
  /// [singleWhereOrNull] returns the single element that satisfies [test].
  /// If no elements were found, it returns `null`.
  /// If more than one element is found, it throws a [StateError].
  T? singleWhereOrNull(bool Function(T) test) {
    final choices = where(test);
    if (choices.isEmpty) return null;

    return choices.single;
  }

  /// {@macro iterable_extension}
  ///
  /// [get random] returns a random element from the iterable.
  /// If the iterable is empty, it returns `null`.
  T? get random => isEmpty ? null : elementAt(Random().nextInt(length));
}

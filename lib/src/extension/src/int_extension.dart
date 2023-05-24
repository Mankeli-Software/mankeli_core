/// {@template int_extension}
/// Extensions on [int] to make it easier to work with.
/// {@endtemplate}
extension IntExtension on int {
  /// Returns a [Duration] with the current [int] as the number of microseconds
  Duration get microseconds => Duration(microseconds: this);

  /// Returns a [Duration] with the current [int] as the number of milliseconds
  Duration get milliseconds => Duration(milliseconds: this);

  /// Returns a [Duration] with the current [int] as the number of seconds
  Duration get seconds => Duration(seconds: this);

  /// Returns a [Duration] with the current [int] as the number of minutes
  Duration get minutes => Duration(minutes: this);

  /// Returns a [Duration] with the current [int] as the number of hours
  Duration get hours => Duration(hours: this);

  /// Returns a [Duration] with the current [int] as the number of days
  Duration get days => Duration(days: this);
}

// ignore_for_file: prefer_constructors_over_static_methods
// ignore_for_file: prefer-correct-identifier-length

import 'dart:async';

import 'package:logger/logger.dart';

/// {@macro logger}
typedef LoggerCallback = FutureOr<void> Function(
  String message, [
  dynamic error,
  StackTrace? stackTrace,
]);

/// {@template logger}
/// A logger to be used across the application
/// {@endtemplate}
class AppLogger {
  AppLogger._();

  /// The default logger which [AppLogger] uses internally if a callback is
  /// not overridden.
  static final defaultLogger = Logger(
    printer: PrettyPrinter(),
  );

  static void _emptyCallback(
    _, [
    __,
    ___,
  ]) {
    return;
  }

  static AppLogger? _logger;

  /// {@macro logger}
  static AppLogger get instance => _logger ??= AppLogger._();

  /// {@template verbose}
  /// {@macro logger}
  ///
  /// Use [AppLogger.instance.verbose] or [AppLogger.v] to log and
  /// override verbose logs
  /// {@endtemplate}
  LoggerCallback verbose = defaultLogger.v;

  /// {@template debug}
  /// {@macro logger}
  ///
  /// Use [AppLogger.instance.debug] or [AppLogger.d] to log and
  /// override debug logs
  /// {@endtemplate}
  LoggerCallback debug = defaultLogger.d;

  /// {@template info}
  /// {@macro logger}
  ///
  /// Use [AppLogger.instance.info] or [AppLogger.i] to log and
  /// override info logs
  /// {@endtemplate}
  LoggerCallback info = defaultLogger.i;

  /// {@template warning}
  /// {@macro logger}
  ///
  /// Use [AppLogger.instance.warning] or [AppLogger.w] to log and
  /// override warning logs
  /// {@endtemplate}
  LoggerCallback warning = defaultLogger.w;

  /// {@template error}
  /// {@macro logger}
  ///
  /// Use [AppLogger.instance.error] or [AppLogger.e] to log and
  /// override error logs
  /// {@endtemplate}
  LoggerCallback error = defaultLogger.e;

  /// {@template wtf}
  /// {@macro logger}
  ///
  /// Use [AppLogger.instance.whatTheFuck] or [AppLogger.wtf] to log and
  /// override wtf logs
  /// {@endtemplate}
  LoggerCallback whatTheFuck = defaultLogger.wtf;

  /// {@template analytic}
  /// {@macro logger}
  ///
  /// Use [AppLogger.instance.analytic] or [AppLogger.a] to log and override
  /// events to an analytics collecting service.
  /// {@endtemplate}
  LoggerCallback analytic = _emptyCallback;

  /// {@template crashlytic}
  /// {@macro logger}
  ///
  /// Use [AppLogger.instance.crashlytic] or [AppLogger.c] to log and override
  /// events to a crashlytic collecting service
  /// {@endtemplate}
  LoggerCallback crashlytic = _emptyCallback;

  /// {@macro verbose}
  static LoggerCallback get v => instance.verbose;

  /// {@macro debug}
  static LoggerCallback get d => instance.debug;

  /// {@macro info}
  static LoggerCallback get i => instance.info;

  /// {@macro warning}
  static LoggerCallback get w => instance.warning;

  /// {@macro error}
  static LoggerCallback get e => instance.error;

  /// {@macro wtf}
  static LoggerCallback get wtf => instance.whatTheFuck;

  /// {@macro analytic}
  static LoggerCallback get a => instance.analytic;

  /// {@macro crashlytic}
  static LoggerCallback get c => instance.crashlytic;
}

// ignore_for_file: avoid-unused-parameters

import 'dart:async';

import 'package:meta/meta.dart';

/// {@template repository}
/// [Repository] is a class for making it easier to create new repositories
/// following the good practices of BLoC pattern. This class exposes
/// `initialize` and `dispose` methods.
/// {@endtemplate}
abstract class Repository {
  /// {@macro repository}
  Repository();

  /// Whether `initialize` is called or not
  bool initialized = false;

  /// Whether `dispose` is called or not
  bool disposed = false;

  /// Called to initialize the repository
  @mustCallSuper
  Future<void> initialize() async {
    initialized = true;
  }

  /// Called to dispose the repository and free up the resources
  @mustCallSuper
  Future<void> dispose() async {
    disposed = true;
  }
}

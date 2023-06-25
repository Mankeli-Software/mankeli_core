/// {@template string_extension}
/// Extensions on [String] to convert to various cases and other useful
/// utilities
/// {@endtemplate}
extension StringExtension on String {
  /// {@macro string_extension}
  ///
  /// [parts] returns the String split by all of the possible delimeters.
  /// Supported delimeters are:
  /// - ' '
  /// - '-'
  /// - '_'
  /// - '.'
  /// - '/'
  List<String> get parts =>
      split(RegExp(r'\s+|-|_|\.|/')).map((s) => s.lowerCase).toList();

  /// {@macro string_extension}
  ///
  /// [_singleWordTitleCase] - `hello` -> `Hello`
  /// This getter is used by other case converters internally. Since it does
  /// not handle multiple words, it is not exposed as a public getter.
  String get _singleWordTitleCase {
    if (isEmpty) return this;

    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// {@macro string_extension}
  ///
  /// [reversed] - `hello` -> `olleh`
  String get reversed => split('').reversed.join();

  /// {@macro string_extension}
  ///
  /// [camelCase] - `hello world` -> `helloWorld`
  String get camelCase {
    final words = parts;

    if (words.isEmpty) return this;

    return words.removeAt(0) + words.map((p) => p._singleWordTitleCase).join();
  }

  /// {@macro string_extension}
  ///
  /// [constantCase] - `hello world` -> `HELLO_WORLD`
  String get constantCase => parts.join('_').upperCase;

  /// {@macro string_extension}
  ///
  /// [dotCase] - `hello world` -> `hello.world`
  String get dotCase => parts.join('.').lowerCase;

  /// {@macro string_extension}
  ///
  /// [headerCase] - `hello world` -> `Hello-World`
  String get headerCase => parts.map((p) => p._singleWordTitleCase).join('-');

  /// {@macro string_extension}
  ///
  /// [pascalCase] - `hello world` -> `HelloWorld`
  String get pascalCase => parts.map((p) => p._singleWordTitleCase).join();

  /// {@macro string_extension}
  ///
  /// [mustacheCase] - `hello world` -> `{{hello world}}`
  String get mustacheCase {
    return '{{$this}}';
  }

  /// {@macro string_extension}
  ///
  /// [pascalDotCase] - `hello world` -> `Hello.World`
  String get pascalDotCase =>
      parts.map((p) => p._singleWordTitleCase).join('.');

  /// {@macro string_extension}
  ///
  /// [paramCase] - `hello world` -> `hello-world`
  String get paramCase => parts.join('-').lowerCase;

  /// {@macro string_extension}
  ///
  /// [pathCase] - `hello world` -> `hello/world`
  String get pathCase => parts.join('/').lowerCase;

  /// {@macro string_extension}
  ///
  /// [sentenceCase] - `hello world` -> `Hello world`
  String get sentenceCase {
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// {@macro string_extension}
  ///
  /// [snakeCase] - `hello world` -> `hello_world`
  String get snakeCase => parts.join('_').lowerCase;

  /// {@macro string_extension}
  ///
  /// [titleCase] - `hello world` -> `Hello World`
  String get titleCase => parts.map((p) => p._singleWordTitleCase).join(' ');

  /// {@macro string_extension}
  ///
  /// [upperCase] - `hello world` -> `HELLO WORLD`
  String get upperCase => toUpperCase();

  /// {@macro string_extension}
  ///
  /// [lowerCase] - `HELLO WORLD` -> `hello world`
  String get lowerCase => toLowerCase();
}

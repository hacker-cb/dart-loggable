# Loggable

Package provide simple `Loggable` mixin to avoid typing class name for each class.

[![pub package](https://img.shields.io/pub/v/http.svg)](https://pub.dartlang.org/packages/loggable)


## Usage

Without `Loggable`:
```dart
import 'package:logging/logging.dart';

class MyClass{
  final Logger log = Logger("MyClass");
}
```

With `Loggable`:

```dart
import 'package:loggable/loggable.dart';

class MyClass extends Object with Loggable {
}
```

## Features and bugs

* There is no support for logging from the static methods. Still need to creating Logger instance by hands.

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/Hacker-CB/dart-loggable/issues

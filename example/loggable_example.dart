import 'package:loggable/loggable.dart';
import 'package:logging/logging.dart';

class MyClass extends Object with Loggable {
  void myMethod(){
    log.info('myMethod()');
  }

  static staticMethod() {
    Loggable.logName('MyClass static').fine('staticMethod()');
  }
}

main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('[${rec.level.name.padRight(7)}] [${rec.loggerName.padRight(25)}] ${rec.message}');
  });

  final myClass = MyClass();

  myClass.myMethod();

  MyClass.staticMethod();
}

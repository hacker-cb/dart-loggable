import 'package:loggable/loggable.dart';
import 'package:logging/logging.dart';

class MyClass extends Object with Loggable {
  void myMethod(){
    log.info("myMethod()");
  }
}

main() {

  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((LogRecord rec) {
    print('[${rec.level.name.padRight(7)}] [${rec.loggerName.padRight(25)}] ${rec.message}');
  });

  var myClass = MyClass();


  myClass.myMethod();
}

import 'package:logging/logging.dart';

mixin Loggable {
  Logger get log => logName('$runtimeType');

  static Logger logName(String name) => Logger(name);
}

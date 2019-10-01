import 'package:logging/logging.dart';

class Loggable {
  Logger get log => Logger(runtimeType.toString());
}

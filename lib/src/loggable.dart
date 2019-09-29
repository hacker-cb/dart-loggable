import 'package:logging/logging.dart';

class Loggable {
  Logger _logger;
  Logger get log => _logger ??= Logger(runtimeType.toString());
}

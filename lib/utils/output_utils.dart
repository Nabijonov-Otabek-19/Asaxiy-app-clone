import 'package:logger/logger.dart';

void logger(String message) {
  Logger(
    printer: PrettyPrinter(
      printEmojis: true,
    ),
  ).d(message);
}

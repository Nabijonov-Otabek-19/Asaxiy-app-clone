import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:logger/logger.dart';

void logger(String message) {
  Logger(
    printer: PrettyPrinter(
      printEmojis: true,
    ),
  ).d(message);
}

void toast(String message) {
  Fluttertoast.showToast(
    msg: message,
    fontSize: 20,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black54,
    toastLength: Toast.LENGTH_SHORT,
    textColor: Colors.white,
    gravity: ToastGravity.BOTTOM,
  );
}

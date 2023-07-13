import 'package:flutter/material.dart';

class NotificactionsService {
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      new GlobalKey<ScaffoldMessengerState>();

  static showSnackBar(String message) {
    final snackBar = new SnackBar(
        content: Text(
      message,
      style: TextStyle(fontSize: 20),
    ));

    messengerKey.currentState!.showSnackBar(snackBar);
  }
}

import 'package:flutter/material.dart';

class ShowSnackBar {
  static getSnackBar(context, String title, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(title),
      backgroundColor: color,
    ));
  }
}

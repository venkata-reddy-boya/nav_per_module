import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  NavigatorState get nav => Navigator.of(this);
  NavigatorState get rootNav => Navigator.of(this, rootNavigator: true);
}

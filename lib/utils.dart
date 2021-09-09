import 'package:flutter/material.dart';

typedef CustomRouteBuilder = Widget Function(dynamic args);

class Utils {
  static MaterialPageRoute<dynamic> getRouteWithArgs<T>(
    RouteSettings settings,
    CustomRouteBuilder builder,
  ) {
    var args = settings.arguments;

    if (args != null && args is T) {
      return MaterialPageRoute(
        builder: (_) => builder(args as T),
        settings: settings,
      );
    } else {
      throw Exception(
          'args type not matched required type : ${T.toString()} and found ${args.runtimeType} ');
    }
  }

  static MaterialPageRoute<dynamic> getRoute(
    RouteSettings settings,
    Widget widget,
  ) {
    return MaterialPageRoute(
      builder: (_) => widget,
      settings: settings,
    );
  }
}

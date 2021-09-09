part of 'help_module_page.dart';

Route<dynamic> _onGenerateRoute(
    RouteSettings settings, Object? firstSubRouteArgs) {
  ///handle first route case
  if (!settings.name!.startsWith('/')) {
    settings = settings.copyWith(
      name: '/${settings.name}',
      arguments: firstSubRouteArgs,
    );
  }

  switch (settings.name) {
    case PageTemp.routeName:
      return Utils.getRouteWithArgs<String>(
        settings,
        (args) => PageTemp(data: args as String),
      );
    case PageOne.routeName:
      return Utils.getRouteWithArgs<String>(
        settings,
        (args) => PageOne(data: args as String),
      );
    case PageTwo.routeName:
      return Utils.getRouteWithArgs<String>(
        settings,
        (args) => PageTwo(data: args as String),
      );
  }

  throw Exception('route not found with name :${settings.name}');
}

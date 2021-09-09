part of 'root_module_app.dart';

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  var routeName = settings.name!;
  String? subRouteName;

  if (settings.name!.length > 2) {
    var list = settings.name!.split('/');
    if (list.length >= 3) {
      routeName = '/${list[1]}';
      subRouteName = '/${list[2]}';
    }
  }

  switch (routeName) {
    case '/':
      return Utils.getRoute(settings, MyHomePage());
    case KycModulePage.routeName:
      return Utils.getRoute(
        settings,
        KycModulePage(
          firstSubRouteArgs: settings.arguments,
          firstSubRouteName: subRouteName,
        ),
      );
    case HelpModulePage.routeName:
      return Utils.getRoute(
        settings,
        HelpModulePage(
          firstSubRouteArgs: settings.arguments,
          firstSubRouteName: subRouteName,
        ),
      );
  }

  throw Exception('route not found with name :${settings.name}');
}

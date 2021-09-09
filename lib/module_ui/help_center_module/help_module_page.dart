import 'package:flutter/material.dart';
import 'package:nav_per_module/module_ui/help_center_module/ui/page_temp.dart';
import 'package:nav_per_module/module_ui/kyc_module/ui/page_one.dart';
import 'package:nav_per_module/module_ui/kyc_module/ui/page_two.dart';
import 'package:nav_per_module/utils.dart';

part 'help_module_routes.dart';

class HelpModulePage extends StatelessWidget {
  static const routeName = '/help';

  final String? firstSubRouteName;
  final Object? firstSubRouteArgs;
  final _navKey = GlobalKey<NavigatorState>();

  HelpModulePage({
    Key? key,
    this.firstSubRouteName,
    this.firstSubRouteArgs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var initialRoute = firstSubRouteName ?? PageTemp.routeName;
    return WillPopScope(
      onWillPop: _handlePop,
      child: Navigator(
        key: _navKey,
        onGenerateRoute: (settings) =>
            _onGenerateRoute(settings, firstSubRouteArgs),
        initialRoute: initialRoute.substring(1),
      ),
    );
  }

  Future<bool> _handlePop() async {
    if (_navKey.currentState!.canPop()) {
      _navKey.currentState!.pop();
      return false;
    }
    return true;
  }
}

import 'package:cupertino_back_gesture/cupertino_back_gesture.dart';
import 'package:flutter/material.dart';
import 'package:nav_per_module/module_ui/help_center_module/help_module_page.dart';
import 'package:nav_per_module/module_ui/kyc_module/kyc_module_page.dart';
import 'package:nav_per_module/module_ui/root_module/ui/my_home_page.dart';
import 'package:nav_per_module/utils.dart';

part 'root_module_routes.dart';

class RootModuleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BackGestureWidthTheme(
      backGestureWidth: BackGestureWidth.fraction(0.75),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          pageTransitionsTheme: PageTransitionsTheme(
            builders: {
              TargetPlatform.android:
                  CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
              TargetPlatform.iOS:
                  CupertinoPageTransitionsBuilderCustomBackGestureWidth(),
            },
          ),
        ),
        onGenerateRoute: _onGenerateRoute,
      ),
    );
  }
}

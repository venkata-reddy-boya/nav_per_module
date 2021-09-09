import 'package:flutter/material.dart';
import 'package:nav_per_module/extensions.dart';
import 'package:nav_per_module/module_ui/help_center_module/help_module_page.dart';
import 'package:nav_per_module/module_ui/kyc_module/kyc_module_page.dart';
import 'package:nav_per_module/module_ui/kyc_module/ui/page_one.dart';
import 'package:nav_per_module/module_ui/kyc_module/ui/page_two.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nav-Per-Module Demo'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height: 6),
            Text('Kyc'),
            Container(height: 16),
            ElevatedButton(
              onPressed: () {
                context.nav
                    .pushNamed(KycModulePage.routeName, arguments: 'kyc');
              },
              child: Text('push module'),
            ),
            ElevatedButton(
              onPressed: () {
                context.nav.pushNamed(
                  KycModulePage.routeName + PageTwo.routeName,
                  arguments: 'kyc',
                );
              },
              child: Text('push module with target route'),
            ),
            Spacer(),

            /// ==================================
            Container(height: 6),
            Text('help'),
            Container(height: 16),
            ElevatedButton(
              onPressed: () {
                context.nav
                    .pushNamed(HelpModulePage.routeName, arguments: 'help');
              },
              child: Text('push module'),
            ),
            ElevatedButton(
              onPressed: () {
                context.nav.pushNamed(
                  HelpModulePage.routeName + PageOne.routeName,
                  arguments: 'help',
                );
              },
              child: Text('push module with target route'),
            ),
          ],
        ),
      ),
    );
  }
}

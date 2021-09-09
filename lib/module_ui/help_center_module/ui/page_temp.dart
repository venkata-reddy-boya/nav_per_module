import 'package:flutter/material.dart';
import 'package:nav_per_module/extensions.dart';
import 'package:nav_per_module/module_ui/kyc_module/kyc_module_page.dart';
import 'package:nav_per_module/module_ui/kyc_module/ui/page_one.dart';

class PageTemp extends StatelessWidget {
  final String data;
  const PageTemp({Key? key, required this.data}) : super(key: key);

  static const routeName = '/page-temp';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(height: 40),
            Text('page temp $data'),
            Container(height: 20),
            ElevatedButton(
              onPressed: () {
                context.nav.pushNamed(
                  PageOne.routeName,
                  arguments: data,
                );
              },
              child: Text('push page one'),
            ),
            Spacer(),
            Text('push kyc module from help in root nav'),
            Container(height: 20),
            ElevatedButton(
              onPressed: () {
                context.rootNav.pushNamed(
                  KycModulePage.routeName,
                  arguments: 'pushed kyc module from help',
                );
              },
              child: Text('push page one'),
            ),
          ],
        ),
      ),
    );
  }
}

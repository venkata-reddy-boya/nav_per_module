import 'package:flutter/material.dart';
import 'package:nav_per_module/extensions.dart';
import 'package:nav_per_module/module_ui/kyc_module/ui/page_two.dart';

class PageOne extends StatelessWidget {
  final String data;
  const PageOne({Key? key, required this.data}) : super(key: key);

  static const routeName = '/page-one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('page one $data'),
            Container(height: 20),
            ElevatedButton(
              onPressed: () {
                context.nav.pushNamed(
                  PageTwo.routeName,
                  arguments: data,
                );
              },
              child: Text('push page two'),
            ),
          ],
        ),
      ),
    );
  }
}

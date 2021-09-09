import 'package:flutter/material.dart';
import 'package:nav_per_module/extensions.dart';

class PageTwo extends StatelessWidget {
  final String data;

  const PageTwo({
    Key? key,
    required this.data,
  }) : super(key: key);

  static const routeName = '/page-two';

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
            Text('page two $data'),
            Container(height: 20),
            ElevatedButton(
              onPressed: () {
                context.rootNav.pop();
              },
              child: Text('pop entire module'),
            ),
          ],
        ),
      ),
    );
  }
}

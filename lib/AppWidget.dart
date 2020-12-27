import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controler_theme.dart';
import 'HomePage.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: Colors.blue,
              brightness: AppController.instance.isdarktheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            },
          );
        });
  }
}

/*Container(
        child: Center(
            child: Text(
      title,
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.white, fontSize: 70.0),
    )));
*/

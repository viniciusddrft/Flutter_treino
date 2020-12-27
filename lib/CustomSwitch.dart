import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controler_theme.dart';

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isdarktheme,
      onChanged: (value) {
        AppController.instance.changetheme();
      },
    );
  }
}

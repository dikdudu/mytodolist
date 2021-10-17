import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  AppTheme._();

  static get theme => ThemeData(
        primaryColor: Color(0xFF00A6FB),
        primaryColorLight: Color(0xffABC8F7),
        textTheme: TextTheme(
          caption: TextStyle(
            color: AppColors.gray,
          ),
          bodyText1: TextStyle(
            color: AppColors.gray,
          ),
          bodyText2: TextStyle(
            color: AppColors.gray,
          ),
        ),
      );
}

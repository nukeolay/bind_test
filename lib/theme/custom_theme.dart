import 'package:flutter/material.dart';

class CustomTheme {
  static const appBarIconSize = 28.0;
  static ThemeData get theme => ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Colors.white,
          onSurfaceVariant: const Color(0xFF141416),
        ),
        buttonTheme: const ButtonThemeData(
            colorScheme: ColorScheme.dark(outline: Color(0xFF595961))),
        textTheme: const TextTheme(
          headline4: TextStyle(color: Color(0xFF6C6C6C)),
          bodyText2: TextStyle(fontSize: 20),
          subtitle1: TextStyle(fontSize: 18, color: Colors.black),
          subtitle2: TextStyle(fontSize: 14, color: Color(0xFF9C9C9C)),
        ),
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          titleSpacing: 0,
          iconTheme: const IconThemeData().copyWith(size: appBarIconSize),
          actionsIconTheme:
              const IconThemeData().copyWith(size: appBarIconSize),
        ),
        listTileTheme: const ListTileThemeData(
          textColor: Colors.black,
          tileColor: Colors.white,
          selectedColor: Color(0xFFCCCCCC),
          selectedTileColor: Color(0xFFF3F3F3),
        ),
      );
}

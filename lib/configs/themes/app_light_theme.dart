import 'package:flutter/material.dart';
import 'package:study_app/configs/themes/sub_theme_data_mixin.dart';

const Color primaryLightColorLight = Color(0xFF3AC3CB);
const Color primaryColorLight = Color(0xFFF85187);
const Color mainTextColorLight = Color.fromARGB(255, 40, 40, 40);

class LightTheme with SubThemeData {
  buidLightTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
      iconTheme: getIconTheme(),
      textTheme: getTextThemes().apply(
          bodyColor: mainTextColorLight, displayColor: mainTextColorLight),
    );
  }
}

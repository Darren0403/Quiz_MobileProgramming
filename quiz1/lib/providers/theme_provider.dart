import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = ThemeData.light();
  TextStyle _fontStyle = GoogleFonts.roboto();

  ThemeData get themeData => _themeData;
  TextStyle get fontStyle => _fontStyle;

  void setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  void setFont(TextStyle font) {
    _fontStyle = font;
    notifyListeners();
  }
}

import 'package:flutter/widgets.dart';

class ScreenUtils {
  static double _screenWidth = 360;
  static double _screenHeight = 640;
  static double _screenDensity = 1.0;
  static TextScaler _textScaleFactor = TextScaler.noScaling;

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static double get screenDensity => _screenDensity;
  static TextScaler get textScaleFactor => _textScaleFactor;

  static void init(context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
    _screenDensity = MediaQuery.of(context).devicePixelRatio;
    _textScaleFactor = MediaQuery.of(context).textScaler;
  }

  // height scale

  static double getScaleWidth(double width) {
    return width * (_screenWidth / screenWidth);
  }

  static double getScaleHeight(double height) {
    return height * (_screenHeight / screenHeight);
  }

  static double getScaleText(double fontSize) {
    return textScaleFactor.scale(fontSize);
  }

  static double getScaleSp(double fontSize) {
    return getScaleText(fontSize);
  }
}

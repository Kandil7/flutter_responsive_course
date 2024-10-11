import 'package:flutter/widgets.dart';

class ScreenUtils {
  static double _screenWidth = 360;
  static double _screenHeight = 640;
  static double _screenDensity = 1.0;
  static TextScaler _textScaleFactor = TextScaler.noScaling;

  // Getters for screen properties
  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static double get screenDensity => _screenDensity;
  static TextScaler get textScaleFactor => _textScaleFactor;

  /// Initialize screen dimensions and scaling factors.
  static Future<void> init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _screenDensity = mediaQuery.devicePixelRatio;
    _textScaleFactor = mediaQuery.textScaler;

    return Future.value();
  }

  // Width scaling relative to screen size
  static double scaleWidth(double width) {
    return width * (_screenWidth / 360);
  }

  // Height scaling relative to screen size
  static double scaleHeight(double height) {
    return height * (_screenHeight / 640);
  }

  // Text scaling based on the text scaling factor
  static double scaleText(double fontSize) {
    return _textScaleFactor.scale(fontSize);
  }

  // Convenient method for scaling text (sp = scalable pixels)
  static double scaleSp(double fontSize) {
    return scaleText(fontSize);
  }

  // Density-based scaling (for dp)
  static double scaleDp(double dp) {
    return dp * _screenDensity;
  }
}

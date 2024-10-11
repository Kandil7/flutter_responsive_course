import 'screen_utils.dart';

extension SizeExtention on num {
  double get w => ScreenUtils.getScaleWidth(toDouble());
  double get h => ScreenUtils.getScaleHeight(toDouble());
  double get sp => ScreenUtils.getScaleSp(toDouble());
  double get dp => ScreenUtils.getScaleDp(toDouble());
}

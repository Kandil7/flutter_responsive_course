import 'screen_utils.dart';

extension SizeExtention on num {
  double get w => ScreenUtils.scaleWidth(toDouble());
  double get h => ScreenUtils.scaleHeight(toDouble());
  double get sp => ScreenUtils.scaleSp(toDouble());
  double get dp => ScreenUtils.scaleDp(toDouble());
}

import 'package:flutter/material.dart';
import 'package:flutter_responsive_course/media_query_test/responsive_service/size_extention.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final double fontsize;

  const ItemWidget({super.key, required this.title, this.fontsize = 20});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      leading: const Icon(Icons.ac_unit),
      title: Text(
        title,
        style: TextStyle(
          fontSize: fontsize.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

getMediaQueryData(BuildContext context) {
  var mediaQueryData = MediaQuery.of(context);
  return [
    'Size: ${mediaQueryData.size}',
    'Device Pixel Ratio: ${mediaQueryData.devicePixelRatio}',
    'Text Scale Factor: ${mediaQueryData.textScaler}',
    'Platform Brightness: ${mediaQueryData.platformBrightness}',
    'Padding: ${mediaQueryData.padding}',
    'View Insets: ${mediaQueryData.viewInsets}',
    'System Gesture Insets: ${mediaQueryData.systemGestureInsets}',
    'Always Use 24-Hour Format: ${mediaQueryData.alwaysUse24HourFormat}',
    'Accessible Navigation: ${mediaQueryData.accessibleNavigation}',
    'Invert Colors: ${mediaQueryData.invertColors}',
    'High Contrast: ${mediaQueryData.highContrast}',
    'Disable Animations: ${mediaQueryData.disableAnimations}',
    'Bold Text: ${mediaQueryData.boldText}',
  ];
}

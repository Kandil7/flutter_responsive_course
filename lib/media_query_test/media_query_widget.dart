import 'package:flutter/material.dart';

class MedaiQueryWidget extends StatelessWidget {
  const MedaiQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenOrientation = MediaQuery.of(context).orientation;
    var screenPadding = MediaQuery.of(context).padding;
    var screenTextScaleFactor = MediaQuery.of(context).textScaleFactor;
    var screenPlatformBrightness = MediaQuery.of(context).platformBrightness;
    var screenAlwaysUse24HourFormat =
        MediaQuery.of(context).alwaysUse24HourFormat;
    var screenAccessibleNavigation =
        MediaQuery.of(context).accessibleNavigation;
    var screenInvertColors = MediaQuery.of(context).invertColors;
    var screenHighContrast = MediaQuery.of(context).highContrast;
    var screenDisableAnimations = MediaQuery.of(context).disableAnimations;
    var screenBoldText = MediaQuery.of(context).boldText;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Text('Screen Size: $screenSize'),
                Text('Screen Orientation: $screenOrientation'),
                Text('Screen Padding: $screenPadding'),
                Text('Screen Text Scale Factor: $screenTextScaleFactor'),
                Text('Screen Platform Brightness: $screenPlatformBrightness'),
                Text(
                    'Screen Always Use 24 Hour Format: $screenAlwaysUse24HourFormat'),
                Text(
                    'Screen Accessible Navigation: $screenAccessibleNavigation'),
                Text('Screen Invert Colors: $screenInvertColors'),
                Text('Screen High Contrast: $screenHighContrast'),
                Text('Screen Disable Animations: $screenDisableAnimations'),
                Text('Screen Bold Text: $screenBoldText'),
              ],
            ),
          );
        },
      ),
    );
  }
}

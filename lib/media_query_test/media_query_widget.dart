import 'package:flutter/material.dart';
import 'package:flutter_responsive_course/media_query_test/item_widget.dart';

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

    var datalist = [
      'Size: $screenSize',
      'Orientation: $screenOrientation',
      'Padding: $screenPadding',
      'Text Scale Factor: $screenTextScaleFactor',
      'Platform Brightness: $screenPlatformBrightness',
      'Always Use 24 Hour Format: $screenAlwaysUse24HourFormat',
      'Accessible Navigation: $screenAccessibleNavigation',
      'Invert Colors: $screenInvertColors',
      'High Contrast: $screenHighContrast',
      'Disable Animations: $screenDisableAnimations',
      'Bold Text: $screenBoldText',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: datalist.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.primaries[index % Colors.primaries.length],
            child: ItemWidget(
                title: datalist[index], fontsize: screenTextScaleFactor * 20),
          );
        },
      ),
    );
  }
}

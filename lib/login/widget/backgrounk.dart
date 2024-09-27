import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundImage extends StatelessWidget {
  final Widget child;

  const BackgroundImage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height,
      width: screenSize.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/img.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}

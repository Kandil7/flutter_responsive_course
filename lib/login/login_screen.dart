import 'package:flutter/material.dart';
import 'package:flutter_responsive_course/login/widget/backgrounk.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundImage(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            SvgPicture.asset('assets/svg/kinda logo.svg'),
            const SizedBox(
              height: 30,
            ),
            SvgPicture.asset('assets/svg/text.svg')
          ],
        ),
      ),
    );
  }
}

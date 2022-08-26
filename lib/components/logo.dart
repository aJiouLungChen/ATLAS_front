import 'package:flutter/material.dart';
import '../constant.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      kLogoText,
      style: kLogoTextStyle,
    );
  }
}

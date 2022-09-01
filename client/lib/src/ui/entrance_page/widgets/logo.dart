import 'package:flutter/material.dart';
import 'package:client/src/constants/app_text_styles.dart';
import 'package:client/src/constants/app_texts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppTexts.kLogoText,
      style: AppTextStyles.kLogoTextStyle,
    );
  }
}

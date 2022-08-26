import 'package:flutter/material.dart';
import 'package:client/src/constants/app_colors.dart';
import 'package:client/src/constants/app_numbers.dart';
import 'package:client/src/constants/app_text_styles.dart';
import 'package:client/src/constants/app_texts.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({required this.googleSignInIconSvg});

  final Widget googleSignInIconSvg;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        //GoogleSignInFlow().signIn();
      },
      style: ElevatedButton.styleFrom(
        primary: AppColors.kSignInButtonBackgroundColor,
        onPrimary: AppColors.kSignInButtonEffectColor,
        elevation: AppNumbers.kSignInButtonElevation,
      ),
      child: SizedBox(
        width: AppNumbers.kSignInButtonWidth,
        child: Row(
          children: [
            googleSignInIconSvg,
            const Text(
              AppTexts.kSignInButtonText,
              style: AppTextStyles.kSignInButtonTextStyle,
            )
          ],
        ),
      ),
    );
  }
}

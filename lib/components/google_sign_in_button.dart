import 'package:flutter/material.dart';
import 'package:client/constant.dart';
import '../server/google_sign_in.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({required this.googleSignInIconSvg});

  final Widget googleSignInIconSvg;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        GoogleSignInFlow().signIn();
      },
      style: ElevatedButton.styleFrom(
        primary: kSignInButtonBackgroundColor,
        onPrimary: kSignInButtonEffectColor,
        elevation: kSignInButtonElevation,
      ),
      child: SizedBox(
        width: kSignInButtonWidth,
        child: Row(
          children: [
            googleSignInIconSvg,
            const Text(
              kSignInButtonText,
              style: kSignInButtonTextStyle,
            )
          ],
        ),
      ),
    );
  }
}

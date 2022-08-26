import 'package:client/components/google_sign_in_button.dart';
import 'package:client/components/logo.dart';
import 'package:flutter/material.dart';
import 'package:client/constant.dart';
import 'package:flutter_svg/svg.dart';

class EntrancePage extends StatefulWidget {
  const EntrancePage({Key? key}) : super(key: key);

  @override
  State<EntrancePage> createState() => _EntrancePageState();
}

class _EntrancePageState extends State<EntrancePage> {
  final Widget googleSignInIconSvg = SvgPicture.asset(kImgPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, //??
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Logo(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GoogleSignInButton(googleSignInIconSvg: googleSignInIconSvg),
          ),
        ],
      ),
    );
  }
}

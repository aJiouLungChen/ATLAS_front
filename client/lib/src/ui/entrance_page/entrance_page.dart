import 'package:client/src/ui/entrance_page/widgets/google_sign_in_button.dart';
import 'package:client/src/ui/entrance_page/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:client/src/constants/app_configurations.dart';

class EntrancePage extends StatefulWidget {
  const EntrancePage({Key? key}) : super(key: key);

  @override
  State<EntrancePage> createState() => _EntrancePageState();
}

class _EntrancePageState extends State<EntrancePage> {
  final Widget googleSignInIconSvg = SvgPicture.asset(AppConfigurations.kImgPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, //If run this app on the mobile's platform, it default background color is black
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

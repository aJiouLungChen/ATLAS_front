import 'package:client/server/networking.dart';
import 'package:flutter/material.dart';
import 'dart:html';
import 'package:client/server/user_info.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late String code;
  //late Future<UserInfo> user;

  @override
  void initState() {
    super.initState();
    Uri url = Uri.parse(window.location.href);
    code = url.queryParameters["code"].toString();
    NetworkingService().fetchUserInfo(code).then((value) => print(value.picture));
    //aa
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: SizedBox(
      //     width: 150,
      //     height: 150,
      //     child: CircularProgressIndicator(
      //       backgroundColor: Colors.grey,
      //       strokeWidth: 15,
      //       color: Colors.black,
      //     )
      // )
      child: SelectableText(code),
    );
  }
}

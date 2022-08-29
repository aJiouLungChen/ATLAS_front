import 'package:flutter/material.dart';
import 'dart:html';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late String authCode;

  @override
  void initState() {
    super.initState();
    Uri url = Uri.parse(window.location.href);
    authCode = url.queryParameters["code"].toString();
    //NetworkingService().fetchUserInfo(code);
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: CircularProgressIndicator(
          backgroundColor: Colors.grey,
          strokeWidth: 15,
          color: Colors.black,
        ),
      ),
    );
  }
}

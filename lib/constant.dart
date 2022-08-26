import 'package:flutter/material.dart';
//Google icon
const String kImgPath = "images/btn_google_light_normal_ios.svg";
//Sign in button's attribute
const TextStyle kSignInButtonTextStyle = TextStyle(color: Colors.black);
const String kSignInButtonText = "Sign in with Google";
const Color kSignInButtonBackgroundColor = Colors.white;
const Color kSignInButtonEffectColor = Colors.grey;
const double kSignInButtonElevation = 5.0;
//Logo's attribute
const TextStyle kLogoTextStyle = TextStyle(color: Colors.black, decoration: TextDecoration.none, fontSize: 70);
const String kLogoText = "ATLAS";
const double kSignInButtonWidth = 190.0;
//Sign in flow
const String kAuthority = "accounts.google.com";
const String kUnEncodePath = "/o/oauth2/v2/auth";
const String kResponseType="code";
const String kClientId = "1068831372506-eqpgvmp11kj2rcdh9ce9of169pvbn8np.apps.googleusercontent.com";
const String kRedirectUri = "http://localhost:58702/auth";
const String kScope = "profile email";
const String kFlowName = "GeneralOAuthFlow";
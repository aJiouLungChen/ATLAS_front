import 'package:client/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class GoogleSignInFlow {
  Future<void> signIn() async {
    Uri url = Uri.https(kAuthority, kUnEncodePath, {
      'response_type': kResponseType,
      'client_id': kClientId,
      'redirect_uri': kRedirectUri,
      'scope': kScope,
      'flowName': kFlowName
    });

    if (!await launchUrl(url, webOnlyWindowName: "_self")) {
      throw 'Could not launch $url';
    }
  }
}

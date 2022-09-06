import 'package:client/src/constants/app_configurations.dart';
import 'package:url_launcher/url_launcher.dart';

class GoogleSignInFlow {
  Future<void> signIn() async {
    Uri url = Uri.https(AppConfigurations.kAuthority, AppConfigurations.kUnEncodePath, {
      'response_type': AppConfigurations.kResponseType,
      'client_id': AppConfigurations.kClientId,
      'redirect_uri': AppConfigurations.kRedirectUri,
      'scope': AppConfigurations.kScope,
      'flowName': AppConfigurations.kFlowName
    });

    if (!await launchUrl(url, webOnlyWindowName: "_self")) {
      throw 'Could not launch $url';
    }
  }
}

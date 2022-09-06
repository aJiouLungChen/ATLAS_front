class ApiService {
  ApiService(this.apiKey);

  final String apiKey;

  static const String _apiBaseUrl = "localhost";
  static const String _apiPath = "api/v1/";

  Uri signin(String authCode) => _buildUri(
        endpoint: "retrieve",
        parametersBuilder: () => authCodeQueryParameters(authCode),
      );

  Uri _buildUri({
    required String endpoint,
    required Map<String, dynamic> Function() parametersBuilder,
  }) {
    return Uri(
      host: _apiBaseUrl,
      port: 3000,
      path: "$_apiPath$endpoint",
      queryParameters: parametersBuilder(),
    );
  }

  Map<String, dynamic> authCodeQueryParameters(String authCode) => {
        "code": authCode,
        // "appid": apiKey,
      };
}

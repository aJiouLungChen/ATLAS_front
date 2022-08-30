import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user_info.dart';

class NetworkingService{

  Future<UserInfo> fetchUserInfo(String code) async{
    final resp = await http.get(Uri.parse("http://localhost:3000/api/v1/retrieve?id=$code"));

    if (resp.statusCode != 200){
      throw Exception('Failed to load weather');
    }
    return UserInfo.fromjson(jsonDecode(resp.body)["body"]);
  }
}
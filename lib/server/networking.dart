import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkingService{

  Future<void> fetchUserInfo(String code) async{
    final resp = await http.get(Uri.parse("http://localhost:3000/api/v1/retrieve?id=$code"));

    if (resp.statusCode == 200){
      print(resp.body);
    }else{
      throw Exception('Failed to load weather');
    }
  }
}
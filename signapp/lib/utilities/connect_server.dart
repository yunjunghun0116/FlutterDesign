import 'dart:convert';
import 'package:http/http.dart' as http;

class RequestToServer {
  bool success = false;
  String msg = "";
  String baseUrl = 'http://192.168.35.231:3000';

  Future<Map<String,dynamic>> registerWithEmailAndPassword(
      String email, String password) async {
    String url = '$baseUrl/users/register';
    http.Response response = await http.post(Uri.parse(url), body: {
      'email': email,
      'password': password,
    });
    Map<String,dynamic> _response =jsonDecode(response.body);
    return _response;
  }
  Future<Map<String,dynamic>> loginWithEmailAndPassword(
      String email, String password) async {
    String url = '$baseUrl/users/login';
    http.Response response = await http.post(Uri.parse(url), body: {
      'email': email,
      'password': password,
    });
    Map<String,dynamic> _response =jsonDecode(response.body);
    return _response;
  }
  Future<http.Response> userLogout() async {
    String url = '$baseUrl/users/logout';
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }
}

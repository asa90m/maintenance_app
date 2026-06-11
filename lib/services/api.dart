import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://192.168.1.100:5000/api"; // عدل الـ IP حسب جهاز الكمبيوتر في العمل

  Future<bool> login(String username, String password) async {
    var response = await http.post(
      Uri.parse("$baseUrl/login"),
      body: jsonEncode({"username": username, "password": password}),
      headers: {"Content-Type": "application/json"},
    );
    return response.statusCode == 200;
  }
}

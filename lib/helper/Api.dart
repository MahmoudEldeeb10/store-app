import 'dart:convert';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there are an error ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String? url, required dynamic body, String? token}) async {
    Map<String, String> header = {};
    if (token != null) {
      header.addAll({'Authorization': 'Bearer $token'});
    }
    http.Response response =
        await http.post(Uri.parse(url!), body: body, headers: header);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there are an error ${response.statusCode}');
    }
  }

  Future<dynamic> put(
      {required String url, required dynamic body, String? token}) async {
    http.Response response = await http.put(Uri.parse(url));
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer $token'});
    }
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('there are an error ${response.statusCode}');
    }
  }
}

import 'package:http/http.dart' as http;
import 'dart:convert';

class Api {
  final host = 'https://host.com';
  final apiVersion = '/api/v1';

  static Api instance = new Api();

  static headers() {
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
  }

  static get(route) async {
    String url = _getUrl(route);
    final response = await http.get(url, headers: headers());
    return _parseResponse(response);
  }

  static post(route, body) async {
    String url = _getUrl(route);
    final response = await http.post(url, headers: headers(), body: body);
    return _parseResponse(response);
  }

  static put(route, body) async {
    String url = _getUrl(route);
    final response = await http.put(url, headers: headers(), body: body);
    return _parseResponse(response);
  }

  static delete(route, params) async {
    String url = _getUrl(route);
    final response = await http.delete(url, headers: {...headers(), ...params});
    return _parseResponse(response);
  }

  static _getUrl(route) => "${instance.host}${instance.apiVersion}$route";

  static _parseResponse(response) {
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      return json.decode(response.body);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}

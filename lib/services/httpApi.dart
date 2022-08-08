import 'dart:convert';

import 'package:http/http.dart' as http;

import '../config.dart';

class Api {
  static String host = Config.serverIp();

  static const String apiver = Config.versionAPI;

  static Future<List> post(body, endpoint, headers) async {
    var url = Uri.parse("http://$host/api/$apiver/$endpoint");
    Map map = body;
    var response =
        await http.post(url, headers: headers, body: json.encode(map));

    return [response.statusCode, json.decode(response.body)];
  }

  static Future<List> get(endpoint, headers) async {
    var url = Uri.parse("http://$host/api/$apiver/$endpoint");
    var response = await http.get(url, headers: headers);

    return [response.statusCode, json.decode(response.body)];
  }
}

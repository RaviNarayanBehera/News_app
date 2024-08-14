import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Helper {
  Future<Map> fetchApiData() async {
    Uri url = Uri.parse(
        'https://newsapi.org/v2/everything?q=apple&from=2024-08-12&to=2024-08-12&sortBy=popularity&apiKey=06a2c1a36abb489d98bffb5a7885cc8c');

    Response response = await http.get(url);

    if (response.statusCode == 200) {
      final json = response.body;
      final data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }
}

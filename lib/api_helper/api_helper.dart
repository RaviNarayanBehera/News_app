import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Helper {
  Future<Map> fetchApiData() async {
    String companyApi =
        'https://newsapi.org/v2/everything?q=apple&from=2024-08-12&to=2024-08-12&sortBy=popularity&apiKey=06a2c1a36abb489d98bffb5a7885cc8c';
    Uri url = Uri.parse(companyApi);

    Response response = await http.get(url);

    if (response.statusCode == 200) {
      final json = response.body;
      final data = jsonDecode(json);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchApiTeslaData() async {
    String teslaApi =
        'https://newsapi.org/v2/everything?q=tesla&from=2024-07-13&sortBy=publishedAt&apiKey=06a2c1a36abb489d98bffb5a7885cc8c';

    Uri url = Uri.parse(teslaApi);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final Map data = jsonDecode(response.body);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchApiBusinessData() async {
    String businessApi =
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=06a2c1a36abb489d98bffb5a7885cc8c';

    Uri url = Uri.parse(businessApi);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final Map data = jsonDecode(response.body);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchApiTechData() async {
    String techApi =
        'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=06a2c1a36abb489d98bffb5a7885cc8c';

    Uri url = Uri.parse(techApi);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final Map data = jsonDecode(response.body);
      return data;
    } else {
      return {};
    }
  }

  Future<Map> fetchApiWallStreetData() async {
    String stockApi =
        'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=06a2c1a36abb489d98bffb5a7885cc8c';

    Uri url = Uri.parse(stockApi);
    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final Map data = jsonDecode(response.body);
      return data;
    } else {
      return {};
    }
  }
}

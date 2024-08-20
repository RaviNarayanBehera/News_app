import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news/Model/news_model.dart';
import 'package:news/api_helper/api_helper.dart';

// class NewsController extends GetxController {
//   final Helper helper = Helper();
//
//    NewsModel? newsModel;
//
//   Future<NewsModel?> fromMap()
//   async {
//     final data = await helper.fetchApiData();
//     newsModel = NewsModel.fromJson(data);
//     return newsModel;
//   }
// }

class NewsController extends GetxController {
  Helper helper = Helper();
  NewsModel? newsModel;
  NewsModel? teslaDataModel;
  NewsModel? businessDataModel;
  NewsModel? techDataModel;
  NewsModel? wallStreetDataModel;

  Future<NewsModel?> fetchApiData() async {
    final data = await helper.fetchApiData();
    newsModel = NewsModel.fromJson(data);
    return newsModel;
  }

  Future<NewsModel?> fetchTeslaApiData() async {
    final data = await helper.fetchApiTeslaData();
    teslaDataModel = NewsModel.fromJson(data);
    return teslaDataModel;
  }

  Future<NewsModel?> fetchBusinessApiData() async {
    final data = await helper.fetchApiBusinessData();
    businessDataModel = NewsModel.fromJson(data);
    return businessDataModel;
  }

  Future<NewsModel?> fetchTechApiData() async {
    final data = await helper.fetchApiTechData();
    techDataModel = NewsModel.fromJson(data);
    return techDataModel;
  }

  Future<NewsModel?> fetchStocksApiData() async {
    final data = await helper.fetchApiWallStreetData();
    wallStreetDataModel = NewsModel.fromJson(data);
    return wallStreetDataModel;
  }

  // NewsController() {
  //   fetchCompanyApiData();
  // }
}

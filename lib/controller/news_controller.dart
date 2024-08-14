import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news/Model/news_model.dart';
import 'package:news/api_helper/api_helper.dart';

class NewsController extends GetxController {
  final Helper helper = Helper();

   NewsModel? newsModel;

  Future<NewsModel?> fromMap()
  async {
    final data = await helper.fetchApiData();
    newsModel = NewsModel.fromJson(data);
    return newsModel;
  }
}

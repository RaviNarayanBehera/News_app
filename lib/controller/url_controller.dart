import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlController extends GetxController
{
  void urlLaunch(String url){
    final Uri uri = Uri.parse(url);
    launchUrl(uri);
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/news_controller.dart';
import '../controller/url_controller.dart';
import 'home_page.dart';

NewsController newsController = Get.put(NewsController());
UrlController urlController = Get.put(UrlController());

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        title: const Text('World News',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500)),
      ),
      body: FutureBuilder(
        future: detailPage,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        color: Colors.grey,
                        image: DecorationImage(
                            image: NetworkImage(
                              (detailList!.articles[selectedIndex].urlToImage ==
                                      ''
                                  ? 'https://images.tv9hindi.com/wp-content/uploads/2024/08/chief-election-commissioner-rajiv-kumar-addresses-press-conference-in-jammu.jpg?w=670&ar=16:9'
                                  : detailList!
                                      .articles[selectedIndex].urlToImage),
                            ),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 350,
                      width: 400,
                      child: Column(
                        children: [
                          Text(
                            detailList!.articles[selectedIndex].source.name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 30),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            detailList!.articles[selectedIndex].title,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              '- ${detailList!.articles[selectedIndex].author}',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Description',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            detailList!.articles[selectedIndex].description,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

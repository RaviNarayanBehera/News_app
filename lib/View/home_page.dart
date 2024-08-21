import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/controller/news_controller.dart';

import '../utils/global.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    // newsController.newsModel;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'World News',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          bottom: const TabBar(
            dividerColor: Colors.grey,
            dividerHeight: 0.5,
            indicatorColor: Colors.blue,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            automaticIndicatorColorAdjustment: true,
            labelColor: Colors.white,
            tabs: [
              Tab(
                text: 'For You',
              ),
              Tab(
                text: 'Automobiles',
              ),
              Tab(
                text: 'Businesses',
              ),
              Tab(
                text: 'Tech & IT ',
              ),
              Tab(
                text: 'Market Insights',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FutureBuilder(
              future: newsController.fetchApiData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: newsController.newsModel!.articles.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          detailPage = newsController.fetchApiData();
                          detailList = newsController.newsModel!;
                          selectedIndex = index;
                          Get.toNamed('/detail');
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                (newsController.newsModel!.articles[index]
                                            .urlToImage ==
                                        '')
                                    ? 'https://img.freepik.com/premium-photo/cardano-blockchain-platform_23-2150411956.jpg'
                                    : newsController
                                        .newsModel!.articles[index].urlToImage,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  newsController
                                      .newsModel!.articles[index].source.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 5),
                                child: Text(
                                  newsController
                                      .newsModel!.articles[index].title,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: newsController.fetchTechApiData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: newsController.techDataModel!.articles.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          detailPage = newsController.fetchTechApiData();
                          detailList = newsController.techDataModel!;
                          selectedIndex = index;
                          Get.toNamed('/detail');
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                (newsController.techDataModel!.articles[index]
                                            .urlToImage ==
                                        '')
                                    ? 'https://img.freepik.com/premium-photo/cardano-blockchain-platform_23-2150411956.jpg'
                                    : newsController.techDataModel!
                                        .articles[index].urlToImage,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  newsController.techDataModel!.articles[index]
                                      .source.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 5),
                                child: Text(
                                  newsController
                                      .techDataModel!.articles[index].title,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: newsController.fetchBusinessApiData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount:
                        newsController.businessDataModel!.articles.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          detailPage = newsController.fetchBusinessApiData();
                          detailList = newsController.businessDataModel!;
                          selectedIndex = index;
                          Get.toNamed('/detail');
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                (newsController.businessDataModel!
                                            .articles[index].urlToImage ==
                                        '')
                                    ? 'https://img.freepik.com/premium-photo/cardano-blockchain-platform_23-2150411956.jpg'
                                    : newsController.businessDataModel!
                                        .articles[index].urlToImage,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  newsController.businessDataModel!
                                      .articles[index].source.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 5),
                                child: Text(
                                  newsController
                                      .businessDataModel!.articles[index].title,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: newsController.fetchTechApiData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: newsController.techDataModel!.articles.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          detailPage = newsController.fetchTechApiData();
                          detailList = newsController.techDataModel!;
                          selectedIndex = index;
                          Get.toNamed('/detail');
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                (newsController.techDataModel!.articles[index]
                                            .urlToImage ==
                                        '')
                                    ? 'https://img.freepik.com/premium-photo/cardano-blockchain-platform_23-2150411956.jpg'
                                    : newsController.techDataModel!
                                        .articles[index].urlToImage,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  newsController.techDataModel!.articles[index]
                                      .source.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 5),
                                child: Text(
                                  newsController
                                      .techDataModel!.articles[index].title,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            FutureBuilder(
              future: newsController.fetchStocksApiData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount:
                        newsController.wallStreetDataModel!.articles.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          detailPage = newsController.fetchStocksApiData();
                          detailList = newsController.wallStreetDataModel!;
                          selectedIndex = index;
                          Get.toNamed('/detail');
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                (newsController.wallStreetDataModel!
                                            .articles[index].urlToImage ==
                                        '')
                                    ? 'https://img.freepik.com/premium-photo/cardano-blockchain-platform_23-2150411956.jpg'
                                    : newsController.wallStreetDataModel!
                                        .articles[index].urlToImage,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  newsController.wallStreetDataModel!
                                      .articles[index].source.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 5),
                                child: Text(
                                  newsController.wallStreetDataModel!
                                      .articles[index].title,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

// api autoMobiles...
// FutureBuilder(
//   future: newsController.fetchTechApiData(),
//   builder: (context, snapshot) {
//     if (snapshot.hasData) {
//       return ListView.builder(
//         itemCount: newsController.teslaDataModel!.articles.length,
//         itemBuilder: (context, index) {
//           return GestureDetector(
//             onTap: () {
//               // detailHelper = fetchData;
//               // detailList = modal;
//               selectedIndex = index;
//               Get.toNamed('/detail');
//             },
//             child: Card(
//               color: Colors.black,
//               child: Column(
//                 children: [
//                   Container(
//                     height: 250,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(15),
//                       image: DecorationImage(
//                         fit: BoxFit.fill,
//                         image: NetworkImage((newsController
//                                     .teslaDataModel!
//                                     .articles[index]
//                                     .urlToImage ==
//                                 '')
//                             ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqTDCEsvutyTcwyKh0R7p4a2JJ8GyjNqi7BA&s'
//                             : newsController.teslaDataModel!
//                                 .articles[index].urlToImage),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Text(
//                       newsController
//                           .teslaDataModel!.articles[index].title,
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 20),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         newsController
//                             .teslaDataModel!.articles[index].author,
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment:
//                         MainAxisAlignment.spaceBetween,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 7),
//                         child: Text(
//                           'Our Sponsor',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 20),
//                         child: Align(
//                           alignment: Alignment.centerRight,
//                           child: Text(
//                             newsController.teslaDataModel!
//                                 .articles[index].source.name,
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Divider(
//                     thickness: 1,
//                     color: Colors.grey,
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       );
//     } else {
//       return const Center(
//         child: CircularProgressIndicator(),
//       );
//     }
//   },
// ),

class NewsModel {
  late String status;
  List<Article> articles = [];

  NewsModel({required this.status, required this.articles});

  factory NewsModel.fromJson(Map m1) {
    return NewsModel(
        status: m1['status'],
        articles:
            (m1['articles'] as List).map((e) => Article.fromJson(e)).toList());
  }
}

class Article {
  late String author, title, description, content, url, urlToImage;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.content,
    required this.url,
    // required this.urlToImage,
  });

  factory Article.fromJson(Map m1) {
    return Article(
      author: m1['author'] ?? 'No Author',
      title: m1['title']?? 'No Title',
      description: m1['description']?? 'No Description',
      content: m1['content']?? 'No Content',
      url: m1['url']?? 'No URL',
      // urlToImage: m1['urlToImage'] ,
    );
  }
}

// class NewsModel {
//   late String status;
//   List<Article> articles;
//
//   NewsModel({required this.status, required this.articles});
//
//   factory NewsModel.fromJson(Map<String, dynamic> json) {
//     return NewsModel(
//       status: json['status'] as String? ?? 'unknown', // Provide a default value
//       articles: (json['articles'] as List<dynamic>?)
//           ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
//           .toList() ??
//           [], // Handle null list
//     );
//   }
// }
//
// class Article {
//   String author;
//   String title;
//   String description;
//   String content;
//   String url;
//   String? urlToImage; // Added urlToImage field as nullable
//
//   Article({
//     required this.author,
//     required this.title,
//     required this.description,
//     required this.content,
//     required this.url,
//     this.urlToImage, // Make urlToImage optional
//   });
//
//   factory Article.fromJson(Map<String, dynamic> json) {
//     return Article(
//       author: json['author'] as String? ?? 'No Author', // Default to 'No Author'
//       title: json['title'] as String? ?? 'No Title', // Default to 'No Title'
//       description: json['description'] as String? ?? 'No Description', // Default to 'No Description'
//       content: json['content'] as String? ?? 'No Content', // Default to 'No Content'
//       url: json['url'] as String? ?? 'No URL', // Default to 'No URL'
//       urlToImage: json['urlToImage'] as String?, // Handle nullable
//     );
//   }
// }

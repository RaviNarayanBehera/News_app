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
  late Source source;

  Article({
    required this.author,
    required this.title,
    required this.description,
    required this.content,
    required this.url,
    required this.urlToImage,
    required this.source
  });

  factory Article.fromJson(Map m1) {
    return Article(
      author: m1['author'] ?? 'No Author',
      title: m1['title']?? 'No Title',
      description: m1['description']?? 'No Description',
      content: m1['content']?? 'No Content',
      url: m1['url']?? '',
      urlToImage: m1['urlToImage'] ?? 'https://img.freepik.com/premium-photo/cardano-blockchain-platform_23-2150411956.jpg',
      source: Source.fromMap(m1['source']),
    );
  }
}

class Source {
  late String name;

  Source({required this.name});

  factory Source.fromMap(Map m1) {
    return Source(name: m1['name'] ?? 'Google');
  }

}
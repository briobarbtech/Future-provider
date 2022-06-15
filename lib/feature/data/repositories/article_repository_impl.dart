import 'package:future_provider/feature/domain/entities/article.dart';
import 'package:future_provider/feature/domain/repositories/article_repository.dart';

class FakeArticleRepository implements ArticleRepository {
  @override
  Future<List<Article>> fetchArticles() {
    return Future.delayed(
      const Duration(milliseconds: 500),
      () {
        return [
          Article("Article 1", 1),
          Article("Article 2", 2),
          Article("Article 3", 3),
          Article("Article 4", 4),
          Article("Article 5", 5),
          Article("Article 6", 6),
          Article("Article 7", 7)
        ];
      },
    );
  }
}

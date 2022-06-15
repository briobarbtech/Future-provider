import 'package:future_provider/feature/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> fetchArticles();
}

import 'package:future_provider/feature/domain/entities/article.dart';
import 'package:future_provider/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final articles = FutureProvider<List<Article>>((ref) async {
  return ref.watch(articleRepository).fetchArticles();
});

import 'package:flutter/material.dart';
import 'package:future_provider/feature/data/repositories/article_repository_impl.dart';
import 'package:future_provider/feature/domain/repositories/article_repository.dart';
import 'package:future_provider/feature/presentation/page/article_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final articleRepository = Provider<ArticleRepository>(
  (ref) => FakeArticleRepository(),
);

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: ArticleList(),
        ),
      ),
    );
  }
}

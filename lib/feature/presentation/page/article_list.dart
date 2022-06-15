import 'package:flutter/material.dart';
import 'package:future_provider/feature/presentation/riverpod/provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ArticleList extends HookConsumerWidget {
  const ArticleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final article = ref.watch(articles);
    return article.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Text('Error: $err'),
        data: (articles) {
          return Flexible(
            child: ListView.builder(
                itemCount: articles.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      title: Text(articles[index].name),
                      subtitle: Row(
                        children: [
                          const Icon(Icons.thumb_up),
                          Text(" ${articles[index].likes}")
                        ],
                      ));
                }),
          );
        });
  }
}

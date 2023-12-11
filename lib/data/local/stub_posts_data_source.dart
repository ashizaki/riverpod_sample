import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/data/models/qiita_post.dart';
import 'package:riverpod_sample/data/remote/posts_data_source.dart';

final stubPostsDataSourceProvider = Provider<StubPostsDataSource>((ref) {
  return StubPostsDataSource();
});

class StubPostsDataSource implements PostsDataSource {
  @override
  Future<List<QiitaPost>> getQiitaPosts(String tag, int perPage) async {
    final content =
        json.decode(await rootBundle.loadString('assets/stub/stub_data.json'))
            as Iterable;
    return content.map((e) => QiitaPost.fromJson(e)).toList();
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/data/models/qiita_post.dart';
import 'package:riverpod_sample/data/models/result.dart';
import 'package:riverpod_sample/data/remote/posts_data_source.dart';

final postsRepositoryProvider = Provider.autoDispose(
  (ref) => PostsRepository(ref.read(postsDataSourceProvider)),
);

class PostsRepository {
  PostsRepository(this._dataSource);

  final PostsDataSource _dataSource;

  Future<Result<List<QiitaPost>>> fetchQiitaPosts(
    String tag,
    int defaultPostCount,
  ) {
    return _dataSource
        .getQiitaPosts(tag, defaultPostCount)
        .then((articles) => Result<List<QiitaPost>>.success(articles))
        .catchError((error) => Result<List<QiitaPost>>.failure(error));
  }
}

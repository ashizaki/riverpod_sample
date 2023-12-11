import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_sample/data/models/qiita_post.dart';
import 'package:riverpod_sample/data/remote/app_dio.dart';

part 'posts_data_source.g.dart';

final postsDataSourceProvider = Provider.autoDispose<PostsDataSource>((ref) {
  return PostsDataSource(
    ref.read(dioProvider),
  );
});

@RestApi(baseUrl: "https://qiita.com/api/v2")
abstract class PostsDataSource {
  factory PostsDataSource(Dio dio, {String baseUrl}) = _PostsDataSource;

  @override
  @GET("/tags/{tag}/items")
  Future<List<QiitaPost>> getQiitaPosts(
    @Path("tag") String tag,
    @Query("per_page") int perPage,
  );
}

import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';
import 'package:simple_fastapi_blog_app/providers/base_provider.dart';

class PostProvider extends BaseProvider {
  Future<Response<List<PostModel>>> getPosts(int limit, {int offset = 0}) {
    return get(
      '/api/posts/?limit=$limit&offset=$offset',
      decoder: (data) {
        List list = data['posts'];
        return List<PostModel>.from(list.map((e) => PostModel.fromJson(e)));
      },
    );
  }
}

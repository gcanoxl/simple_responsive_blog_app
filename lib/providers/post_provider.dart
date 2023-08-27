import 'package:get/get.dart';
import 'package:simple_fastapi_blog_app/models/index.dart';

class PostProvider extends GetConnect {
  Future<Response<List<Post>>> getPosts(int limit, {int offset = 0}) {
    return get(
      'http://127.0.0.1/api/posts/?limit=$limit&offset=$offset',
      decoder: (data) {
        List list = data['posts'];
        return List<Post>.from(list.map((e) => Post.fromJson(e)));
      },
    );
  }
}

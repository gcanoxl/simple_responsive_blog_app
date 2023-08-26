import 'package:get/route_manager.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'home': 'Home',
          'blog': 'Blog',
          'album': 'Album',
          'series': 'Series',
          'contact': 'Contact',
          'about': 'About',
        },
        'zh_CN': {
          'home': "主页",
          'blog': '博客',
          'album': '相册',
          'series': '系列',
          'contact': '联系',
          'about': '关于',
        },
      };
}

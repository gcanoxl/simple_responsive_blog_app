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
          'login': 'Log In',
          'logout': 'Log Out',
          'signup': 'Sign Up',
          'username': 'Username',
          'password': 'Password',
          'recentposts': 'Recent Posts',
          'mostviewedposts': 'Most Viewed Posts',
          'loading': 'Loading...',
          'admin': 'Admin',
          'user': 'User',
          'profile': 'profile',
          'delete': 'Delete',
        },
        'zh_CN': {
          'home': "主页",
          'blog': '博客',
          'album': '相册',
          'series': '系列',
          'contact': '联系',
          'about': '关于',
          'login': '登录',
          'logout': '退出账户',
          'signup': '注册',
          'username': '用户名',
          'password': '密码',
          'recentposts': '最新博文',
          'mostviewedposts': '最热博文',
          'loading': '加载中...',
          'admin': '管理员',
          'user': '普通用户',
          'profile': '个人资料',
          'delete': '删除',
        },
      };
}

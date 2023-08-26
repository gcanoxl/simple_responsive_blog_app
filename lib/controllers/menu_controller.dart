import 'package:get/get.dart';

class WebMenuController extends GetxController {
  final RxInt _selectedIndex = 0.obs;

  List<String> get menuItems => [
        'home'.tr,
        'blog'.tr,
        'album'.tr,
        'series'.tr,
        'contact'.tr,
        'about'.tr,
      ];

  int get selectedIndex => _selectedIndex.value;

  void setMenuIndex(int index) {
    _selectedIndex.value = index;
  }
}

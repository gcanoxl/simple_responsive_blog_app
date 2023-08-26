import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants.dart';
import '../controllers/menu_controller.dart';

// ignore: use_key_in_widget_constructors
class WebMenu extends StatelessWidget {
  final WebMenuController _controller = Get.put(WebMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          _controller.menuItems.length,
          (index) => WebMenuItem(
            title: _controller.menuItems[index],
            press: () {
              _controller.setMenuIndex(index);
            },
            isActive: _controller.selectedIndex == index,
          ),
        ),
      ),
    );
  }
}

class WebMenuItem extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final bool isActive;
  const WebMenuItem({
    super.key,
    required this.title,
    required this.press,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: press,
        hoverColor:
            isActive ? Colors.transparent : Theme.of(context).hoverColor,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: double.infinity,
          decoration: BoxDecoration(
            color: isActive ? Theme.of(context).hoverColor : Colors.transparent,
          ),
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}

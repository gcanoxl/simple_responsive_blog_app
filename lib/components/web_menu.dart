import 'package:flutter/material.dart';

import '../constants.dart';

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
              fontWeight: isActive ? FontWeight.w900 : FontWeight.w100,
              fontSize: 18,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}

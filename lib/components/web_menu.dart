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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding / 2,
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}

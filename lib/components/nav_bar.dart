import 'package:flutter/material.dart';

import '../constants.dart';
import 'avatar_icon.dart';
import 'nav_search_bar.dart';
import 'web_menu.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Theme.of(context).colorScheme.inversePrimary,
      child: Container(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        height: 60,
        child: Row(
          children: [
            const Spacer(),
            const AvatarIcon(),
            const Spacer(),
            WebMenu(),
            const Spacer(),
            const NavSearchBar(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

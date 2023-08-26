import 'package:flutter/material.dart';

import '../constants.dart';

class AvatarIcon extends StatelessWidget {
  const AvatarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding / 2.5),
      child: Image.asset("assets/imgs/avatar.png"),
    );
  }
}

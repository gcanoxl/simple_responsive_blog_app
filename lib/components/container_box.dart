import 'package:flutter/material.dart';
import 'package:simple_fastapi_blog_app/constants.dart';

class ContainerBox extends StatelessWidget {
  const ContainerBox({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        padding: const EdgeInsets.all(kDefaultPadding),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary.withOpacity(0.1),
        ),
        child: child);
  }
}

import 'package:flutter/material.dart';
import 'package:simple_fastapi_blog_app/components/my_test_field.dart';
import 'package:simple_fastapi_blog_app/constants.dart';

class NavSearchBar extends StatelessWidget {
  const NavSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 1.5),
      width: 180,
      child: const Material(
        type: MaterialType.transparency,
        child: SizedBox(
          child: MyTextField(
            suffixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}

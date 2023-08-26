import 'package:flutter/material.dart';

import '../constants.dart';

class NavSearchBar extends StatelessWidget {
  const NavSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 1.5),
      width: 180,
      child: Material(
        type: MaterialType.transparency,
        child: TextField(
          textAlignVertical: TextAlignVertical.top,
          cursorColor: Theme.of(context).colorScheme.inversePrimary,
          cursorHeight: 20,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            suffixIconColor: Theme.of(context).colorScheme.inversePrimary,
            fillColor: Colors.white,
            filled: true,
            // border: InputBorder.none,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

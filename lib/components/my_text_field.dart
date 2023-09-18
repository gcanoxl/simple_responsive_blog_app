import 'package:flutter/material.dart';
import 'package:simple_fastapi_blog_app/constants.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.obscure = false,
    this.hintText = "",
    this.contentsPadding,
  });

  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool obscure;
  final String hintText;

  final EdgeInsetsGeometry? contentsPadding;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.top,
      obscureText: obscure,
      cursorColor: Theme.of(context).colorScheme.inversePrimary,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),

        hintText: hintText,
        suffixIcon: IconButton(
          icon: suffixIcon ?? const Icon(Icons.login, size: 0),
          onPressed: () {},
        ),
        suffixIconColor: Theme.of(context).colorScheme.inversePrimary,
        prefixIcon: prefixIcon == null
            ? null
            : IconButton(onPressed: () {}, icon: prefixIcon!),
        prefixIconColor: Theme.of(context).colorScheme.inversePrimary,
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
    );
  }
}

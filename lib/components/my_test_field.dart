import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.prefixIcon,
    this.suffixIcon,
    this.obscure = false,
    this.hintText = "",
  });

  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool obscure;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.top,
      obscureText: obscure,
      cursorColor: Theme.of(context).colorScheme.inversePrimary,
      cursorHeight: 20,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: IconButton(
          icon: suffixIcon ?? const Icon(Icons.login, size: 0),
          onPressed: () {},
        ),
        suffixIconColor: Theme.of(context).colorScheme.inversePrimary,
        prefixIcon: IconButton(
          onPressed: () {},
          icon: prefixIcon ?? const Icon(Icons.login, size: 0),
        ),
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

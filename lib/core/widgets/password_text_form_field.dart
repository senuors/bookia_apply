import 'package:flutter/material.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({
    super.key,
    required this.controller,
    this.validator,
    required this.hintText,
    this.suffixIcon,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final Widget? suffixIcon;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool isobsecure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isobsecure,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              isobsecure = !isobsecure;
            });
          },
          child: widget.suffixIcon,
        ),
      ),
      validator: widget.validator,
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final String helpText;
  final IconData pIcon;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const CustomTextFieldWidget({
    super.key,
    required this.helpText,
    required this.pIcon,
    this.isPassword = false,
    required this.controller,
    this.validator,
  });

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          obscureText: widget.isPassword && !_isVisible,
          validator: widget.validator,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(widget.pIcon),
            hintText: widget.helpText,
            suffixIcon: Visibility(
              visible: widget.isPassword,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
                icon: Icon(
                  _isVisible ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    this.placeholder,
    this.obscureText,
    this.controller,
    this.validator,
    this.backgroundColor,
    this.borderRadius,
  }) : super(key: key);

  final String? placeholder;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Color? backgroundColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 8),
        color: backgroundColor,
      ),
      child: CupertinoTextFormFieldRow(
        placeholder: placeholder,
        obscureText: obscureText ?? false,
        controller: controller,
        validator: validator,
      ),
    );
  }
}

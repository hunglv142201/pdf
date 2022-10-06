import 'package:flutter/material.dart';

class TextInputFormField extends StatelessWidget {
  const TextInputFormField(this.textEditingController, {Key? key}) : super(key: key);

  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = textEditingController ?? TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Center(
        child: TextField(controller: controller),
      ),
    );
  }
}

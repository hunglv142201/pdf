import 'package:flutter/material.dart';

class LongTextInputFormField extends StatelessWidget {
  const LongTextInputFormField(this.textEditingController, {Key? key}) : super(key: key);

  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = textEditingController ?? TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Center(
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.multiline,
          minLines: 1,
          maxLines: 6,
        ),
      ),
    );
  }
}

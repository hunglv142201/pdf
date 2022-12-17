import 'package:flutter/material.dart';

class CheckboxInputFormField extends StatefulWidget {
  const CheckboxInputFormField(this.textEditingController, this.params, {Key? key}) : super(key: key);

  final TextEditingController? textEditingController;
  final Map<String, dynamic>? params;

  @override
  State<CheckboxInputFormField> createState() => _CheckboxInputFormFieldState();
}

class _CheckboxInputFormFieldState extends State<CheckboxInputFormField> {
  String _value = '';

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = widget.textEditingController ?? TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(children: [
        Checkbox(
          value: _value == '1',
          onChanged: (bool? value) {
            if (value == true) {
              controller.text = '1';
              setState(() {
                _value = '1';
              });
            } else {
              controller.text = '';
              setState(() {
                _value = '';
              });
            }
          },
        ),
        Text(widget.params?['1']),
      ]),
    );
  }
}

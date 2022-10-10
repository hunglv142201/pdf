import 'package:flutter/material.dart';

class OptionInputFormField extends StatefulWidget {
  const OptionInputFormField(this.textEditingController, this.params, {Key? key}) : super(key: key);

  final TextEditingController? textEditingController;
  final Map<String, dynamic>? params;

  @override
  State<OptionInputFormField> createState() => _OptionInputFormFieldState();
}

class _OptionInputFormFieldState extends State<OptionInputFormField> {
  _Value _value = _Value.yes;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = widget.textEditingController ?? TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.params?['1']),
            leading: Radio<_Value>(
              value: _Value.yes,
              groupValue: _value,
              onChanged: (_Value? value) {
                setState(() {
                  _value = value ?? _Value.no;
                  controller.text = '1';
                });
              },
            ),
          ),
          ListTile(
            title: Text(widget.params?['2']),
            leading: Radio<_Value>(
              value: _Value.no,
              groupValue: _value,
              onChanged: (_Value? value) {
                setState(() {
                  _value = value ?? _Value.no;
                  controller.text = '2';
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

enum _Value { yes, no }

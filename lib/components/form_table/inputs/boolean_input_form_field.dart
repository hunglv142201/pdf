import 'package:flutter/material.dart';

class BooleanInputFormField extends StatefulWidget {
  const BooleanInputFormField(this.textEditingController, this.params, {Key? key}) : super(key: key);

  final TextEditingController? textEditingController;
  final Map<String, dynamic>? params;

  @override
  State<BooleanInputFormField> createState() => _BooleanInputFormFieldState();
}

class _BooleanInputFormFieldState extends State<BooleanInputFormField> {
  _Value _value = _Value.yes;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = widget.textEditingController ?? TextEditingController();
    controller.text = '1';

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.params?['1'] ?? '有'),
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
            title: Text(widget.params?['2'] ?? '無'),
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

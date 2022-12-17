import 'package:flutter/material.dart';

class ThreeBooleanInputFormField extends StatefulWidget {
  const ThreeBooleanInputFormField(this.textEditingController, this.params, {Key? key}) : super(key: key);

  final TextEditingController? textEditingController;
  final Map<String, dynamic>? params;

  @override
  State<ThreeBooleanInputFormField> createState() => _ThreeBooleanInputFormFieldState();
}

class _ThreeBooleanInputFormFieldState extends State<ThreeBooleanInputFormField> {
  _Value _value = _Value.one;

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
              value: _Value.one,
              groupValue: _value,
              onChanged: (_Value? value) {
                setState(() {
                  _value = value ?? _Value.one;
                  controller.text = '1';
                });
              },
            ),
          ),
          ListTile(
            title: Text(widget.params?['2'] ?? '無'),
            leading: Radio<_Value>(
              value: _Value.two,
              groupValue: _value,
              onChanged: (_Value? value) {
                setState(() {
                  _value = value ?? _Value.two;
                  controller.text = '2';
                });
              },
            ),
          ),
          ListTile(
            title: Text(widget.params?['3'] ?? '無'),
            leading: Radio<_Value>(
              value: _Value.three,
              groupValue: _value,
              onChanged: (_Value? value) {
                setState(() {
                  _value = value ?? _Value.three;
                  controller.text = '3';
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

enum _Value { one, two, three }

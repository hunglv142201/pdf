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
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = widget.textEditingController ?? TextEditingController();
    if (widget.params!.length == 2) {
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
    } else {
      return Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 380, 0),
        child: Checkbox(
          value: rememberMe,
          onChanged: (value) {
            _onRememberMeChanged(rememberMe);
            controller.text = rememberMe.toString();
          },
        ),
      );
    }
  }

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (newValue) {
          rememberMe = false;
        } else {
          rememberMe = true;
        }
      });
}

enum _Value { yes, no }

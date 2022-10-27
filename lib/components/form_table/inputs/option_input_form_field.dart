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
  _Values _value3 = _Values.option1;
  _Values _value6 = _Values.option7;
  _Values _value7 = _Values.option8;
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
                value: _Value.no,
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
                value: _Value.yes,
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
    } else if (widget.params!.length == 3) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            ListTile(
              title: Text(widget.params?['1']),
              leading: Radio<_Values>(
                value: _Values.option1,
                groupValue: _value3,
                onChanged: (_Values? value) {
                  setState(() {
                    _value3 = value ?? _Values.option1;
                    controller.text = '1';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['2']),
              leading: Radio<_Values>(
                value: _Values.option2,
                groupValue: _value3,
                onChanged: (_Values? value) {
                  setState(() {
                    _value3 = value ?? _Values.option2;
                    controller.text = '2';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['3']),
              leading: Radio<_Values>(
                value: _Values.option3,
                groupValue: _value3,
                onChanged: (_Values? value) {
                  setState(() {
                    _value3 = value ?? _Values.option3;
                    controller.text = '3';
                  });
                },
              ),
            ),
          ],
        ),
      );
    } else if (widget.params!.length == 6) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            ListTile(
              title: Text(widget.params?['1']),
              leading: Radio<_Values>(
                value: _Values.option1,
                groupValue: _value6,
                onChanged: (_Values? value) {
                  setState(() {
                    _value6 = value ?? _Values.option1;
                    controller.text = '1';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['2']),
              leading: Radio<_Values>(
                value: _Values.option2,
                groupValue: _value6,
                onChanged: (_Values? value) {
                  setState(() {
                    _value6 = value ?? _Values.option2;
                    controller.text = '2';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['3']),
              leading: Radio<_Values>(
                value: _Values.option3,
                groupValue: _value6,
                onChanged: (_Values? value) {
                  setState(() {
                    _value6 = value ?? _Values.option3;
                    controller.text = '3';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['4']),
              leading: Radio<_Values>(
                value: _Values.option4,
                groupValue: _value6,
                onChanged: (_Values? value) {
                  setState(() {
                    _value6 = value ?? _Values.option4;
                    controller.text = '4';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['5']),
              leading: Radio<_Values>(
                value: _Values.option5,
                groupValue: _value6,
                onChanged: (_Values? value) {
                  setState(() {
                    _value6 = value ?? _Values.option5;
                    controller.text = '5';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['6']),
              leading: Radio<_Values>(
                value: _Values.option6,
                groupValue: _value6,
                onChanged: (_Values? value) {
                  setState(() {
                    _value6 = value ?? _Values.option6;
                    controller.text = '6';
                  });
                },
              ),
            ),
          ],
        ),
      );
    } else if (widget.params!.length == 7) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            ListTile(
              title: Text(widget.params?['1']),
              leading: Radio<_Values>(
                value: _Values.option1,
                groupValue: _value7,
                onChanged: (_Values? value) {
                  setState(() {
                    _value7 = value ?? _Values.option1;
                    controller.text = '1';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['2']),
              leading: Radio<_Values>(
                value: _Values.option2,
                groupValue: _value7,
                onChanged: (_Values? value) {
                  setState(() {
                    _value7 = value ?? _Values.option2;
                    controller.text = '2';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['3']),
              leading: Radio<_Values>(
                value: _Values.option3,
                groupValue: _value7,
                onChanged: (_Values? value) {
                  setState(() {
                    _value7 = value ?? _Values.option3;
                    controller.text = '3';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['4']),
              leading: Radio<_Values>(
                value: _Values.option4,
                groupValue: _value7,
                onChanged: (_Values? value) {
                  setState(() {
                    _value7 = value ?? _Values.option4;
                    controller.text = '4';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['5']),
              leading: Radio<_Values>(
                value: _Values.option5,
                groupValue: _value7,
                onChanged: (_Values? value) {
                  setState(() {
                    _value7 = value ?? _Values.option5;
                    controller.text = '5';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['6']),
              leading: Radio<_Values>(
                value: _Values.option6,
                groupValue: _value7,
                onChanged: (_Values? value) {
                  setState(() {
                    _value7 = value ?? _Values.option6;
                    controller.text = '6';
                  });
                },
              ),
            ),
            ListTile(
              title: Text(widget.params?['7']),
              leading: Radio<_Values>(
                value: _Values.option7,
                groupValue: _value7,
                onChanged: (_Values? value) {
                  setState(() {
                    _value7 = value ?? _Values.option7;
                    controller.text = '7';
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
enum _Values { option1, option2, option3, option4, option5, option6, option7, option8 }

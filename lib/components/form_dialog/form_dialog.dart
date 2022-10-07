import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';

class FormDialog extends StatefulWidget {
  const FormDialog({Key? key, required this.title, required this.tableProps, required this.callback}) : super(key: key);

  final String title;
  final List<List<TableRowProps>> tableProps;
  final void Function(List<List<String>> inputs) callback;

  @override
  State<FormDialog> createState() => _FormDialogState();
}

class _FormDialogState extends State<FormDialog> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title + ' - Page ' + (_currentIndex + 1).toString()),
      content: SingleChildScrollView(
        child: FormTable(widget.tableProps[_currentIndex]),
      ),
      actions: [
        TextButton(
          onPressed: () => _currentIndex == 0 ? _handleCancel(context) : _handleBack(),
          child: _currentIndex == 0 ? const Text('Cancel') : const Text('Back'),
        ),
        ElevatedButton(
          onPressed: () => _currentIndex == widget.tableProps.length - 1 ? _handleConfirm() : _handleNext(),
          child: _currentIndex == widget.tableProps.length - 1 ? const Text('Confirm') : const Text('Next'),
        ),
      ],
    );
  }

  void _handleCancel(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _handleConfirm() {
    List<List<String>> values = widget.tableProps.map((m1) => m1.map((m2) => m2.controller.text).toList()).toList();
    widget.callback(values);
  }

  void _handleNext() {
    setState(() {
      _currentIndex += 1;
    });
  }

  void _handleBack() {
    setState(() {
      _currentIndex -= 1;
    });
  }
}

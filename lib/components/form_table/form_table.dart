import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_table/inputs/boolean_input_form_field.dart';
import 'package:pdf_creator/components/form_table/inputs/date_input_form_field.dart';
import 'package:pdf_creator/components/form_table/inputs/long_text_input_form_field.dart';

import 'inputs/text_input_form_field.dart';

class FormTable extends StatelessWidget {
  const FormTable(this.rowsProps, {Key? key}) : super(key: key);

  final List<TableRowProps> rowsProps;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const {0: FixedColumnWidth(256), 1: FixedColumnWidth(512)},
      children: rowsProps.map(_buildTableRow).toList(),
    );
  }

  static TableRow _buildTableRow(TableRowProps props) {
    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.top,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
            child: Text(props.title),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: _buildFormFieldFromInputType(props.inputType, props.controller),
        ),
      ],
    );
  }

  static Widget _buildFormFieldFromInputType(InputType inputType, TextEditingController controller) {
    switch (inputType) {
      case InputType.text:
        return TextInputFormField(controller);
      case InputType.longText:
        return LongTextInputFormField(controller);
      case InputType.date:
        return DateInputFormField(controller);
      case InputType.boolean:
        return BooleanInputFormField(controller);
      default:
        return Container();
    }
  }
}

class TableRowProps {
  TableRowProps(this.title, this.inputType) {
    controller = TextEditingController();
  }

  String title;
  InputType inputType;
  late TextEditingController controller;
}

enum InputType { text, longText, date, boolean }

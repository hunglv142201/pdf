import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_719/pdf_template_719.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog719 extends StatelessWidget {
  PdfFormDialog719({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('input1_1', InputType.text),
      TableRowProps('input1_2', InputType.boolean),
      TableRowProps('input1_3', InputType.text),
      TableRowProps('input1_4', InputType.longText),
      TableRowProps('input1_5', InputType.longText),
      TableRowProps('input1_6', InputType.boolean),
      TableRowProps('input1_7', InputType.text),
      TableRowProps('input1_8', InputType.option, params: {'1': '男', '2': '無'}),
      TableRowProps('input1_9', InputType.text),
    ],
    [
      TableRowProps('input2_1', InputType.boolean),
      TableRowProps('input2_2', InputType.text),
      TableRowProps('input2_3', InputType.boolean),
      TableRowProps('input2_4', InputType.text),
      TableRowProps('input2_5', InputType.text),
      TableRowProps('input2_6', InputType.text),
      TableRowProps('input2_7', InputType.text),
      TableRowProps('input2_8', InputType.text),
      TableRowProps('input2_9', InputType.text),
      TableRowProps('input2_10', InputType.text),
      TableRowProps('input2_11', InputType.text),
      TableRowProps('input2_12', InputType.text),
      TableRowProps('input2_13', InputType.text),
      TableRowProps('input2_14', InputType.longText),
      TableRowProps('input2_15', InputType.longText),
      TableRowProps('input2_16', InputType.date),
      TableRowProps('input2_17', InputType.text),
      TableRowProps('input2_18', InputType.text),
      TableRowProps('input2_19', InputType.text),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate719 template = PdfTemplate719(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(title: '参考様式第１－９号', tableProps: _tableProps, callback: _callback);
  }
}

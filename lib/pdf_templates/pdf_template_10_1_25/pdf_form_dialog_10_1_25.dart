import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_10_1_25/pdf_template_10_1_25.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog10125 extends StatelessWidget {
  PdfFormDialog10125({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('input1_1', InputType.text),
      TableRowProps('input1_2', InputType.text),
      TableRowProps('input1_3', InputType.text),
      TableRowProps('(yyyy/mm/dd)_1', InputType.date),
      TableRowProps('input1_5', InputType.option, params: {'1': '該当', '2': '非該当'}),
      TableRowProps('input1_6', InputType.text),
      TableRowProps('(yyyy/mm/dd)_2', InputType.date),
      TableRowProps('(yyyy/mm/dd)_3', InputType.date),
      TableRowProps('(yyyy/mm/dd)_4', InputType.date),
      TableRowProps('input1_10', InputType.text),
      TableRowProps('input1_11', InputType.text),
      TableRowProps('input1_12', InputType.text),
      // TableRowProps('input1_6', InputType.boolean),
      // TableRowProps('input1_7', InputType.text),
      // TableRowProps('input1_8', InputType.option, params: {'1': '男', '2': '無'}),
      // TableRowProps('input1_9', InputType.text),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      Test10125PdfTemplate template = Test10125PdfTemplate(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(title: '参考様式第１－９号', tableProps: _tableProps, callback: _callback);
  }
}

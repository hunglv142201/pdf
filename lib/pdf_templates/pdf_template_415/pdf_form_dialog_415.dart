import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_415/pdf_template_415.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog415 extends StatelessWidget {
  PdfFormDialog415({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('input1_0', InputType.text),
      TableRowProps('input1_1', InputType.text),
      TableRowProps('input1_2', InputType.date),
      TableRowProps('input1_3', InputType.text),
      TableRowProps('input1_4', InputType.text),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate415 template = PdfTemplate415(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(
        title: '参考様式第１－５号', tableProps: _tableProps, callback: _callback);
  }
}

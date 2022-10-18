import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_2284/pdf_tempalate_2284.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog2284 extends StatelessWidget {
  PdfFormDialog2284({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('Input 1', InputType.date),
      TableRowProps('Input 2', InputType.text),
      TableRowProps('Input 3', InputType.text),
      TableRowProps('Input 4', InputType.text),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate2284 template = PdfTemplate2284(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    // TODO: Update title here
    return FormDialog(title: '参考様式第1-4号', tableProps: _tableProps, callback: _callback);
  }
}

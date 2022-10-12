import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_128/pdf_template_128.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog128 extends StatelessWidget {
  PdfFormDialog128({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('出国年月日 (yyyy/mm/dd)', InputType.date),
      TableRowProps('入国年月日 (yyyy/mm/dd)', InputType.date),
      TableRowProps('作成年月日 (yyyy/mm/dd)', InputType.date),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate128 template = PdfTemplate128(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(title: '参考様式第１－２８号', tableProps: _tableProps, callback: _callback);
  }
}

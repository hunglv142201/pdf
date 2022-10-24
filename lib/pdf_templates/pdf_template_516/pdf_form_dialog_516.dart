import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_516/pdf_template_516.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog516 extends StatelessWidget {
  PdfFormDialog516({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      // TableRowProps('input1_0', InputType.date), // index 0
    ],
    [
      // TableRowProps('input2_1', InputType.longText),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate516 template = PdfTemplate516();
      // PdfTemplate516 template = PdfTemplate516(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(title: '参考様式第1-6号', tableProps: _tableProps, callback: _callback);
  }
}

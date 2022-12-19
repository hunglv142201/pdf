import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_14/pdf_template_14.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog14 extends StatelessWidget {
  PdfFormDialog14({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate14 template = PdfTemplate14(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(title: 'Pdf Form Dialog 14', tableProps: _tableProps, callback: _callback);
  }
}

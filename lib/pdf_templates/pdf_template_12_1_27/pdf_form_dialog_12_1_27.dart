import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_12_1_27/pdf_template_12_1_27.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog12 extends StatelessWidget {
  PdfFormDialog12({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('作成年月日 (yyyy/mm/dd)', InputType.date),
      TableRowProps('特定技能所属機関の名称', InputType.text),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      String year = inputs[0][0].split('/')[0];
      String month = inputs[0][0].split('/')[1];
      String day = inputs[0][0].split('/')[2];
      Test12PdfTemplate template = Test12PdfTemplate(year, month, day, inputs[0][1]);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(title: '参考様式第１－２７号', tableProps: _tableProps, callback: _callback);
  }
}

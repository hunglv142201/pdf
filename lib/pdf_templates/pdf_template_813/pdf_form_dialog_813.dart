import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_813/pdf_template_813.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog813 extends StatelessWidget {
  PdfFormDialog813({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('input1_0 氏 名', InputType.text),
      TableRowProps('input1_1 氏 名 (....)', InputType.text),
      TableRowProps('input1_2 Date of Birth', InputType.date),
      TableRowProps('input1_3 Gender', InputType.option,
          params: {'1': '男', '2': '女'}),
      TableRowProps('input1_4 Age', InputType.text),
      TableRowProps('input1_5 検 診 年 月 日', InputType.date),
      TableRowProps('input1_6 作 成 年 月 日', InputType.date)
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate813 template = PdfTemplate813(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(
        title: '参考様式第 1 - 3 号', tableProps: _tableProps, callback: _callback);
  }
}

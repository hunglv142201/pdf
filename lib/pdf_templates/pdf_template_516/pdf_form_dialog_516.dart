import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_516/pdf_template_516.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog516 extends StatelessWidget {
  PdfFormDialog516({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      // ROW 1 ________________________殿
      TableRowProps('input1_0', InputType.date), // index 0
      TableRowProps('input1_1', InputType.text), // index 1
      TableRowProps('input1_2', InputType.text), // index 2
      TableRowProps('input1_3', InputType.text), // index 3
      TableRowProps('input1_4', InputType.text), // index 4
      TableRowProps('input1_5', InputType.text), // index 5
      TableRowProps('input1_6', InputType.text), // index 6
      // ROW 2 Ⅰ．雇用契約期間
      TableRowProps('input1_7', InputType.date), // index 7
      TableRowProps('input1_8', InputType.date), // index 8
      TableRowProps('input1_9', InputType.date), // index 9

      TableRowProps('契約の更新の有無', InputType.option,
          params: {'1': '自動的に更新する', '2': '更新する場合があり得る', '3': '契約の更新はしない'}), // index 10
      TableRowProps('input1_11', InputType.option, params: {
        '1': '契約期間満了時の業務量',
        '2': '労働者の勤務成績，態度',
        '3': '労働者 の業務を遂行する能力',
        '4': '会社の経営状況',
        '5': '従事している業務の進捗状況 ',
        '6': 'その他',
      }), // index 11
      TableRowProps('input1_12', InputType.text), // index 12
      TableRowProps('input1_13', InputType.option,
          params: {'1': '直接雇用（以下に記入） ', '2': '派遣雇用（別紙「就業条件明示書」に記入）'}), // index 13
      TableRowProps('input1_14', InputType.text), // index 14
      TableRowProps('input1_15', InputType.text), // index 15
      TableRowProps('input1_16', InputType.text), // index 16
      // ROW 3 Ⅱ．就業の場所
      TableRowProps('input1_17', InputType.text), // index 17
      TableRowProps('input1_18', InputType.text), // index 18
      //    (1)
      TableRowProps('input1_19', InputType.option, params: {'1': '変形労働時間制', '2': '交代制'}), // index 19
      TableRowProps('input1_20', InputType.text), // index 20

      // ROW 4 Ⅲ．従事すべき業務の内容

      // ROW 5 Ⅳ．労働時間等

      // ROW 6 Ⅴ．休日
    ],
    [
      // TableRowProps('input2_1', InputType.longText),
    ],
    [
      // TableRowProps('input2_1', InputType.longText),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      // PdfTemplate516 template = PdfTemplate516();
      PdfTemplate516 template = PdfTemplate516(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(title: '参考様式第1-6号', tableProps: _tableProps, callback: _callback);
  }
}

import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_516/pdf_template_516.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog516 extends StatelessWidget {
  PdfFormDialog516({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      // ROW 0 ________________________殿
      TableRowProps('input1_0', InputType.date), // index 0
      TableRowProps('input1_1', InputType.text), // index 1
      TableRowProps('input1_2', InputType.text), // index 2
      TableRowProps('input1_3', InputType.text), // index 3
      TableRowProps('input1_4', InputType.text), // index 4
      TableRowProps('input1_5', InputType.text), // index 5
      TableRowProps('input1_6', InputType.text), // index 6
      // ROW 1 Ⅰ．雇用契約期間
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
      // ROW 2 Ⅱ．就業の場所
      TableRowProps('input1_13', InputType.option,
          params: {'1': '直接雇用（以下に記入） ', '2': '派遣雇用（別紙「就業条件明示書」に記入）'}), // index 13
      TableRowProps('input1_14', InputType.text), // index 14
      TableRowProps('input1_15', InputType.text), // index 15
      TableRowProps('input1_16', InputType.text), // index 16
      // ROW 3 Ⅲ．従事すべき業務の内容
      TableRowProps('input1_17', InputType.text), // index 17
      TableRowProps('input1_18', InputType.text), // index 18
      // ROW 4 Ⅳ．労働時間等
      //    1.(1)
      TableRowProps('input1_19', InputType.option, params: {'1': '変形労働時間制', '2': '交代制'}), // index 19
      TableRowProps('input1_20', InputType.text), // index 20
      //    1.(2)
      TableRowProps('input1_21', InputType.date), // index 21
      TableRowProps('input1_22', InputType.date), // index 22
      TableRowProps('input1_23', InputType.date), // index 23
      //    2
      TableRowProps('input1_24', InputType.text), // index 24
      //    3
      TableRowProps('input1_25', InputType.text), // index 25
      TableRowProps('input1_26', InputType.text), // index 26
      TableRowProps('input1_27', InputType.text), // index 27
      TableRowProps('input1_28', InputType.text), // index 28
      TableRowProps('input1_29', InputType.text), // index 29
      TableRowProps('input1_30', InputType.text), // index 30
      //    4
      TableRowProps('input1_31', InputType.text), // index 31
      TableRowProps('input1_32', InputType.text), // index 32
      TableRowProps('input1_33', InputType.text), // index 33
      //    5
      TableRowProps('input1_34', InputType.boolean), // index 34
      // ROW 5 Ⅴ．休日
      TableRowProps('input1_35', InputType.option, params: {'1': '毎週', '2': '日本の国民の祝日', '3': 'その他'}), // index 35
      TableRowProps('input1_36', InputType.text), // index 36
      TableRowProps('input1_37', InputType.text), // index 37
      TableRowProps('input1_38', InputType.text), // index 38
    ],
    [
      // ROW 5 Ⅴ．休日
      TableRowProps('input2_0', InputType.option, params: {'1': '週・月当たり ', '2': 'その他'}), // index 0
      TableRowProps('input2_1', InputType.text),
      TableRowProps('input2_2', InputType.text),
      // ROW 6 Ⅵ．休暇
      // 1
      TableRowProps('input2_3', InputType.text),
      TableRowProps('input2_4', InputType.boolean),
      TableRowProps('input2_5', InputType.text),
      TableRowProps('input2_6', InputType.text),
      // 2
      TableRowProps('input2_7', InputType.text),
      TableRowProps('input2_8', InputType.text),
      // ROW 7 Ⅶ．賃金
      // 1.
      TableRowProps('input2_9', InputType.option, params: {'1': '月給', '2': '日給', '3': '時間給'}), // index 0
      TableRowProps('input2_10', InputType.text),
      TableRowProps('input2_11', InputType.text),
      TableRowProps('input2_12', InputType.text),
      // 2.
      TableRowProps('input2_13', InputType.text),
      TableRowProps('input2_14', InputType.text),
      TableRowProps('input2_15', InputType.text),
      // 3. 1
      TableRowProps('input2_16', InputType.text),
      TableRowProps('input2_17', InputType.text),
      TableRowProps('input2_18', InputType.text),
      // 3. 2
      TableRowProps('input2_19', InputType.text),
      TableRowProps('input2_20', InputType.text),
      // 3. 3
      TableRowProps('input2_21', InputType.text),
      // 4
      TableRowProps('input2_22', InputType.option, params: {'1': '毎月', '2': '毎月'}), // index 0
      TableRowProps('input2_23', InputType.text),
      TableRowProps('input2_24', InputType.text),
      // 5
      TableRowProps('input2_26', InputType.option, params: {'1': '毎月', '2': '毎月'}), // index 0
      TableRowProps('input2_27', InputType.text),
      TableRowProps('input2_28', InputType.text),
      // 6
      TableRowProps('input2_29', InputType.option, params: {'1': '口座振込', '2': '通貨払'}), // index 0
      // 7
      TableRowProps('input2_30', InputType.boolean),
      // 8
      TableRowProps('input2_31', InputType.boolean),
      TableRowProps('input2_32', InputType.text),
      // 9
      TableRowProps('input2_33', InputType.boolean),
      TableRowProps('input2_34', InputType.text),
      // 10
      TableRowProps('input2_35', InputType.boolean),
      TableRowProps('input2_36', InputType.text),
      // 11
      TableRowProps('input2_37', InputType.boolean),
      TableRowProps('input2_38', InputType.text),
      // ROW 8 Ⅷ．退職に関する事項
      // 1.
      TableRowProps('input2_39', InputType.text),
      // ROW 9 Ⅸ．その他
      TableRowProps('input2_40', InputType.option, params: {
        '1': '厚生年金',
        '2': '健康保険',
        '3': '雇用保険',
        '4': '労災保険',
        '5': '国民年金 ',
        '6': '国民健康保険',
        '7': 'その他',
      }),
      TableRowProps('input2_41', InputType.text),
      TableRowProps('input2_42', InputType.text),
      TableRowProps('input2_43', InputType.text),
      TableRowProps('input2_44', InputType.text),
      TableRowProps('input2_45', InputType.text),
      TableRowProps('input2_46', InputType.text),
    ],
    [
      // 1
      TableRowProps('input3_0', InputType.option, params: {'1': '月給', '2': '日給', '3': '時間給'}), // index 0
      TableRowProps('input3_1', InputType.text), // index 1
      TableRowProps('input3_2', InputType.text), // index 2
      TableRowProps('input3_3', InputType.text), // index 3

      TableRowProps('input3_4', InputType.text), // index 4
      TableRowProps('input3_5', InputType.text), // index 5
      // 2.a
      TableRowProps('input3_6', InputType.text), // index 6
      TableRowProps('input3_7', InputType.text), // index 7
      TableRowProps('input3_8', InputType.text), // index 8
      // 2.b
      TableRowProps('input3_9', InputType.text), // index 9
      TableRowProps('input3_10', InputType.text), // index 10
      TableRowProps('input3_11', InputType.text), // index 11
      // 2.c
      TableRowProps('input3_12', InputType.text), // index 12
      TableRowProps('input3_13', InputType.text), // index 13
      TableRowProps('input3_14', InputType.text), // index 14
      // 2.d
      TableRowProps('input3_15', InputType.text), // index 15
      TableRowProps('input3_16', InputType.text), // index 16
      TableRowProps('input3_17', InputType.text), // index 17
      // 3
      TableRowProps('input3_18', InputType.text), // index 18
      // 4
      TableRowProps('input3_19', InputType.text), // index 19
      TableRowProps('input3_20', InputType.text), // index 20
      TableRowProps('input3_21', InputType.text), // index 21
      TableRowProps('input3_22', InputType.text), // index 22
      TableRowProps('input3_23', InputType.text), // index 23
      TableRowProps('input3_24', InputType.text), // index 24

      TableRowProps('input3_25', InputType.text), // index 25
      TableRowProps('input3_26', InputType.text), // index 26

      TableRowProps('input3_27', InputType.text), // index 27
      TableRowProps('input3_28', InputType.text), // index 28

      TableRowProps('input3_29', InputType.text), // index 29
      TableRowProps('input3_30', InputType.text), // index 30

      TableRowProps('input3_31', InputType.text), // index 31
      TableRowProps('input3_32', InputType.text), // index 32

      TableRowProps('input3_33', InputType.text), // index 33
      TableRowProps('input3_34', InputType.text), // index 34

      TableRowProps('input3_35', InputType.text), // index 35
      // 5
      TableRowProps('input3_36', InputType.text), // index 36
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

import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_2130/pdf_template_2130.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog2130 extends StatelessWidget {
  PdfFormDialog2130({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('input1_1', InputType.text),
      TableRowProps('input1_2', InputType.date),
      TableRowProps('input1_3', InputType.text),
      TableRowProps('input1_4', InputType.option, params: {'1': '男', '2': '女'}),
      TableRowProps('input1_5', InputType.text),
      TableRowProps('input1_6', InputType.option, params: {'1': '有', '2': '無'}),
      TableRowProps('input1_7', InputType.text),
      TableRowProps('input1_8', InputType.text),
      TableRowProps('input1_9_1', InputType.text),
      TableRowProps('input1_9_2', InputType.text),
      TableRowProps('input1_9_3', InputType.text),
      TableRowProps('input1_10_1', InputType.text),
      TableRowProps('input1_10_2', InputType.date),
      TableRowProps('input1_11_1', InputType.text),
      TableRowProps('input1_11_2', InputType.text),
      TableRowProps('input1_11_3', InputType.date),
      TableRowProps('input1_12', InputType.text),
      TableRowProps('input1_13_1', InputType.text),
      TableRowProps('input1_13_2', InputType.text),
      TableRowProps('input1_14', InputType.text),
      TableRowProps('input1_15_1', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input1_15_2', InputType.text),
      TableRowProps('input1_16', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Row 1
      TableRowProps('input1_16_1_1', InputType.text),
      TableRowProps('input1_16_1_2', InputType.text),
      TableRowProps('input1_16_1_3', InputType.date),
      TableRowProps('input1_16_1_4', InputType.text),
      TableRowProps('input1_16_1_5', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input1_16_1_6', InputType.text),
      TableRowProps('input1_16_1_7', InputType.text),
      // Row 2  --- id30
      TableRowProps('input1_16_2_1', InputType.text),
      TableRowProps('input1_16_2_2', InputType.text),
      TableRowProps('input1_16_2_3', InputType.date),
      TableRowProps('input1_16_2_4', InputType.text),
      TableRowProps('input1_16_2_5', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input1_16_2_6', InputType.text),
      TableRowProps('input1_16_2_7', InputType.text),
      // Row 3  --- id37
      TableRowProps('input1_16_3_1', InputType.text),
      TableRowProps('input1_16_3_2', InputType.text),
      TableRowProps('input1_16_3_3', InputType.date),
      TableRowProps('input1_16_3_4', InputType.text),
      TableRowProps('input1_16_3_5', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input1_16_3_6', InputType.text),
      TableRowProps('input1_16_3_7', InputType.text),
      // Row 4  --- id44
      TableRowProps('input1_16_4_1', InputType.text),
      TableRowProps('input1_16_4_2', InputType.text),
      TableRowProps('input1_16_4_3', InputType.date),
      TableRowProps('input1_16_4_4', InputType.text),
      TableRowProps('input1_16_4_5', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input1_16_4_6', InputType.text),
      TableRowProps('input1_16_4_7', InputType.text),
      // Row 5  --- id51
      TableRowProps('input1_16_5_1', InputType.text),
      TableRowProps('input1_16_5_2', InputType.text),
      TableRowProps('input1_16_5_3', InputType.date),
      TableRowProps('input1_16_5_4', InputType.text),
      TableRowProps('input1_16_5_5', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input1_16_5_6', InputType.text),
      TableRowProps('input1_16_5_7', InputType.text),
      // Row 6  --- id58
      TableRowProps('input1_16_6_1', InputType.text),
      TableRowProps('input1_16_6_2', InputType.text),
      TableRowProps('input1_16_6_3', InputType.date),
      TableRowProps('input1_16_6_4', InputType.text),
      TableRowProps('input1_16_6_5', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input1_16_6_6', InputType.text),
      TableRowProps('input1_16_6_7', InputType.text),
    ],
    // Page 2
    [
      TableRowProps('input2_1', InputType.text),
      TableRowProps('input2_2', InputType.text),
      TableRowProps('input2_3', InputType.text),
      TableRowProps('input2_4', InputType.option,
          params: {'1': '分野別運用方針に定める評価方法による証明', '2': '技能実習2号を良好に修了'}),
      TableRowProps('input2_5', InputType.option,
          params: {'1': '試験による証明', '2': 'その他の評価方法による証明'}),
      TableRowProps('input2_6', InputType.text),
      TableRowProps('input2_7', InputType.option,
          params: {'1': '日本国内', '2': '日本国外'}),
      TableRowProps('input2_8 国名 1', InputType.text),
      TableRowProps('input2_9 合格した試験名 2', InputType.text),
      TableRowProps('input2_7 受験地 2', InputType.option,
          params: {'1': '日本国内', '2': '日本国外'}),
      TableRowProps('input2_8 国名 2', InputType.text),
      TableRowProps('input2_9', InputType.text),
      // section 19   --- id12
      TableRowProps('input2_10', InputType.option,
          params: {'1': '分野別運用方針に定める評価方法による証明', '2': '技能実習2号を良好に修了'}),
      TableRowProps('input2_11', InputType.option,
          params: {'1': '試験による証明', '2': 'その他の評価方法による証明'}),
      TableRowProps('input2_12', InputType.text),
      TableRowProps('input2_13', InputType.option,
          params: {'1': '日本国内', '2': '日本国外'}),
      TableRowProps('input2_14 国名 1', InputType.text),
      TableRowProps('input2_15 合格した試験名 2', InputType.text),
      TableRowProps('input2_16 受験地 2', InputType.option,
          params: {'1': '日本国内', '2': '日本国外'}),
      TableRowProps('input2_17 国名 2', InputType.text),
      TableRowProps('input2_18', InputType.text),
      // Section 20
      // 20_1   --- id21
      TableRowProps('input2_20', InputType.text),
      TableRowProps('input2_21', InputType.text),
      TableRowProps('input2_22', InputType.option, params: {
        '1': '3級の技能検定又はこれに相当する技能実習評価試験の実技試験の合格による証明',
        '2': '実習状況に関する書面による証明'
      }),
      // 20_2   --- id24
      TableRowProps('input2_23', InputType.text),
      TableRowProps('input2_24', InputType.text),
      TableRowProps('input2_25', InputType.option, params: {
        '1': '3級の技能検定又はこれに相当する技能実習評価試験の実技試験の合格による証明',
        '2': '実習状況に関する書面による証明'
      }),
      // Section 21   --- id27
      TableRowProps('input2_26 年', InputType.text),
      TableRowProps('input2_27 月', InputType.text),
    ],

    // Page 3
    [
      // Section 22
      TableRowProps('input3_1', InputType.option, params: {'1': '男', '2': '無'}),
      TableRowProps('input3_2', InputType.text),
      TableRowProps('input3_3', InputType.text),
      // Section 23   --- id3
      TableRowProps('input3_4', InputType.option, params: {'1': '男', '2': '無'}),
      TableRowProps('input3_5', InputType.text),
      TableRowProps('input3_6', InputType.text),
      // Section 24   --- id6
      TableRowProps('input3_7', InputType.boolean),
      // Section 25   --- id7
      TableRowProps('input3_8', InputType.boolean),
      // Section 26   --- id8
      TableRowProps('input3_9', InputType.boolean),
      // Section 27   --- id9
      TableRowProps('input3_10', InputType.boolean),
      // Section 28   --- id10
      TableRowProps('年1', InputType.text),
      TableRowProps('月1', InputType.text),
      TableRowProps('年1', InputType.text),
      TableRowProps('月1', InputType.text),
      TableRowProps('勤務先名称1', InputType.text),
      TableRowProps('年2', InputType.text),
      TableRowProps('月2', InputType.text),
      TableRowProps('年2', InputType.text),
      TableRowProps('月2', InputType.text),
      TableRowProps('勤務先名称2', InputType.text),
      TableRowProps('年3', InputType.text),
      TableRowProps('月3', InputType.text),
      TableRowProps('年3', InputType.text),
      TableRowProps('月3', InputType.text),
      TableRowProps('勤務先名称3', InputType.text),
      TableRowProps('年4', InputType.text),
      TableRowProps('月4', InputType.text),
      TableRowProps('年4', InputType.text),
      TableRowProps('月4', InputType.text),
      TableRowProps('勤務先名称4', InputType.text),
      TableRowProps('年5', InputType.text),
      TableRowProps('月5', InputType.text),
      TableRowProps('年5', InputType.text),
      TableRowProps('月5', InputType.text),
      TableRowProps('勤務先名称5', InputType.text),
      TableRowProps('年6', InputType.text),
      TableRowProps('月6', InputType.text),
      TableRowProps('年6', InputType.text),
      TableRowProps('月6', InputType.text),
      TableRowProps('勤務先名称6', InputType.text),
      // Section 29   ---id40
      TableRowProps('(1)氏 名', InputType.text),
      TableRowProps('(2)本人との関係', InputType.text),
      TableRowProps('(3)住 所', InputType.text),
      TableRowProps('電話番号', InputType.text),
      TableRowProps('携帯電話番号', InputType.text),
      TableRowProps('(1)氏 名', InputType.text),
      TableRowProps('(2)住 所', InputType.text),
      TableRowProps('(3)', InputType.text),
      TableRowProps('電話番号', InputType.text),
    ],
    // Page 4
    [
      TableRowProps('input4_1', InputType.date),
      TableRowProps('input4_2', InputType.date),
      // Section 2   --- id2
      TableRowProps('input4_3', InputType.text),
      TableRowProps('input4_4', InputType.text),
      TableRowProps('input4_5', InputType.text),
      TableRowProps('input4_6', InputType.text),
      TableRowProps('input4_7', InputType.text),
      TableRowProps('input4_8', InputType.text),

      TableRowProps('input4_9', InputType.text),
      TableRowProps('input4_10', InputType.text),
      // Section 3   --- id10
      TableRowProps('input4_11', InputType.text),
      TableRowProps('input4_12', InputType.text),
      TableRowProps('input4_13', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4   --- id13
      TableRowProps('input4_14', InputType.text),
      TableRowProps('input4_15', InputType.text),
      TableRowProps('input4_16', InputType.text),
      TableRowProps('input4_17', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 5   --- id17
      TableRowProps('input4_18', InputType.option,
          params: {'1': '通貨払', '2': '口座振込み'}),
      // Section 6   --- id18
      TableRowProps('input4_19', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input4_20', InputType.text),
      // Section 7   --- id20
      TableRowProps('input4_21', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 8   --- id21
      TableRowProps('input4_22', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 9   --- id22
      TableRowProps('input4_23', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 10   --- id23
      TableRowProps('input4_24', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 11   --- id24
      TableRowProps('input4_25', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 12   --- id25
      TableRowProps('input4_26', InputType.text),
      TableRowProps('input4_27 13 number', InputType.text),
      TableRowProps('input4_28 11 number', InputType.text),
      TableRowProps('input4_29 Address', InputType.text),
      TableRowProps('input4_30 Telephone No.', InputType.text),
      TableRowProps('input4_31', InputType.text),
      TableRowProps('input4_32', InputType.date),
      TableRowProps('input4_33', InputType.date),
      // Section 13   --- id33
      TableRowProps('input4_34', InputType.text),
      TableRowProps('input4_35 13 number', InputType.text),
      TableRowProps('input4_36 11 number', InputType.text),
      TableRowProps('input4_37 Address', InputType.text),
      TableRowProps('input4_38 Telephone No.', InputType.text),
      TableRowProps('input4_39 Permission', InputType.text),
      TableRowProps('input4_40', InputType.date),
    ],
    // Page 5
    [
      // Section 14
      TableRowProps('input5_1', InputType.text),
      TableRowProps('input5_2 Address', InputType.text),
      TableRowProps('input5_3 Telephone No.', InputType.text),
      TableRowProps('input5_4', InputType.text),
      // Section 3.2   --- id4
      TableRowProps('input5_5 13 numbers', InputType.text),
      // Section 3.3   --- id5
      TableRowProps('input5_6 11 numbers', InputType.text),
      // Section 3.4   --- id6
      TableRowProps('input5_7', InputType.text),
      TableRowProps('input5_8', InputType.text),
      // Section 3.5   --- id8
      TableRowProps('input5_9', InputType.text),
      TableRowProps('input5_10', InputType.text),
      // Section 3.6   --- id10
      TableRowProps('input5_11', InputType.text),
      // Section 3.7   --- id11
      TableRowProps('input5_12', InputType.text),
      // Section 3.8   --- id12
      TableRowProps('input5_13', InputType.text),
      // Section 3.9   --- id13
      TableRowProps('input5_14', InputType.text),
      // Section 3.10   --- id14
      TableRowProps('input5_15', InputType.text),
      TableRowProps('input5_16', InputType.text),
      TableRowProps('input5_17', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_18', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_19', InputType.text),
      // Section 3.11   --- id19
      TableRowProps('input5_20', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_21', InputType.text),
      // Section 3.12   --- id21
      TableRowProps('input5_22', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_23', InputType.text),
      // Section 3.13   --- id23
      TableRowProps('input5_24', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_25', InputType.text),
      // Section 3.14   --- id25
      TableRowProps('input5_26', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_27', InputType.text),
      // Section 3.15   --- id27
      TableRowProps('input5_28', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_29', InputType.text),
      // Section 3.16   --- id29
      TableRowProps('input5_30', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_31', InputType.text),
      // Section 3.17   --- id31
      TableRowProps('input5_32', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_33', InputType.text),
      // Section 3.18   --- id33
      TableRowProps('input5_34', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_35', InputType.text),
      // Section 3.19   --- id35
      TableRowProps('input5_36', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_37', InputType.text),
      // Section 3.20   --- id37
      TableRowProps('input5_38', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_39', InputType.text),
      // Section 3.21   --- id39
      TableRowProps('input5_40', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input5_41', InputType.text),
    ],
    // Page 6
    [
      // Section 3.22   --- id0
      TableRowProps('input6_0', InputType.option, params: {'1': '男', '2': '無'}),
      TableRowProps('input6_1', InputType.text),
      // Section 3.23   --- id2
      TableRowProps('input6_2', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 3.24   --- id3
      TableRowProps('input6_3', InputType.option, params: {'1': '男', '2': '無'}),
      TableRowProps('input6_4', InputType.text),
      // Section 3.25   --- id5
      TableRowProps('input6_5', InputType.option, params: {'1': '男', '2': '無'}),
      TableRowProps('input6_6', InputType.text),
      // Section 3.26   --- id7
      TableRowProps('input6_7', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 3.27   --- id8
      TableRowProps('input6_8', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 3.27-1
      TableRowProps('input6_9', InputType.boolean),
      TableRowProps('input6_10', InputType.text),
      // Section 3.27-2
      TableRowProps('input6_11', InputType.boolean),
      TableRowProps('input6_12', InputType.text),
      // Section 3.27-3
      TableRowProps('input6_13', InputType.boolean),
      TableRowProps('input6_14', InputType.text),
      // Section 3.27-4
      TableRowProps('input6_15', InputType.boolean),
      // Section 3.28
      TableRowProps('input6_16', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input6_17', InputType.text),
      // Section 3.29
      TableRowProps('input6_18', InputType.option,
          params: {'1': '男', '2': '無'}),
      TableRowProps('input6_19', InputType.text),
      // Section 3.30
      TableRowProps('input6_20', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 3.31
      TableRowProps('input6_21', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 3.32
      TableRowProps('input6_22', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 3.33
      TableRowProps('input6_23', InputType.text),
      TableRowProps('input6_24', InputType.text),
      TableRowProps('input6_25', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 3.34
      TableRowProps('input6_26', InputType.text),
      TableRowProps('input6_27', InputType.text),
      TableRowProps('input6_28', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 3.35
      TableRowProps('input6_29', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 3.35-1
      TableRowProps('input6_30', InputType.boolean),
      // Section 3.35-2
      TableRowProps('input6_31', InputType.boolean),
      // Section 3.35-3
      TableRowProps('input6_32', InputType.boolean),
      TableRowProps('input6_33', InputType.text),
      // Section 3.36
      TableRowProps('input6_34', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 3.37
      TableRowProps('input6_35', InputType.option,
          params: {'1': '男', '2': '無'}),
    ],
    // Page 7
    [
      // Section 3.38
      TableRowProps('input7_0', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 3.39
      TableRowProps('input7_1', InputType.option, params: {'1': '男', '2': '無'}),
      TableRowProps('input7_2', InputType.text),
      // Section 3.40
      TableRowProps('input7_3', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 3.41
      TableRowProps('input7_4', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 4.1
      TableRowProps('input7_5', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 4.2
      TableRowProps('input7_6', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 4.3
      TableRowProps('input7_7', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 4.4
      TableRowProps('input7_8', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 4.5
      TableRowProps('input7_9', InputType.option, params: {'1': '男', '2': '無'}),
      // Section 4.6
      TableRowProps('input7_10', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.7
      TableRowProps('input7_11', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.8
      TableRowProps('input7_12', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.9
      TableRowProps('input7_13', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.10
      TableRowProps('input7_14', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.11
      TableRowProps('input7_15', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.12
      TableRowProps('input7_16', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.13
      TableRowProps('input7_17', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.14
      TableRowProps('input7_18', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.15
      TableRowProps('input7_19', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 4.16
      TableRowProps('input7_20', InputType.option,
          params: {'1': '男', '2': '無'}),
      // Section 5.1
      TableRowProps('input7_21', InputType.text),
      // Section 5.2
      TableRowProps('input7_22 13 numbers', InputType.text),
      // Section 5.3
      TableRowProps('input7_23 11 numbers', InputType.text),
      // Section 5.4
      TableRowProps('input7_24', InputType.text),
      TableRowProps('input7_25', InputType.text),
      // Section 5.5
      TableRowProps('input7_26', InputType.text),
      // Section 5.6
      TableRowProps('input7_27', InputType.text),
      // Section 5.7
      TableRowProps('input7_28', InputType.date),
      // Section 5.8
      TableRowProps('input7_29', InputType.text),
      // Section 5.9
      TableRowProps('input7_30', InputType.text),
      // Section 5.10
      TableRowProps('input7_31', InputType.text),
      // Section 5.11
      TableRowProps('input7_32', InputType.text),
      // Section 5.12
      TableRowProps('(12)対応可能言語1', InputType.text),
      TableRowProps('(12)対応可能言語2', InputType.text),
      TableRowProps('(12)対応可能言語3', InputType.text),
      TableRowProps('(12)対応可能言語4', InputType.text),
      TableRowProps('(12)対応可能言語5', InputType.text),
      TableRowProps('(12)対応可能言語6', InputType.text),
      TableRowProps('(12)対応可能言語7', InputType.text),
      TableRowProps('(12)対応可能言語8', InputType.text),
      TableRowProps('(12)対応可能言語9', InputType.text),
      TableRowProps('(12)対応可能言語10', InputType.text),
      // Section 5.13
      TableRowProps('input7_43', InputType.text),
      TableRowProps('input7_44', InputType.text),
      TableRowProps('input7_45', InputType.date),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate2130 template = PdfTemplate2130(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(
        title: '2_1_30', tableProps: _tableProps, callback: _callback);
  }
}

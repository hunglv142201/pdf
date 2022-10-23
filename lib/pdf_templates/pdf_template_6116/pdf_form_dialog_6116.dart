import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_6116/pdf_template_6116.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog6116 extends StatelessWidget {
  PdfFormDialog6116({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      TableRowProps('input1_0', InputType.text),
      TableRowProps('input1_2', InputType.option, params: {'1': '有', '2': '無'}),
      TableRowProps('input1_3', InputType.text),
      TableRowProps('input1_4', InputType.date),
      TableRowProps('input1_5', InputType.option,
          params: {'1': '有料職業紹介事業者', '2': '無料職業紹介事業者'}),
      TableRowProps('input1_6  4_1', InputType.text),
      TableRowProps('input1_7  4_1', InputType.text),
      TableRowProps('input1_8  5_1', InputType.text),
      TableRowProps('input1_9  5_2', InputType.text),
      TableRowProps('input1_10  5_3', InputType.text),
      TableRowProps('input1_11  5_4', InputType.text),
      TableRowProps('input1_12  5_5', InputType.text),
      TableRowProps('input1_13  5_6', InputType.text),
      TableRowProps('input1_14  5_7', InputType.text),
      TableRowProps('input1_15  6_1', InputType.text),
      TableRowProps('input1_16  6_2', InputType.text),
      TableRowProps('input1_17  6_3', InputType.text),
      TableRowProps('input1_18  6_4', InputType.text),
      TableRowProps('input1_19  6_5', InputType.text),
      TableRowProps('input1_20  6_6', InputType.text),
      TableRowProps('input1_21  6_7', InputType.text),
      TableRowProps('input1_22  6_8', InputType.text),

      // Table 2
      TableRowProps('input1_23', InputType.option,
          params: {'1': '有', '2': '無'}),
      TableRowProps('input1_24  2_1', InputType.text),
      TableRowProps('input1_25  2_2', InputType.text),
      TableRowProps('input1_26  3_1', InputType.text),
      TableRowProps('input1_27  3_2', InputType.text),
      TableRowProps('input1_28  4_1', InputType.text),
      TableRowProps('input1_29  4_2', InputType.text),
      TableRowProps('input1_30  4_3', InputType.text),
      TableRowProps('input1_31  4_4', InputType.text),
      TableRowProps('input1_32  4_5', InputType.text),
      TableRowProps('input1_33  5_1', InputType.text),
      TableRowProps('input1_34  5_2', InputType.text),
      TableRowProps('input1_35  5_3', InputType.text),
      TableRowProps('input1_36  5_4', InputType.text),
      TableRowProps('input1_37  5_5', InputType.text),
      TableRowProps('input1_38  5_6', InputType.text),
      TableRowProps('input1_39  5_7', InputType.text),
      TableRowProps('input1_40  5_8', InputType.text),
    ],
    // Page 2
    [
      TableRowProps('input2_0', InputType.option, params: {'1': '有', '2': '無'}),
      TableRowProps('input2_1', InputType.text),
      TableRowProps('input2_2', InputType.text),
      TableRowProps('input2_3', InputType.text),
      TableRowProps('input2_4', InputType.text),
      TableRowProps('input2_5', InputType.text),
      TableRowProps('input2_6', InputType.text),
      TableRowProps('input2_7', InputType.date),

      // Table
      TableRowProps('input2_8 支払先機関の名称1', InputType.text),
      TableRowProps('input2_9 名目1', InputType.text),
      TableRowProps('input2_10 支払年月日1', InputType.date),
      TableRowProps('input2_11 支払金額1_1', InputType.text),
      TableRowProps('input2_12 支払金額1_2', InputType.text),
      TableRowProps('input2_13 支払金額1_3', InputType.text),

      TableRowProps('input2_14 支払先機関の名称2', InputType.text),
      TableRowProps('input2_15 名目2', InputType.text),
      TableRowProps('input2_16 支払年月日2', InputType.date),
      TableRowProps('input2_17 支払金額2_1', InputType.text),
      TableRowProps('input2_18 支払金額2_2', InputType.text),
      TableRowProps('input2_19 支払金額2_3', InputType.text),

      TableRowProps('input2_20 支払先機関の名称3', InputType.text),
      TableRowProps('input2_21 名目3', InputType.text),
      TableRowProps('input2_22 支払年月日3', InputType.date),
      TableRowProps('input2_23 支払金額3_1', InputType.text),
      TableRowProps('input2_24 支払金額3_2', InputType.text),
      TableRowProps('input2_25 支払金額3_3', InputType.text),

      TableRowProps('input2_26 支払先機関の名称4', InputType.text),
      TableRowProps('input2_27 名目4', InputType.text),
      TableRowProps('input2_28 支払年月日2', InputType.date),
      TableRowProps('input2_29 支払金額4_1', InputType.text),
      TableRowProps('input2_30 支払金額4_2', InputType.text),
      TableRowProps('input2_31 支払金額4_3', InputType.text),

      TableRowProps('input2_32 支払先機関の名称5', InputType.text),
      TableRowProps('input2_33 名目5', InputType.text),
      TableRowProps('input2_34 支払年月日2', InputType.date),
      TableRowProps('input2_35 支払金額5_1', InputType.text),
      TableRowProps('input2_36 支払金額5_2', InputType.text),
      TableRowProps('input2_37 支払金額5_3', InputType.text),

      TableRowProps('input2_38 計6_1', InputType.text),
      TableRowProps('input2_39 計6_2', InputType.text),
      TableRowProps('input2_40 円', InputType.text),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate6116 template = PdfTemplate6116(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(
        title: '参考様式第１－ 1 6 号', tableProps: _tableProps, callback: _callback);
  }
}

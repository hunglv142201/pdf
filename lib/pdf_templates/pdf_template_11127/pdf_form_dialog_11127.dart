import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_11127/pdf_template_11127.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog11127 extends StatelessWidget {
  PdfFormDialog11127({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    [
      // First table
      // Rounded 1
      TableRowProps('役員氏名', InputType.text), // index 0
      TableRowProps('役員氏名', InputType.text), // index 1
      TableRowProps('役職', InputType.longText), // index 2
      // Rounded 2
      TableRowProps('役員氏名', InputType.text), // index 3
      TableRowProps('役員氏名', InputType.text), // index 4
      TableRowProps('役職', InputType.longText), // index 5
      // Rounded 3
      TableRowProps('役員氏名', InputType.text), // index 6
      TableRowProps('役員氏名', InputType.text), // index 7
      TableRowProps('役職', InputType.longText), // index 8
      // Rounded 4
      TableRowProps('役員氏名', InputType.text), // index 9
      TableRowProps('役員氏名', InputType.text), // index 10
      TableRowProps('役職', InputType.longText), // index 11
      // Rounded 5
      TableRowProps('役員氏名', InputType.text), // index 12
      TableRowProps('役員氏名', InputType.text), // index 13
      TableRowProps('役職', InputType.longText), // index 14
      // Rounded 6
      TableRowProps('役員氏名', InputType.text), // index 15
      TableRowProps('役員氏名', InputType.text), // index 16
      TableRowProps('役職', InputType.longText), // index 17

      // Second table
      // Rounded 1
      TableRowProps('売上高', InputType.text), // index 18
      TableRowProps('売上高', InputType.text), // index 19
      TableRowProps('売上高', InputType.text), // index 20
      // Rounded 2
      TableRowProps('経常損益', InputType.text), // index 21
      TableRowProps('経常損益', InputType.text), // index 22
      TableRowProps('経常損益', InputType.text), // index 23
      // Rounded 3
      TableRowProps('純損益', InputType.text), // index 24
      TableRowProps('純損益', InputType.text), // index 25
      TableRowProps('純損益', InputType.text), // index 26
      // Rounded 3
      TableRowProps('純資産', InputType.text), // index 27
      TableRowProps('純資産', InputType.text), // index 28
      TableRowProps('純資産', InputType.text), // index 29

      // Third table
      TableRowProps('input_30', InputType.text), // index 30
      TableRowProps('input_31', InputType.text), // index 31
      TableRowProps('input_32', InputType.text), // index 32
      TableRowProps('input_33', InputType.text), // index 33
      TableRowProps('input_34', InputType.text), // index 34
      TableRowProps('input_35', InputType.text), // index 35
      //    Checkbox 1
      TableRowProps('input_36', InputType.option, params: {'1': '該当あり', '2': '該当なし'}), // index 36
      TableRowProps('input_37', InputType.option, params: {'1': '該当あり', '2': '該当なし'}), // index 37
    ],
    [
      // First table
      TableRowProps('（１）過去２年間にわたり中長期在留者の受入れを適正に行った実績', InputType.singleOption),
      TableRowProps('（２）支援責任者及び支援担当者が過去２年間に中長期在留者の生活相談業務に従事した実績を有すること', InputType.singleOption),
      TableRowProps('（３）（１）及び（２）に掲げるもののほか，これらの者と同程度に支援業務を適正に実施することができること', InputType.singleOption),
      TableRowProps('input2_3', InputType.text), // index 3
      TableRowProps('input2_4', InputType.text), // index 4
      TableRowProps('input2_5', InputType.option, params: {'1': '法令遵守', '2': '法令違反・行政指導あり'}), // index 5
      TableRowProps('input2_6', InputType.option, params: {'1': '法令遵守', '2': '法令違反・行政指導あり'}), // index 6
      TableRowProps('input2_7', InputType.longText), // index 7
      TableRowProps('input2_8', InputType.option, params: {'1': '是正勧告あり', '2': '是正勧告なし'}), // index 8

      // Second table
      // 支援対象者 (申請人) column
      TableRowProps('氏名', InputType.text), // index 9
      TableRowProps('所属部署役職', InputType.longText), // index 10
      TableRowProps('氏名', InputType.text), // index 11
      TableRowProps('所属部署役職', InputType.longText), // index 12
      TableRowProps('氏名', InputType.text), // index 13
      TableRowProps('所属部署役職', InputType.longText), // index 14
      // 支援責任者 column
      TableRowProps('氏名', InputType.text), // index 15
      TableRowProps('所属部署役職', InputType.longText), // index 16
      TableRowProps('氏名', InputType.text), // index 17
      TableRowProps('所属部署役職', InputType.longText), // index 18
      TableRowProps('氏名', InputType.text), // index 19
      TableRowProps('所属部署役職', InputType.longText), // index 20
      // 支援担当者 column
      TableRowProps('氏名', InputType.text), // index 21
      TableRowProps('所属部署役職', InputType.longText), // index 22
      TableRowProps('氏名', InputType.text), // index 23
      TableRowProps('所属部署役職', InputType.longText), // index 24
      TableRowProps('氏名', InputType.text), // index 25
      TableRowProps('所属部署役職', InputType.longText), // index 26
      // Last section
      TableRowProps('input2_27', InputType.date), // index 27
      TableRowProps('input2_28', InputType.text), // index 28
      TableRowProps('input2_29', InputType.text), // index 29
      TableRowProps('input2_30', InputType.text), // index 30
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate11127 template = PdfTemplate11127(inputs);

      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(title: '参考様式第１－１１号', tableProps: _tableProps, callback: _callback);
  }
}

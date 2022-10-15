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
    // [
    //   TableRowProps('input2_1', InputType.longText),
    //   TableRowProps('input2_2', InputType.text),
    //   TableRowProps('input2_3', InputType.option, params: {'1': '男', '2': '女'}),
    //   TableRowProps('input2_4', InputType.text),
    //   TableRowProps('input2_5', InputType.text),
    //   TableRowProps('input2_6', InputType.text),
    //   TableRowProps('input2_7', InputType.option, params: {'1': '男', '2': '無'}),
    //   TableRowProps('input2_8', InputType.text),
    //   TableRowProps('input2_9', InputType.text),
    //   TableRowProps('input2_10', InputType.longText),
    //   TableRowProps('input2_11', InputType.longText),
    //   TableRowProps('input2_12', InputType.date),
    //   TableRowProps('input2_13', InputType.text),
    //   TableRowProps('input2_14', InputType.text),
    //   TableRowProps('input2_15', InputType.text),
    // ],
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

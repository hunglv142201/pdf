import 'package:flutter/material.dart';
import 'package:pdf_creator/components/form_dialog/form_dialog.dart';
import 'package:pdf_creator/components/form_table/form_table.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pdf_template_9117.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class PdfFormDialog9117 extends StatelessWidget {
  PdfFormDialog9117({Key? key}) : super(key: key);

  final List<List<TableRowProps>> _tableProps = [
    // Page 1
    [
      TableRowProps('input1_0', InputType.date),
      TableRowProps('input1_1', InputType.text),
      TableRowProps('input1_2', InputType.text),
      TableRowProps('input1_3 Gender', InputType.option,
          params: {'1': '男', '2': '女'}),
      TableRowProps('input1_4', InputType.date),
      TableRowProps('input1_5', InputType.text),
      TableRowProps('input1_6', InputType.text),
      TableRowProps('input1_7', InputType.text),
      // II.2
      TableRowProps('input1_8', InputType.text),
      TableRowProps('input1_9', InputType.text),
      TableRowProps('input1_10', InputType.text),
      TableRowProps('input1_11', InputType.text),
      TableRowProps('input1_12', InputType.text),
      TableRowProps('input1_13', InputType.text),
      // II.3
      TableRowProps('input1_14', InputType.text),
      TableRowProps('input1_15', InputType.text),
      TableRowProps('input1_16', InputType.text),
      TableRowProps('input1_17', InputType.text),
      TableRowProps('input1_18', InputType.text),
      TableRowProps('input1_19', InputType.text),
      // II.4.1
      TableRowProps('input1_20', InputType.text),
      TableRowProps('input1_21', InputType.text),
      TableRowProps('input1_22', InputType.text),
      // II.4.2-3
      TableRowProps('input1_23', InputType.text),
      TableRowProps('input1_24', InputType.text),
      TableRowProps('input1_25', InputType.option,
          params: {'1': '有', '2': '無'}),
    ],
    [
      // Page 2
      TableRowProps('input2_0', InputType.text),
      TableRowProps('input2_1', InputType.date),
      TableRowProps('input2_2', InputType.date),
      // III.4
      TableRowProps('input2_3', InputType.text),
      TableRowProps('input2_4', InputType.text),
      TableRowProps('input2_5', InputType.text),
      // III.5
      TableRowProps('input2_6', InputType.text),
      TableRowProps('input2_7', InputType.text),
      TableRowProps('input2_8', InputType.text),
      TableRowProps('input2_9', InputType.text),
      TableRowProps('input2_10', InputType.text),
      TableRowProps('input2_11', InputType.text),
      TableRowProps('input2_12', InputType.text),
      // III.6
      TableRowProps('input2_13', InputType.text),
      TableRowProps('input2_14', InputType.text),
      TableRowProps('input2_15', InputType.text),
      // III.7
      TableRowProps('input2_16', InputType.text),
      TableRowProps('input2_17', InputType.text),
      TableRowProps('input2_18', InputType.text),
      TableRowProps('input2_19', InputType.text),
      TableRowProps('input2_20', InputType.text),
      TableRowProps('input2_21', InputType.text),
      TableRowProps('input2_22', InputType.text),
      // III.8.1
      TableRowProps('input2_23', InputType.text),
      TableRowProps('input2_24', InputType.text),
      TableRowProps('input2_25', InputType.text),
      TableRowProps('input2_26', InputType.text),
      TableRowProps('input2_27', InputType.text),
      // III.8.2
      TableRowProps('input2_28', InputType.text),
      TableRowProps('input2_29', InputType.text),
      TableRowProps('input2_30', InputType.option,
          params: {'1': '有', '2': '無'}),
    ],
    [
      // Page 3
      TableRowProps('input3_0', InputType.option, params: {'1': '有', '2': '無'}),
      TableRowProps('input3_1', InputType.text),
      TableRowProps('input3_2', InputType.text),
      TableRowProps('input3_3', InputType.option, params: {'1': '有', '2': '無'}),
      TableRowProps('input3_4', InputType.text),
      TableRowProps('input3_5', InputType.text),
      // Tinput
      TableRowProps('input3_6', InputType.text),
      TableRowProps('input3_7', InputType.text),
      TableRowProps('input3_8', InputType.text),
      TableRowProps('input3_9', InputType.option,
          params: {'1': '対面', '2': 'テレビ電話装置', '3': 'その他'}),
      TableRowProps('input3_10', InputType.text),
      TableRowProps('input3_11', InputType.text),

      TableRowProps('input3_12', InputType.option,
          params: {'1': '有', '2': '無'}),
      TableRowProps('input3_13', InputType.option,
          params: {'1': '有', '2': '無'}),
      TableRowProps('input3_14', InputType.text),
      TableRowProps('input3_15', InputType.text),
      TableRowProps('input3_16', InputType.text),

      TableRowProps('input3_17', InputType.text),
      TableRowProps('input3_18', InputType.text),
      TableRowProps('input3_19', InputType.text),

      TableRowProps('input3_20', InputType.text),
    ],
    [
      // Page 4
    ],
    [
      // Page 5
    ],
    [
      // Page 6
    ],
    [
      // Page 7
    ],
    [
      // Page 8
      // ７ 日本人との交流促進に係る支援
      TableRowProps('input8_0', InputType.text),
      TableRowProps('input8_1', InputType.text),
      TableRowProps('input8_2', InputType.text),

      TableRowProps('input8_3', InputType.boolean),

      TableRowProps('input8_4', InputType.text),
      TableRowProps('input8_5', InputType.text),
      TableRowProps('input8_6', InputType.text),
      TableRowProps('input8_7', InputType.text),

      TableRowProps('input8_8', InputType.boolean),

      TableRowProps('input8_9', InputType.text),
      TableRowProps('input8_10', InputType.text),
      TableRowProps('input8_11', InputType.text),

      TableRowProps('input8_12', InputType.boolean),

      TableRowProps('input8_13', InputType.text),
      TableRowProps('input8_14', InputType.text),
      TableRowProps('input8_15', InputType.text),
      TableRowProps('input8_16', InputType.text),
      // ８ 非自発的離職時の転職支援
      // --- a ---
      TableRowProps('input8_17', InputType.boolean),

      TableRowProps('input8_18', InputType.text),
      TableRowProps('input8_19', InputType.text),

      TableRowProps('input8_20', InputType.boolean),

      TableRowProps('input8_21', InputType.text),
      TableRowProps('input8_22', InputType.text),
      TableRowProps('input8_23', InputType.text),
      // --- b ---
      TableRowProps('input8_24', InputType.boolean),

      TableRowProps('input8_25', InputType.text),
      TableRowProps('input8_26', InputType.text),

      TableRowProps('input8_27', InputType.boolean),

      TableRowProps('input8_28', InputType.text),
      TableRowProps('input8_29', InputType.text),
      TableRowProps('input8_30', InputType.text),
      // --- c ---
      TableRowProps('input8_31', InputType.boolean),

      TableRowProps('input8_32', InputType.text),
      TableRowProps('input8_33', InputType.text),

      TableRowProps('input8_34', InputType.boolean),

      TableRowProps('input8_35', InputType.text),
      TableRowProps('input8_36', InputType.text),
      TableRowProps('input8_37', InputType.text),
      // --- d ---
      TableRowProps('input8_38', InputType.boolean),

      TableRowProps('input8_39', InputType.text),
      TableRowProps('input8_40', InputType.text),

      TableRowProps('input8_41', InputType.boolean),

      TableRowProps('input8_42', InputType.text),
      TableRowProps('input8_43', InputType.text),
      TableRowProps('input8_44', InputType.text),
      // --- e ---
      TableRowProps('input8_45', InputType.boolean),

      TableRowProps('input8_46', InputType.text),
      TableRowProps('input8_47', InputType.text),
    ],
    [
      // Page 9
      // ８ 非自発的離職時の転職支援
      // --- f ---
      TableRowProps('input9_0', InputType.boolean),

      TableRowProps('input9_1', InputType.text),
      TableRowProps('input9_2', InputType.text),

      TableRowProps('input9_3', InputType.boolean),

      TableRowProps('input9_4', InputType.text),
      TableRowProps('input9_5', InputType.text),
      TableRowProps('input9_6', InputType.text),
      // --- g ---
      TableRowProps('input9_7', InputType.boolean),

      TableRowProps('input9_8', InputType.text),
      TableRowProps('input9_9', InputType.text),

      TableRowProps('input9_10', InputType.boolean),

      TableRowProps('input9_11', InputType.text),
      TableRowProps('input9_12', InputType.text),
      TableRowProps('input9_13', InputType.text),
      // --- （自由記入） ---
      TableRowProps('input9_14', InputType.text),
      TableRowProps('input9_15', InputType.boolean),
      TableRowProps('input9_16', InputType.text),
      TableRowProps('input9_17', InputType.text),
      TableRowProps('input9_18', InputType.boolean),
      TableRowProps('input9_19', InputType.text),
      TableRowProps('input9_20', InputType.text),
      TableRowProps('input9_21', InputType.text),
      TableRowProps('input9_22', InputType.text),
      // ９ 定期的な面談の実施・行政機関への通報
      TableRowProps('input9_23', InputType.boolean),

      TableRowProps('input9_24', InputType.text),
      TableRowProps('input9_25', InputType.text),

      TableRowProps('input9_26', InputType.boolean),

      TableRowProps('input9_27', InputType.text),
      TableRowProps('input9_28', InputType.text),

      TableRowProps('input9_29', InputType.boolean),

      TableRowProps('input9_30', InputType.text),
      TableRowProps('input9_31', InputType.text),

      TableRowProps('input9_32', InputType.boolean),
      // --- （自由記入） ---
      TableRowProps('input9_33', InputType.text),

      TableRowProps('input9_34', InputType.boolean),

      TableRowProps('input9_35', InputType.text),
      TableRowProps('input9_36', InputType.text),

      TableRowProps('input9_37', InputType.boolean),
      // --- d ---

      TableRowProps('input9_38', InputType.text),
      TableRowProps('input9_39', InputType.text),
      TableRowProps('input9_40', InputType.text),
      TableRowProps('input9_41', InputType.text),
    ],
    [
      // Page 10
      TableRowProps('input10_0', InputType.text), //
      TableRowProps('input10_1', InputType.text), //
      TableRowProps('input10_2', InputType.text), //
      TableRowProps('input10_3', InputType.text), //
      TableRowProps('input10_4', InputType.date), //
      TableRowProps('input10_5', InputType.text), //
      TableRowProps('input10_6', InputType.text), //
    ],
  ];

  @override
  Widget build(BuildContext context) {
    void _callback(List<List<String>> inputs) {
      PdfTemplate9117 template = PdfTemplate9117(inputs);
      Navigator.of(context).pushNamed(
        'pdf_viewer',
        arguments: PdfViewerScreenProps(pdf: template.build()),
      );
    }

    return FormDialog(
        title: '参考様式第 1 - 17 号', tableProps: _tableProps, callback: _callback);
  }
}

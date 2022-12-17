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
      TableRowProps('input1_3 Gender', InputType.option, params: {'1': '男', '2': '女'}),
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
      TableRowProps('input1_25', InputType.option, params: {'1': '有', '2': '無'}),
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
      TableRowProps('input2_30', InputType.option, params: {'1': '有', '2': '無'}),
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
      TableRowProps('input3_9', InputType.option, params: {'1': '対面', '2': 'テレビ電話装置', '3': 'その他'}),
      TableRowProps('input3_10', InputType.text),
      TableRowProps('input3_11', InputType.text),

      TableRowProps('input3_12', InputType.option, params: {'1': '有', '2': '無'}),
      TableRowProps('input3_13', InputType.option, params: {'1': '有', '2': '無'}),
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
      TableRowProps('input4_1', InputType.boolean),
      TableRowProps('input4_2', InputType.text),
      TableRowProps('input4_3', InputType.text),
      TableRowProps('input4_4', InputType.option),
      TableRowProps('input4_5', InputType.longText),
      TableRowProps('input4_6', InputType.longText),
      TableRowProps('input4_7', InputType.boolean, params: {'1': '出迎え空港等', '2': '送迎方法'}),
      TableRowProps('input4_8', InputType.text),
      TableRowProps('input4_9', InputType.text),
      TableRowProps('input4_10', InputType.boolean),
      TableRowProps('input4_11', InputType.text),
      TableRowProps('input4_12', InputType.text),
      TableRowProps('input4_13', InputType.option),
      TableRowProps('input4_14', InputType.longText),
      TableRowProps('input4_15', InputType.longText),
      TableRowProps('input4_16', InputType.boolean, params: {'1': '出国予定空港等', '2': '送迎方法'}),
      TableRowProps('input4_17', InputType.text),
      TableRowProps('input4_18', InputType.text),
      TableRowProps('input4_19', InputType.longText),
      TableRowProps('input4_20', InputType.boolean),
      TableRowProps('input4_21', InputType.option),
      TableRowProps('input4_22', InputType.longText),
      TableRowProps('input4_23', InputType.longText),
      TableRowProps('input4_24', InputType.longText),
      TableRowProps('input4_25', InputType.boolean),
      TableRowProps('input4_26', InputType.text),
      TableRowProps('input4_27', InputType.text),
      TableRowProps('input4_28', InputType.option),
      TableRowProps('input4_29', InputType.longText),
      TableRowProps('input4_30', InputType.longText),
      TableRowProps('input4_31', InputType.boolean),
      TableRowProps('input4_32', InputType.text),
      TableRowProps('input4_33', InputType.text),
      TableRowProps('input4_34', InputType.option),
      TableRowProps('input4_35', InputType.longText),
      TableRowProps('input4_36', InputType.longText),
      TableRowProps('input4_37', InputType.boolean),
      TableRowProps('input4_38', InputType.text),
      TableRowProps('input4_39', InputType.text),
      TableRowProps('input4_40', InputType.option),
      TableRowProps('input4_41', InputType.longText),
      TableRowProps('input4_42', InputType.longText),
      TableRowProps('input4_43', InputType.longText),
      TableRowProps('input4_44', InputType.boolean),
      TableRowProps('input4_45', InputType.option),
      TableRowProps('input4_46', InputType.longText),
      TableRowProps('input4_47', InputType.longText),
      TableRowProps('input4_48', InputType.longText),
    ],
    [
      // Page 5
      TableRowProps('input5_1', InputType.boolean),
      TableRowProps('input5_2', InputType.text),
      TableRowProps('input5_3', InputType.checkbox, params: {'1': '１人当たり7.5㎡以上を確保'}),
      TableRowProps('input5_4', InputType.checkbox, params: {'1': '１人当たり4.5㎡以上を確保'}),
      TableRowProps('input5_5', InputType.boolean),
      TableRowProps('input5_6', InputType.text),
      TableRowProps('input5_7', InputType.text),
      TableRowProps('input5_8', InputType.option),
      TableRowProps('input5_9', InputType.longText),
      TableRowProps('input5_10', InputType.longText),
      TableRowProps('input5_11', InputType.threeBoolean, params: {'1': '手続に係る情報提供', '2': '必要に応じて手続に同行', '3': 'その他'}),
      TableRowProps('input5_12', InputType.text),
      TableRowProps('input5_13', InputType.boolean),
      TableRowProps('input5_14', InputType.text),
      TableRowProps('input5_15', InputType.text),
      TableRowProps('input5_16', InputType.option),
      TableRowProps('input5_17', InputType.longText),
      TableRowProps('input5_18', InputType.longText),
      TableRowProps('input5_19', InputType.threeBoolean, params: {'1': '手続に係る情報提供', '2': '必要に応じて手続に同行', '3': 'その他'}),
      TableRowProps('input5_20', InputType.text),
      TableRowProps('input5_21', InputType.boolean),
      TableRowProps('input5_22', InputType.text),
      TableRowProps('input5_23', InputType.text),
      TableRowProps('input5_24', InputType.option),
      TableRowProps('input5_25', InputType.longText),
      TableRowProps('input5_26', InputType.longText),
      TableRowProps('input5_27', InputType.threeBoolean, params: {'1': '手続に係る情報提供', '2': '必要に応じて手続に同行', '3': 'その他'}),
      TableRowProps('input5_28', InputType.text),
      TableRowProps('input5_29', InputType.longText),
      TableRowProps('input5_30', InputType.boolean),
      TableRowProps('input5_31', InputType.option),
      TableRowProps('input5_32', InputType.longText),
      TableRowProps('input5_33', InputType.longText),
      TableRowProps('input5_34', InputType.longText),
      TableRowProps('input5_35', InputType.boolean),
      TableRowProps('input5_36', InputType.text),
      TableRowProps('input5_37', InputType.text),
      TableRowProps('input5_38', InputType.option),
      TableRowProps('input5_39', InputType.longText),
      TableRowProps('input5_40', InputType.longText),
    ],
    [
      // Page 6
      TableRowProps('input6_1', InputType.text),
      TableRowProps('input6_2', InputType.boolean),
      TableRowProps('input6_3', InputType.option),
      TableRowProps('input6_4', InputType.longText),
      TableRowProps('input6_5', InputType.longText),
      TableRowProps('input6_6', InputType.longText),
      TableRowProps('input6_7', InputType.text),
      TableRowProps('input6_8', InputType.text),
      TableRowProps('input6_9', InputType.text),
      TableRowProps('input6_10', InputType.text),
      TableRowProps('input6_11', InputType.boolean),
      TableRowProps('input6_12', InputType.text),
      TableRowProps('input6_13', InputType.text),
      TableRowProps('input6_14', InputType.option),
      TableRowProps('input6_15', InputType.longText),
      TableRowProps('input6_16', InputType.longText),
      TableRowProps('input6_17', InputType.boolean),
      TableRowProps('input6_18', InputType.text),
      TableRowProps('input6_19', InputType.text),
      TableRowProps('input6_20', InputType.option),
      TableRowProps('input6_21', InputType.longText),
      TableRowProps('input6_22', InputType.longText),
      TableRowProps('input6_23', InputType.boolean),
      TableRowProps('input6_24', InputType.text),
      TableRowProps('input6_25', InputType.text),
      TableRowProps('input6_26', InputType.option),
      TableRowProps('input6_27', InputType.longText),
      TableRowProps('input6_28', InputType.longText),
      TableRowProps('input6_29', InputType.longText),
      TableRowProps('input6_30', InputType.boolean),
      TableRowProps('input6_31', InputType.option),
      TableRowProps('input6_32', InputType.longText),
      TableRowProps('input6_33', InputType.longText),
      TableRowProps('input6_34', InputType.longText),
    ],
    [
      // Page 7
      TableRowProps('input7_1', InputType.boolean),
      TableRowProps('input7_2', InputType.text),
      TableRowProps('input7_3', InputType.option),
      TableRowProps('input7_4', InputType.longText),
      TableRowProps('input7_5', InputType.longText),
      TableRowProps('input7_6', InputType.longText),
      TableRowProps('input7_7', InputType.boolean),
      TableRowProps('input7_8', InputType.option),
      TableRowProps('input7_9', InputType.longText),
      TableRowProps('input7_10', InputType.longText),
      TableRowProps('input7_11', InputType.text),
      TableRowProps('input7_12', InputType.text),
      TableRowProps('input7_13', InputType.text),
      TableRowProps('input7_14', InputType.text),
      TableRowProps('input7_15', InputType.text),
      TableRowProps('input7_16', InputType.text),
      TableRowProps('input7_17', InputType.text),
      TableRowProps('input7_18', InputType.text),
      TableRowProps('input7_19', InputType.text),
      TableRowProps('input7_20', InputType.text),
      TableRowProps('input7_21', InputType.text),
      TableRowProps('input7_22', InputType.text),
      TableRowProps('input7_23', InputType.text),
      TableRowProps('input7_24', InputType.text),
      TableRowProps('input7_25', InputType.text),
      TableRowProps('input7_26', InputType.text),
      TableRowProps('input7_27', InputType.boolean, params: {'1': '直接面談', '2': '電話'}),
      TableRowProps('input7_28', InputType.boolean, params: {'1': 'メール', '2': 'その他'}),
      TableRowProps('input7_29', InputType.text),
      TableRowProps('input7_30', InputType.text),
      TableRowProps('input7_31', InputType.text),
      TableRowProps('input7_32', InputType.boolean, params: {'1': '直接面談', '2': '電話'}),
      TableRowProps('input7_33', InputType.boolean, params: {'1': 'メール', '2': 'その他'}),
      TableRowProps('input7_34', InputType.text),
      TableRowProps('input7_35', InputType.text),
      TableRowProps('input7_36', InputType.text),
      TableRowProps('input7_37', InputType.text),
      TableRowProps('input7_38', InputType.text),
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

    return FormDialog(title: '参考様式第 1 - 17 号', tableProps: _tableProps, callback: _callback);
  }
}

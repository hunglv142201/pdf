import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class Test12PdfTemplate extends PDFTemplate {
  Test12PdfTemplate(
    this.input1_1,
    this.input1_2,
    this.input1_3,
    this.input1_4,
  );

  final String? input1_1;
  final String? input1_2;
  final String? input1_3;
  final String? input1_4;

  final pdf = Document();
  late Font font;
  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              _buildText('参考様式第１－２７号', font, fontSize: 13),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 18, bottom: 50),
                child: pw.Center(
                  child: _buildText('公的義務履行に関する説明書', font, fontSize: 13),
                ),
              ),
              _buildText(
                '''
第１   労働関係法令の遵守\n
      労働保険料(適用事業所のみ)\n
第２   社会保険関係法令の遵守\n
  １  健康保険・厚生年金保険の適用事業所の場合\n
      健康保険・厚生年金保険料\n
  ２  健康保険・厚生年金保険の適用事業所の場合ではない場合\n
  （１）事業主の国民健康保険料\n
  （２）事業主の国民年金保険料\n
第３   租税関係の法令遵守 \n
  １  法人の場合 \n
  （１）国税（源泉所得税及び復興特別所得税，法人税，消費税及び地方消費税）\n
  （２）地方税（法人住民税）\n
  ２  個人事業主の場合\n
''',
                font,
                fontSize: 13,
              ),
              _buildText(
                '  （１）国税（源泉所得税及び復興特別所得税，消費税及び地方消費税，相続税，\n       贈与税）',
                font,
                fontSize: 13,
                lineSpacing: 0,
              ),
              _buildText(
                '  （２）地方税（個人住民税）',
                font,
                fontSize: 13,
              ),
              _buildText(
                '  以上のいずれについても，滞納はありません。',
                font,
                fontSize: 13,
              ),
              _buildText(
                '  なお，地方出入国在留管理局から，納付したことの証明を求められた場合には指導に従って関係書類を提出します。',
                font,
                fontSize: 13,
                lineSpacing: 0,
              ),
              _buildText(
                '  また，以上の説明が虚偽であった場合には，入管法令に関し不正又は著しい\n不当な行為をしたものとして５年間の受入れができないこととなることも理解しています。',
                font,
                fontSize: 13,
                lineSpacing: 0,
              ),
              pw.Align(
                alignment: pw.Alignment.centerRight,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 40),
                  child: _buildText((input1_1 ?? '') + ' 年   ' + (input1_2 ?? '') + ' 月   ' + (input1_3 ?? '') + ' 日', font, fontSize: 13),
                ),
              ),
              pw.Center(
                child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 32),
                    child: _buildText('特定技能所属機関名      ' + (input1_4 ?? ''), font, fontSize: 13)),
              ),
            ],
          );
        },
      ),
    );

    return await pdf.save();
  }

  static pw.Widget _buildText(String text, Font font, {double fontSize = 0, double lineSpacing = 3}) {
    if (fontSize == 0) {
      return pw.Text(text, style: pw.TextStyle(font: font));
    } else {
      return pw.Text(text,
          style: pw.TextStyle(
            font: font,
            fontSize: fontSize,
            lineSpacing: lineSpacing,
          ));
    }
  }
}

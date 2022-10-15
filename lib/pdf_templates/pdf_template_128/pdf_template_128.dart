import 'dart:typed_data';

// import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class PdfTemplate128 extends PDFTemplate {
  PdfTemplate128(this.inputs);

  final List<List<String>> inputs;

  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    _buildPage1();
    return await pdf.save();
  }

  void _buildPage1() {
    List<String> ins = inputs[0];
    String year_1 = ins[0].split('/')[0];
    String month_1 = ins[0].split('/')[1];
    String day_1 = ins[0].split('/')[2];

    String year_2 = ins[1].split('/')[0];
    String month_2 = ins[1].split('/')[1];
    String day_2 = ins[1].split('/')[2];

    String year_3 = ins[2].split('/')[0];
    String month_3 = ins[2].split('/')[1];
    String day_3 = ins[2].split('/')[2];

    buildPage(
      pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          _buildText('参考様式第１－２８号', font),
          pw.Padding(
            padding: const pw.EdgeInsets.symmetric(vertical: 64),
            child: pw.Center(child: _buildText('新型コロナウイルス感染症の影響に関する申立書', font)),
          ),
          _buildText(' 私は，在留資格「特定技能１号」で日本に在留していた際，再入国許可による出国（みなし再入国許可による出国を含む。）をしたものの，新型コロナウイルス感染症の影響により再入国できなかった期間があります。', font),
          _buildText(
            ' 下記１から２までの期間について，「特定技能１号」の通算在留期間に関する取扱いにおいて配慮願いたく申し立てます。',
            font,
          ),
          pw.Center(child: _buildText('記', font)),
          pw.Table(
            columnWidths: {
              0: const pw.IntrinsicColumnWidth(),
              1: const pw.IntrinsicColumnWidth(),
              2: const pw.FlexColumnWidth(),
            },
            border: pw.TableBorder.all(),
            defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
            children: [
              pw.TableRow(children: [
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: _buildText('1', font),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: _buildText('再入国許可による出国日', font),
                ),
                pw.Align(
                  alignment: pw.Alignment.centerRight,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: _buildText(year_1 + ' 年  ' + month_1 + ' 月 ' + day_1 + ' 日', font),
                  ),
                ),
              ]),
              pw.TableRow(children: [
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: _buildText('2', font),
                ),
                pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: _buildText('その直後の入国日（注）', font),
                ),
                pw.Align(
                  alignment: pw.Alignment.centerRight,
                  child: pw.Padding(
                    padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: _buildText(year_2 + ' 年  ' + month_2 + ' 月 ' + day_2 + ' 日', font),
                  ),
                ),
              ]),
            ],
          ),
          _buildText('（注）再入国許可による入国日又は新規入国日のいずれか早い日', font),
          pw.Align(
            alignment: pw.Alignment.centerRight,
            child: pw.Padding(
              padding: const pw.EdgeInsets.symmetric(vertical: 64),
              child: _buildText(year_3 + ' 年  ' + month_3 + ' 月 ' + day_3 + ' 日', font),
            ),
          ),
          pw.Center(
            child: pw.Padding(padding: const pw.EdgeInsets.only(left: 32), child: _buildText('申請人署名 ', font)),
          ),
        ],
      ),
    );
  }

  static pw.Widget _buildText(String text, Font font) {
    return pw.Text(text, style: pw.TextStyle(font: font));
  }
}

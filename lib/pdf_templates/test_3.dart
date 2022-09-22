import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class Test3PdfTemplate extends PDFTemplate {
  @override
  Future<Uint8List> build() async {
    final font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              _buildText('参考様式第１－２８号', font),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 64),
                child: pw.Center(child: _buildText('新型コロナウイルス感染症の影響に関する申立書', font)),
              ),
              _buildText(
                  ' 私は，在留資格「特定技能１号」で日本に在留していた際，再入国許可による出国（みなし再入国許可による出国を含む。）をしたものの，新型コロナウイルス感染症の影響により再入国できなかった期間があります。',
                  font),
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
                        child: _buildText('2022 06 01', font),
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
                        child: _buildText('2022 06 01', font),
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
                  child: _buildText('2022 06 01', font),
                ),
              ),
              pw.Center(
                child: pw.Padding(padding: const pw.EdgeInsets.only(left: 32), child: _buildText('申請人署名 ', font)),
              ),
            ],
          );
        },
      ),
    );

    return await pdf.save();
  }

  static pw.Widget _buildText(String text, Font font) {
    return pw.Text(text, style: pw.TextStyle(font: font));
  }
}

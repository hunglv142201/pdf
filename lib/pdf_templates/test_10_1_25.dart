import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class Test10125PdfTemplate extends PDFTemplate {
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
              _buildText('参考様式第 1-25 号', font, fontSize: 13),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 26),
                child: pw.Center(
                    child: _buildText('登録支援機関との支援委託契約に関する説明書', font,
                        fontSize: 13)),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 18, bottom: 30),
                child: pw.Center(
                    child: _buildText(
                        '   登録支援機関との 1 号特定技能外国人支援計画の全部の委託契約の概要は下記\nのとおりです。',
                        font,
                        fontSize: 13)),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(bottom: 10),
                child: pw.Center(child: _buildText('記', font)),
              ),
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
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: _buildText('1', font, fontSize: 11),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: _buildText('申請人 (支援対象者)', font, fontSize: 11),
                    ),
                    pw.Align(
                      alignment: pw.Alignment.center,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: _buildText('KIM DARA', font, fontSize: 11),
                      ),
                    ),
                  ]),
                  pw.TableRow(children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 2, horizontal: 16),
                      child: _buildText('2', font, fontSize: 11),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 2, horizontal: 8),
                      child:
                          _buildText('契約の相手方 (登録支援\n機関)', font, fontSize: 11),
                    ),
                    pw.Align(
                      alignment: pw.Alignment.center,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 2, horizontal: 8),
                        child: _buildText('Cannot take the content!', font,
                            fontSize: 11),
                      ),
                    ),
                  ]),
                  pw.TableRow(children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: _buildText('3', font, fontSize: 11),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: _buildText('契約年月日', font, fontSize: 11),
                    ),
                    pw.Align(
                      alignment: pw.Alignment.center,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child:
                            _buildText('2022 年  01 月 01 日', font, fontSize: 11),
                      ),
                    ),
                  ]),
                  pw.TableRow(children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 2, horizontal: 16),
                      child: _buildText('4', font, fontSize: 11),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 2, horizontal: 8),
                      child: _buildText(
                          '委託する支援業務 ( 1号\n特定技能外国人支援計\n画の全部であること)', font,
                          fontSize: 11),
                    ),
                    pw.Align(
                      alignment: pw.Alignment.center,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 2, horizontal: 8),
                        child: _buildText('該当 ・ 非該当', font, fontSize: 11),
                      ),
                    ),
                  ]),
                  pw.TableRow(children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 2, horizontal: 16),
                      child: _buildText('5', font, fontSize: 11),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 2, horizontal: 8),
                      child: _buildText('委託料(1名当たりの月\n額)', font, fontSize: 11),
                    ),
                    pw.Align(
                      alignment: pw.Alignment.centerRight,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 2, horizontal: 8),
                        child: _buildText('Cannot take the content!', font,
                            fontSize: 11),
                      ),
                    ),
                  ]),
                  pw.TableRow(children: [
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: _buildText('6', font, fontSize: 11),
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      child: _buildText('契約期間', font, fontSize: 11),
                    ),
                    pw.Align(
                      alignment: pw.Alignment.centerRight,
                      child: pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 8, horizontal: 8),
                        child: _buildText(
                            '2022 年  01 月   02 日から   2022 年   01 月   03 日まで',
                            font,
                            fontSize: 10),
                      ),
                    ),
                  ]),
                ],
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 10, bottom: 10),
                child: _buildText('  (注意)', font, fontSize: 9.5),
              ),
              _buildText(
                  '1   項番 1 に関し, 複数の申請人 (同時申請に限る。) について, 全ての項目の内容が同一の場合には「別紙のと\n\t\t\tおり」として別紙を添付して差し支えない。',
                  font,
                  fontSize: 9.5),
              _buildText('2   項番 2 に関し, 登録支援機関登録簿に登録された氏名又は名称を記載すること。', font,
                  fontSize: 9.5),
              pw.Align(
                alignment: pw.Alignment.centerRight,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 40),
                  child:
                      _buildText('2022 年   01 月   04 日', font, fontSize: 9.5),
                ),
              ),
              pw.Center(
                child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 32),
                    child: _buildText('特定技能所属機関の氏名又は名称      ErrorANALOG', font,
                        fontSize: 11)),
              ),
              pw.Center(
                child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 32, top: 40),
                    child: pw.Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildText('作成責任者      役職・氏名         ', font,
                              fontSize: 11),
                          _buildUnderLineText('Error Error', font, fontSize: 11)
                        ])),
              ),
            ],
          );
        },
      ),
    );

    return await pdf.save();
  }

  static pw.Widget _buildText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return pw.Text(text, style: pw.TextStyle(font: font));
    } else {
      return pw.Text(text, style: pw.TextStyle(font: font, fontSize: fontSize));
    }
  }

  static pw.Widget _buildUnderLineText(String text, Font font,
      {double fontSize = 0}) {
    if (fontSize == 0) {
      return pw.Text(text,
          style: pw.TextStyle(
              font: font, decoration: pw.TextDecoration.underline));
    } else {
      return pw.Text(text,
          style: pw.TextStyle(
              font: font,
              fontSize: fontSize,
              decoration: pw.TextDecoration.underline));
    }
  }
}

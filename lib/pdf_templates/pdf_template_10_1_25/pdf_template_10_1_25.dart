import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class Test10125PdfTemplate extends PDFTemplate {
  Test10125PdfTemplate(this.inputs);

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
    String year_1 = ins[3].split('/')[0];
    String month_1 = ins[3].split('/')[1];
    String day_1 = ins[3].split('/')[2];

    String year_2 = ins[6].split('/')[0];
    String month_2 = ins[6].split('/')[1];
    String day_2 = ins[6].split('/')[2];

    String year_3 = ins[7].split('/')[0];
    String month_3 = ins[7].split('/')[1];
    String day_3 = ins[7].split('/')[2];

    String year_4 = ins[8].split('/')[0];
    String month_4 = ins[8].split('/')[1];
    String day_4 = ins[8].split('/')[2];

    buildPage(pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        _buildText('参考様式第 1-25 号', font, fontSize: 13),
        pw.Padding(
          padding: const pw.EdgeInsets.symmetric(vertical: 26),
          child: pw.Center(child: _buildText('登録支援機関との支援委託契約に関する説明書', font, fontSize: 13)),
        ),
        pw.Padding(
          padding: const pw.EdgeInsets.only(top: 18, bottom: 30),
          child: pw.Center(child: _buildText('   登録支援機関との 1 号特定技能外国人支援計画の全部の委託契約の概要は下記\nのとおりです。', font, fontSize: 13)),
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
                padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: _buildText('1', font, fontSize: 11),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: _buildText('申請人 (支援対象者)', font, fontSize: 11),
              ),
              pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: _buildText(ins[0], font, fontSize: 11),
                ),
              ),
            ]),
            pw.TableRow(children: [
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: _buildText('2', font, fontSize: 11),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                child: _buildText('契約の相手方 (登録支援\n機関)', font, fontSize: 11),
              ),
              pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: _buildText('  ' + ins[1] + '  ' + '(  ' + ins[2] + '  ) ', font, fontSize: 11),
                ),
              ),
            ]),
            pw.TableRow(children: [
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: _buildText('3', font, fontSize: 11),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: _buildText('契約年月日', font, fontSize: 11),
              ),
              pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: _buildText(year_1 + ' 年  ' + month_1 + ' 月 ' + day_1 + ' 日', font, fontSize: 11),
                ),
              ),
            ]),
            pw.TableRow(children: [
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: _buildText('4', font, fontSize: 11),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                child: _buildText('委託する支援業務 ( 1号\n特定技能外国人支援計\n画の全部であること)', font, fontSize: 11),
              ),
              pw.Align(
                alignment: pw.Alignment.center,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: _buildOptionInput('該当', '非該当', ins[4], font, fontSize: 11),
                ),
              ),
            ]),
            pw.TableRow(children: [
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                child: _buildText('5', font, fontSize: 11),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                child: _buildText('委託料(1名当たりの月\n額)', font, fontSize: 11),
              ),
              pw.Align(
                alignment: pw.Alignment.centerRight,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  child: _buildText(ins[5] + ' 円', font, fontSize: 11),
                ),
              ),
            ]),
            pw.TableRow(children: [
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: _buildText('6', font, fontSize: 11),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: _buildText('契約期間', font, fontSize: 11),
              ),
              pw.Align(
                alignment: pw.Alignment.centerRight,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: _buildText(year_2 + ' 年  ' + month_2 + ' 月 ' + day_2 + ' 日から     ' + year_3 + ' 年 ' + month_3 + ' 月 ' + day_3 + ' 日まで', font,
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
        _buildText('1   項番 1 に関し, 複数の申請人 (同時申請に限る。) について, 全ての項目の内容が同一の場合には「別紙のと\n\t\t\tおり」として別紙を添付して差し支えない。', font, fontSize: 9.5),
        _buildText('2   項番 2 に関し, 登録支援機関登録簿に登録された氏名又は名称を記載すること。', font, fontSize: 9.5),
        pw.Align(
          alignment: pw.Alignment.centerRight,
          child: pw.Padding(
            padding: const pw.EdgeInsets.symmetric(vertical: 40),
            child: _buildText(year_4 + ' 年  ' + month_4 + ' 月 ' + day_4 + ' 日', font, fontSize: 9.5),
          ),
        ),
        pw.Center(
          child: pw.Padding(padding: const pw.EdgeInsets.only(left: 32), child: _buildText('特定技能所属機関の氏名又は名称          ' + ins[9], font, fontSize: 11)),
        ),
        pw.Center(
          child: pw.Padding(
              padding: const pw.EdgeInsets.only(left: 140, top: 40),
              child: pw.Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                _buildText('作成責任者      役職・氏名         ', font, fontSize: 11),
                pw.Padding(
                  padding: const pw.EdgeInsets.only(left: 26),
                  child: Container(
                    margin: const EdgeInsets.all(2.0),
                    width: 150,
                    decoration: myUnderLine('#000000', width: 0.5),
                    child: _buildText(ins[10] + '   ' + ins[11], font, fontSize: 11),
                  ),
                )
              ])),
        ),
      ],
    ));
  }

  static pw.Widget _buildText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return pw.Text(text, style: pw.TextStyle(font: font));
    } else {
      return pw.Text(text, style: pw.TextStyle(font: font, fontSize: fontSize));
    }
  }

  static pw.Widget _buildUnderLineText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return pw.Text(text, style: pw.TextStyle(font: font, decoration: pw.TextDecoration.underline));
    } else {
      return pw.Text(text, style: pw.TextStyle(font: font, fontSize: fontSize, decoration: pw.TextDecoration.underline));
    }
  }

  static BoxDecoration myUnderLine(String color, {double width = 1}) {
    return BoxDecoration(
        border: pw.Border(
      bottom: BorderSide(
        color: PdfColor.fromHex(color),
        width: width,
      ),
    ));
  }

  Widget _buildOptionInput(String text1, String text2, String value, Font font, {double fontSize = 10}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Stack(children: [
        _buildText(text1, font, fontSize: fontSize),
        _buildText(value == '1' ? '◯' : '', font, fontSize: fontSize),
      ]),
      _buildText(' ・ ', font, fontSize: fontSize),
      Stack(children: [
        _buildText(text2, font, fontSize: fontSize),
        _buildText(value == '2' ? '◯' : '', font, fontSize: fontSize),
      ]),
    ]);
  }
}

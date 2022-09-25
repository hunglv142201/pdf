import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class Test4PdfTemplate extends PDFTemplate {
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
              _buildText('参考様式第1-4号', font, fontSize: 11),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 2),
                child: pw.Center(
                    child: _buildText('特 定 技 能 外 国 人 の 報 酬 に 関 す る 説 明 書', font,
                        fontSize: 14)),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 18, bottom: 8),
                child: pw.Center(
                    child: _buildText(
                        '  申請人に対する報酬については, 以下のとおり,「日本人が従事する場合の報酬の額と同等以\n上であること」を担保しています。',
                        font,
                        fontSize: 11.5)),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 4, bottom: 6),
                child: _buildText(
                  '1  申請人に対する報酬 ',
                  font,
                  fontSize: 12,
                ),
              ),

              pw.Padding(
                padding: const pw.EdgeInsets.only(left: 6, bottom: 6),
                child: pw.Center(
                    child: pw.Table(
                  columnWidths: {
                    0: const pw.FractionColumnWidth(0.38),
                    // 1: const pw.IntrinsicColumnWidth(),
                    1: const pw.FlexColumnWidth(),
                  },
                  border: pw.TableBorder.all(),
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  children: [
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('① 申請人の氏名', font, fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('KIM DARA', font, fontSize: 10),
                      ),
                      // pw.Align(
                      //   alignment: pw.Alignment.centerRight,
                      //   child: pw.Padding(
                      //     padding: const pw.EdgeInsets.symmetric(
                      //         vertical: 4, horizontal: 16),
                      //     child: _buildText('2022 06 01', font),
                      //   ),
                      // ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('② 申請人の役職, 職務内容, 責任の程度', font,
                            fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('Can not take the content!', font,
                            fontSize: 10),
                      ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('③ 申請人の年齢, 性別及び経験年数', font,
                            fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText(
                            '(  22 歳   )     (   男 ・ 女  )    (経験  3   年)', font,
                            fontSize: 10),
                      ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('④ 申請人に対する報酬', font, fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText(
                            '月給    10,000     円 / 時間給    1,154    円', font,
                            fontSize: 10),
                      ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('⑤ その他', font, fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('Can not take the content!', font,
                            fontSize: 10),
                      ),
                    ]),
                  ],
                )),
              ),
              // pw.Center(child: _buildText('記', font)),

              _buildText('  (注意)', font, fontSize: 9),
              _buildText(
                  '1   ① は, 在留カード (申請人が所持していない場合は旅券) と同一の氏名を記載すること。', font,
                  fontSize: 9),
              _buildText('2   ③ の経験年数は, 申請人に従事させる業務に係る経験年数を記載すること。', font,
                  fontSize: 9),
              _buildText(
                  '3   ④ は, 月給及び時間給以外の給与形態の場合については, 月給又は時間給に換算した報酬を記載すること。ま\n\t\t\t\t  た, 月給又は時間給のいずれかを記載することで差し支えないが, 本様式において統一して記載すること。',
                  font,
                  fontSize: 9),
              _buildText(
                  '4   ⑤ は, 報酬以外の諸手当等が支給されている場合など特記すべき事項がある場合に記載すること。', font,
                  fontSize: 9),
              // Table 2
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 12, bottom: 6),
                child: _buildText('2  比較対象となる日本人労働者がいる場合 ', font, fontSize: 12),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(left: 6, bottom: 6),
                child: pw.Center(
                    child: pw.Table(
                  columnWidths: {
                    0: const pw.FractionColumnWidth(0.38),
                    // 1: const pw.IntrinsicColumnWidth(),
                    1: const pw.FlexColumnWidth(),
                  },
                  border: pw.TableBorder.all(),
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  children: [
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText(
                            '① 比較対象となる日本人労働者の役職, 職務内容, 責任の程度', font,
                            fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('Can not take the content!', font,
                            fontSize: 10),
                      ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('② 比較対象となる日本人労働者の年齢, 性別及び経験年数', font,
                            fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText(
                            '(  22 歳   )     (   男 ・ 女  )    (経験  3   年)', font,
                            fontSize: 10),
                      ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('③ 比較対象となる日本人労働者の報酬', font,
                            fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('月給 100 円 / 時間給 50 円', font,
                            fontSize: 10),
                      ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: pw.Container(
                            // margin: pw.EdgeInsets.all(0),
                            padding: const pw.EdgeInsets.all(0),
                            child: pw.Row(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Expanded(
                                      child: pw.Table(
                                          border: pw.TableBorder.all(),
                                          children: [
                                        pw.TableRow(children: [
                                          pw.Container(
                                              height: 108,
                                              child: pw.Center(
                                                  child: _buildText(
                                                      '④ 賃金規程の有無\n及び賃金規程に基\nづく賃金',
                                                      font,
                                                      fontSize: 10)))
                                        ])
                                      ])),
                                  pw.Expanded(
                                      child: pw.Table(
                                          border: pw.TableBorder.all(),
                                          children: [
                                        pw.TableRow(children: [
                                          pw.Container(
                                              height: 30,
                                              child: pw.Center(
                                                  child: _buildText(
                                                      '規程の有無', font,
                                                      fontSize: 10)))
                                        ]),
                                        pw.TableRow(children: [
                                          pw.Container(
                                              height: 78,
                                              child: pw.Center(
                                                  child: _buildText(
                                                      '有の場合', font,
                                                      fontSize: 10)))
                                        ]),
                                      ])),
                                ])),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: pw.Row(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Expanded(
                                child: pw.Table(
                                    border: pw.TableBorder.all(),
                                    children: [
                                  pw.TableRow(children: [
                                    pw.Container(
                                        height: 30,
                                        child: pw.Center(
                                            child: _buildText('有 ・ 無', font,
                                                fontSize: 10)))
                                  ]),
                                  pw.TableRow(children: [
                                    pw.Container(
                                        height: 78,
                                        child: pw.Center(
                                            child: _buildText(
                                                '賃金規程に基づき, 申請人と役職, 職務内容, 責任の程度が同等 の日本人労働者に支払われるべき報酬 \n 月給 10,000 円 / 時間給 5,000 円',
                                                font,
                                                fontSize: 10))),
                                  ]),
                                ])),
                          ],
                        ),
                      ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText(
                            '⑤ 申請人に対する報酬が日本人が従事\nする場合の報酬の額と同等以上である\nと考える理由',
                            font,
                            fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('Can not take the content!', font,
                            fontSize: 10),
                      ),
                    ]),
                    pw.TableRow(children: [
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('⑥ その他', font, fontSize: 10),
                      ),
                      pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            vertical: 4, horizontal: 2),
                        child: _buildText('Can not take the content!', font,
                            fontSize: 10),
                      ),
                    ]),
                  ],
                )),
              ),

              _buildText('  (注意)', font, fontSize: 9),
              _buildText(
                  '1   ① は, 比較対象となる日本人労働者の役職, 職務内容, 責任の程度が, 申請人と同等であることを示すこと。',
                  font,
                  fontSize: 9),
              _buildText('2   ② の経験年数は, 比較対象となる日本人労働者の経験年数を記載すること。', font,
                  fontSize: 9),
              _buildText(
                  '3   ③ は, 月給及び時間給以外の給与形態の場合については, 月給又は時間給に換算した報酬を記載すること。ま\n\t\t\t\t  た, 月給又は時間給のいずれかを記載すればよいが, 本様式において統一して記載すること。',
                  font,
                  fontSize: 9),
              _buildText(
                  '4   ④ は, 賃金規程を作成している場合には, 必ず「有」を丸印で囲むこと。また, 賃金規程に基づき, 申請人と',
                  font,
                  fontSize: 9),
              pw.Align(
                alignment: pw.Alignment.centerRight,
                child: pw.Padding(
                  padding: const pw.EdgeInsets.symmetric(vertical: 64),
                  child: _buildText('2022 06 01', font),
                ),
              ),
              pw.Center(
                child: pw.Padding(
                    padding: const pw.EdgeInsets.only(left: 32),
                    child: _buildText('申請人署名 ', font)),
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
}

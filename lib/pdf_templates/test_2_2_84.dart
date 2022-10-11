import 'dart:typed_data';
import 'dart:async';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class Test84PdfTemplate extends PDFTemplate {
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
              pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.end,
                children: [
                  pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                    pw.Padding(padding: const pw.EdgeInsets.fromLTRB(0, 0, 10, 0), child: _buildText('別記第八十四号様式（第六十一条関係', font, fontSize: 11)),
                    pw.Padding(
                        padding: const pw.EdgeInsets.fromLTRB(0, 0, 25, 0),
                        child: _buildText('Annex No. 84 (Related to Article 61)', Font.times(), fontSize: 10)),
                    pw.Padding(padding: const pw.EdgeInsets.fromLTRB(0, 30, 0, 0), child: _buildText('日本国政府法務省', font, fontSize: 11)),
                    pw.Padding(
                        padding: const pw.EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: _buildText('Ministry of Justice, Government of Japan', Font.times(), fontSize: 10))
                  ]),

                  pw.Padding(padding: const pw.EdgeInsets.symmetric(horizontal: 40)),
                  // 番 号 Box
                  pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                    pw.Padding(padding: const pw.EdgeInsets.fromLTRB(0, 10, 0, 15)),
                    pw.Container(
                        decoration: pw.BoxDecoration(border: pw.Border.all(color: PdfColors.black)),
                        alignment: pw.Alignment.centerLeft,
                        height: 70,
                        width: 200,
                        padding: const pw.EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: _buildText('番 号\nNo.', font, fontSize: 10))
                  ])
                ],
              ),
              // Big box
              pw.Container(
                  padding: const pw.EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: pw.BoxDecoration(border: pw.Border.all(color: PdfColors.black)),
                  child: pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                    // Table for Year Month Day
                    pw.Container(
                      margin: const pw.EdgeInsets.fromLTRB(0, 0, 10, 0),
                      alignment: pw.Alignment.centerRight,
                      child: pw.Table(
                          defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
                          tableWidth: TableWidth.min,
                          border: const pw.TableBorder(),
                          columnWidths: const {
                            0: pw.FixedColumnWidth(35),
                            1: pw.FixedColumnWidth(25),
                            2: pw.FixedColumnWidth(20),
                            3: pw.FixedColumnWidth(35),
                            4: pw.FixedColumnWidth(20),
                            5: pw.FixedColumnWidth(20),
                          },
                          children: [
                            pw.TableRow(
                              children: [
                                _buildText('2022', font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText('年', font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText('06', font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText('月', font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText('28', font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText('日', font, fontSize: 11, textAlign: TextAlign.center),
                              ],
                            ),
                            pw.TableRow(
                              children: [
                                _buildText('', font, fontSize: 11),
                                _buildText('Year', Font.times(), fontSize: 10),
                                _buildText('', font, fontSize: 11),
                                _buildText('Month', Font.times(), fontSize: 10),
                                _buildText('', font, fontSize: 11),
                                _buildText('Day', Font.times(), fontSize: 10),
                              ],
                            ),
                          ]),
                    ),

                    pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                          //CERTIFICATE FOR PAYMENT
                          pw.Padding(
                              padding: const pw.EdgeInsets.fromLTRB(130, 0, 10, 0),
                              child: _buildText('手      数      料      納      付      書', font,
                                  fontSize: 12, fontWeight: FontWeight.bold, textAlign: TextAlign.center)),
                          pw.Padding(
                              padding: const pw.EdgeInsets.fromLTRB(108, 0, 10, 0),
                              child: _buildText('CERTIFICATE FOR PAYMENT OF FEE', Font.times(),
                                  fontSize: 12, fontWeight: FontWeight.bold, textAlign: TextAlign.center)),
                          pw.Padding(
                              padding: const pw.EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: _buildText('法        務        大       臣\n出入国在留管理庁長官      殿', font, fontSize: 12, fontWeight: FontWeight.bold)),
                          pw.Padding(
                              padding: const pw.EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: _buildText(
                                  'To      the Minister of Justice\n          the Commissioner of the Immigration Services Agency', Font.times(),
                                  fontSize: 10)),
                        ]),
                        // Empty space
                        pw.Padding(padding: const pw.EdgeInsets.symmetric(horizontal: 22)),
                        // Revenue Stamp Box
                        pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                          pw.Padding(padding: const pw.EdgeInsets.fromLTRB(0, 8, 0, 12)),
                          pw.Container(
                            decoration: pw.BoxDecoration(border: pw.Border.all(color: PdfColors.black)),
                            alignment: pw.Alignment.center,
                            padding: const pw.EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                            child: _buildText('印\n紙\nRevenue Stamp', font,
                                fontSize: 10, textAlign: TextAlign.center, lineSpacing: 10, fontWeight: FontWeight.bold),
                          )
                        ])
                      ],
                    ),
                    // Table for Year Month Day
                    pw.Container(
                        margin: const pw.EdgeInsets.fromLTRB(0, 10, 40, 0),
                        alignment: pw.Alignment.centerRight,
                        child: pw.Column(children: [
                          // 金 table
                          pw.Table(
                              defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
                              tableWidth: TableWidth.min,
                              border: const pw.TableBorder(),
                              columnWidths: const {
                                0: pw.FixedColumnWidth(35),
                                1: pw.FixedColumnWidth(75),
                                2: pw.FixedColumnWidth(125),
                              },
                              children: [
                                pw.TableRow(
                                  children: [
                                    _buildText('金', font, fontSize: 11, textAlign: TextAlign.left),
                                    _buildText('１,０００円', font, fontSize: 11, textAlign: TextAlign.center),
                                    _buildText('円 也 （￥１,０００円 ）', font, fontSize: 11, textAlign: TextAlign.center),
                                  ],
                                ),
                              ]),
                          // Yen table
                          pw.Table(
                              defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
                              tableWidth: TableWidth.min,
                              border: const pw.TableBorder(),
                              columnWidths: const {
                                0: pw.FixedColumnWidth(35),
                                1: pw.FixedColumnWidth(200),
                              },
                              children: [
                                pw.TableRow(
                                  children: [
                                    _buildText('Yen', Font.times(), fontSize: 11, textAlign: TextAlign.left),
                                    pw.Container(
                                      margin: const pw.EdgeInsets.fromLTRB(0, 0, 15, 0),
                                      decoration: const pw.BoxDecoration(border: pw.Border(bottom: pw.BorderSide(width: 2))),
                                      child: _buildText('１,０００円', font, fontSize: 11, textAlign: TextAlign.center),
                                    )
                                  ],
                                ),
                              ]),
                        ])),

                    pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                      pw.Padding(padding: const pw.EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      _buildText('         出入国管理及び難民認定法第67条，第67条の2又は第68条の規定により，', font, fontSize: 10, fontWeight: FontWeight.bold),
                      _buildText(
                          '          In accordance with Article 67,67-2 or 68 of the Immigration Control and Refugee Recognition Act,\n          I hereby pay the amount shown as fee for permission for',
                          Font.times(),
                          fontSize: 10),
                      pw.Padding(padding: const pw.EdgeInsets.fromLTRB(0, 20, 0, 0)),
                    ]),
                    // 上記金額を table
                    pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
                      _buildText('上記金額を', font, fontSize: 10, textAlign: pw.TextAlign.center),
                      // Open curly bracket
                      // Reason table
                      pw.Table(
                          defaultVerticalAlignment: pw.TableCellVerticalAlignment.middle,
                          tableWidth: TableWidth.min,
                          border: const pw.TableBorder(),
                          columnWidths: const {
                            0: pw.FixedColumnWidth(35),
                            1: pw.FixedColumnWidth(210),
                          },
                          children: [
                            // Row 1
                            pw.TableRow(
                              children: [
                                _buildText('①', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.stretch, children: [
                                  _buildText('在 留 資 格 の 変 更 許 可', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Change of status of residence', Font.times(), fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 2
                            pw.TableRow(
                              children: [
                                _buildText('②', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.stretch, children: [
                                  _buildText('在 留 期 間 の 更 新 許 可', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Extension of period of stay', Font.times(), fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 3
                            pw.TableRow(
                              children: [
                                _buildText('③', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.stretch, children: [
                                  _buildText('永 住 許 可', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Permanent residence', Font.times(), fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 4
                            pw.TableRow(
                              children: [
                                _buildText('④', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.stretch, children: [
                                  _buildText('再入国（一回限り・数次有効）の許可', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Single / Multiple Re-entry into Japan', Font.times(), fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 5
                            pw.TableRow(
                              children: [
                                _buildText('⑤', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.stretch, children: [
                                  _buildText('特 定 登 録 者 カ ー ド の 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Issuance of Registered user card', Font.times(), fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 6
                            pw.TableRow(
                              children: [
                                _buildText('⑥', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.stretch, children: [
                                  _buildText('特 定 登 録 者 カ ー ド の 再 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Re-issuance of Registered user card', Font.times(), fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 7
                            pw.TableRow(
                              children: [
                                _buildText('⑦', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.stretch, children: [
                                  _buildText('就 労 資 格 証 明 書 の 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Certificate of Qualification to Work', Font.times(), fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 8
                            pw.TableRow(
                              children: [
                                _buildText('⑧', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.stretch, children: [
                                  _buildText('在 留 カ ー ド の 再 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Re-issuance(optional renewal) of Residence card', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 9
                            pw.TableRow(
                              children: [
                                _buildText('⑨', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
                                  _buildText('難 民 旅 行 証 明 書 の 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Refugee Travel Document', Font.times(), fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                          ]),
                      // Closed curly bracket
                      // final openBracket
                      // pw.SvgImage(
                      //   svg:
                      //       '''<svg width="19" height="331" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" overflow="visible"><defs><clipPath id="clip0"><rect x="1236" y="418" width="19" height="331"/></clipPath></defs><g clip-path="url(#clip0)" transform="translate(-1236 -418)"><path d="M1254.5 748.5C1249.53 748.5 1245.5 744.498 1245.5 739.562L1245.5 592.438C1245.5 587.502 1241.47 583.5 1236.5 583.5 1241.47 583.5 1245.5 579.498 1245.5 574.562L1245.5 427.438C1245.5 422.502 1249.53 418.5 1254.5 418.5" stroke="#000000" stroke-width="1.14583" stroke-miterlimit="8" fill="none" fill-rule="evenodd"/></g></svg>''',
                      // ),
                      _buildText('手数料として納付いたします。', font, fontSize: 10, textAlign: pw.TextAlign.center),
                    ]),
                    // Signature table
                    pw.Padding(padding: const pw.EdgeInsets.symmetric(vertical: 15)),
                    pw.Row(mainAxisAlignment: pw.MainAxisAlignment.end, children: [
                      pw.Table(
                          defaultVerticalAlignment: pw.TableCellVerticalAlignment.bottom,
                          tableWidth: TableWidth.min,
                          border: const pw.TableBorder(),
                          columnWidths: const {
                            0: pw.FixedColumnWidth(75),
                            1: pw.FixedColumnWidth(150),
                          },
                          children: [
                            // 納付者氏名 row
                            pw.TableRow(
                              children: [
                                _buildText('納付者氏名', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Container(
                                  margin: const pw.EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  decoration: const pw.BoxDecoration(border: pw.Border(bottom: pw.BorderSide(width: 2))),
                                )
                              ],
                            ),
                            // 記 名 row
                            pw.TableRow(
                              children: [
                                _buildText('', font, fontSize: 11, textAlign: TextAlign.center),
                                pw.Container(
                                  margin: const pw.EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  decoration: const pw.BoxDecoration(border: pw.Border(top: pw.BorderSide(width: 2))),
                                  child: _buildText('記          名', font, fontSize: 11, textAlign: TextAlign.center),
                                )
                              ],
                            ),
                            // Name row
                            pw.TableRow(
                              children: [
                                _buildText('', font, fontSize: 11, textAlign: TextAlign.left),
                                pw.Container(
                                  margin: const pw.EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  decoration: const pw.BoxDecoration(border: pw.Border()),
                                  child: _buildText('  Name', Font.times(), fontSize: 11, textAlign: TextAlign.center),
                                )
                              ],
                            ),
                          ]),
                    ]),
                  ])),

              // 注 the last section
              pw.Padding(padding: const pw.EdgeInsets.fromLTRB(0, 0, 0, 0), child: _buildText('（注）用紙の大きさは，日本産業規格Ａ列４番とする。', font, fontSize: 11)),
              pw.Padding(
                  padding: const pw.EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: _buildText('Note: Paper size must be A-4 as specified in the Japanese Industrial Standards.', Font.times(), fontSize: 11)),
            ],
          );
        },
      ),
    );

    return await pdf.save();
  }

  static pw.Widget _buildText(String text, Font font,
      {double fontSize = 0, fontWeight = FontWeight.normal, textAlign = TextAlign.left, lineSpacing = 0}) {
    if (fontSize == 0) {
      return pw.Text(text, style: pw.TextStyle(font: font));
    } else {
      return pw.Text(text,
          textAlign: textAlign, style: pw.TextStyle(font: font, fontSize: fontSize, fontWeight: fontWeight, lineSpacing: lineSpacing));
    }
  }
}

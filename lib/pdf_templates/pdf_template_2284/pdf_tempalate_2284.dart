import 'dart:async';
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class PdfTemplate2284 extends PDFTemplate {
  PdfTemplate2284(this.inputs);

  final List<List<String>> inputs;

  @override
  Future<Uint8List> build() async {
    final font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    final pdf = Document();
    pdf.addPage(
      Page(
        pageFormat: PdfPageFormat.a4,
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: _buildText('別記第八十四号様式（第六十一条関係', font, fontSize: 11)),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                        child: _buildText('Annex No. 84 (Related to Article 61)', Font.times(), fontSize: 10)),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                        child: _buildText('日本国政府法務省', font, fontSize: 11)),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: _buildText('Ministry of Justice, Government of Japan', Font.times(), fontSize: 10))
                  ]),

                  Padding(padding: const EdgeInsets.symmetric(horizontal: 40)),
                  // 番 号 Box
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 15)),
                    Container(
                        decoration: BoxDecoration(border: Border.all(color: PdfColors.black)),
                        alignment: Alignment.centerLeft,
                        height: 70,
                        width: 200,
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: _buildText('番 号\nNo.', font, fontSize: 10))
                  ])
                ],
              ),
              // Big box
              Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(border: Border.all(color: PdfColors.black)),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    // Table for Year Month Day
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      alignment: Alignment.centerRight,
                      child: Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          tableWidth: TableWidth.min,
                          border: const TableBorder(),
                          columnWidths: const {
                            0: FixedColumnWidth(35),
                            1: FixedColumnWidth(25),
                            2: FixedColumnWidth(20),
                            3: FixedColumnWidth(35),
                            4: FixedColumnWidth(20),
                            5: FixedColumnWidth(20),
                          },
                          children: [
                            TableRow(
                              children: [
                                _buildText(inputs[0][0].split('/')[0], font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText('年', font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText(inputs[0][0].split('/')[1], font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText('月', font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText(inputs[0][0].split('/')[2], font, fontSize: 11, textAlign: TextAlign.center),
                                _buildText('日', font, fontSize: 11, textAlign: TextAlign.center),
                              ],
                            ),
                            TableRow(
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

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          //CERTIFICATE FOR PAYMENT
                          Padding(
                              padding: const EdgeInsets.fromLTRB(130, 0, 10, 0),
                              child: _buildText('手      数      料      納      付      書', font,
                                  fontSize: 12, fontWeight: FontWeight.bold, textAlign: TextAlign.center)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(108, 0, 10, 0),
                              child: _buildText('CERTIFICATE FOR PAYMENT OF FEE', Font.times(),
                                  fontSize: 12, fontWeight: FontWeight.bold, textAlign: TextAlign.center)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: _buildText('法        務        大       臣\n出入国在留管理庁長官      殿', font,
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                          Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: _buildText(
                                  'To      the Minister of Justice\n          the Commissioner of the Immigration Services Agency',
                                  Font.times(),
                                  fontSize: 10)),
                        ]),
                        // Empty space
                        Padding(padding: const EdgeInsets.symmetric(horizontal: 22)),
                        // Revenue Stamp Box
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 12)),
                          Container(
                            decoration: BoxDecoration(border: Border.all(color: PdfColors.black)),
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                            child: _buildText('印\n紙\nRevenue Stamp', font,
                                fontSize: 10,
                                textAlign: TextAlign.center,
                                lineSpacing: 10,
                                fontWeight: FontWeight.bold),
                          )
                        ])
                      ],
                    ),
                    // Table for Year Month Day
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 40, 0),
                        alignment: Alignment.centerRight,
                        child: Column(children: [
                          // 金 table
                          Table(
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              tableWidth: TableWidth.min,
                              border: const TableBorder(),
                              columnWidths: const {
                                0: FixedColumnWidth(35),
                                1: FixedColumnWidth(75),
                                2: FixedColumnWidth(125),
                              },
                              children: [
                                TableRow(
                                  children: [
                                    _buildText('金', font, fontSize: 11, textAlign: TextAlign.left),
                                    _buildText(inputs[0][1] + ' 円', font, fontSize: 11, textAlign: TextAlign.center),
                                    _buildText('円 也 （￥ ' + inputs[0][2] + ' 円 ）', font,
                                        fontSize: 11, textAlign: TextAlign.center),
                                  ],
                                ),
                              ]),
                          // Yen table
                          Table(
                              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                              tableWidth: TableWidth.min,
                              border: const TableBorder(),
                              columnWidths: const {
                                0: FixedColumnWidth(35),
                                1: FixedColumnWidth(200),
                              },
                              children: [
                                TableRow(
                                  children: [
                                    _buildText('Yen', Font.times(), fontSize: 11, textAlign: TextAlign.left),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                      decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 2))),
                                      child: _buildText(inputs[0][3] + '円', font,
                                          fontSize: 11, textAlign: TextAlign.center),
                                    )
                                  ],
                                ),
                              ]),
                        ])),

                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Padding(padding: const EdgeInsets.fromLTRB(0, 10, 0, 0)),
                      _buildText('         出入国管理及び難民認定法第67条，第67条の2又は第68条の規定により，', font,
                          fontSize: 10, fontWeight: FontWeight.bold),
                      _buildText(
                          '          In accordance with Article 67,67-2 or 68 of the Immigration Control and Refugee Recognition Act,\n          I hereby pay the amount shown as fee for permission for',
                          Font.times(),
                          fontSize: 10),
                      Padding(padding: const EdgeInsets.fromLTRB(0, 20, 0, 0)),
                    ]),
                    // 上記金額を table
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      _buildText('上記金額を', font, fontSize: 10, textAlign: TextAlign.center),
                      // Open curly bracket
                      // Reason table
                      Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          tableWidth: TableWidth.min,
                          border: const TableBorder(),
                          columnWidths: const {
                            0: FixedColumnWidth(35),
                            1: FixedColumnWidth(210),
                          },
                          children: [
                            // Row 1
                            TableRow(
                              children: [
                                _buildText('①', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                  _buildText('在 留 資 格 の 変 更 許 可', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Change of status of residence', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 2
                            TableRow(
                              children: [
                                _buildText('②', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                  _buildText('在 留 期 間 の 更 新 許 可', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Extension of period of stay', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 3
                            TableRow(
                              children: [
                                _buildText('③', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                  _buildText('永 住 許 可', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Permanent residence', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 4
                            TableRow(
                              children: [
                                _buildText('④', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                  _buildText('再入国（一回限り・数次有効）の許可', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Single / Multiple Re-entry into Japan', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 5
                            TableRow(
                              children: [
                                _buildText('⑤', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                  _buildText('特 定 登 録 者 カ ー ド の 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Issuance of Registered user card', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 6
                            TableRow(
                              children: [
                                _buildText('⑥', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                  _buildText('特 定 登 録 者 カ ー ド の 再 交 付', font,
                                      fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Re-issuance of Registered user card', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 7
                            TableRow(
                              children: [
                                _buildText('⑦', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                  _buildText('就 労 資 格 証 明 書 の 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Certificate of Qualification to Work', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 8
                            TableRow(
                              children: [
                                _buildText('⑧', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                                  _buildText('在 留 カ ー ド の 再 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Re-issuance(optional renewal) of Residence card', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                            // Row 9
                            TableRow(
                              children: [
                                _buildText('⑨', font, fontSize: 11, textAlign: TextAlign.center),
                                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  _buildText('難 民 旅 行 証 明 書 の 交 付', font, fontSize: 11, textAlign: TextAlign.justify),
                                  _buildText('Refugee Travel Document', Font.times(),
                                      fontSize: 10, textAlign: TextAlign.justify),
                                ])
                              ],
                            ),
                          ]),
                      _buildText('手数料として納付いたします。', font, fontSize: 10, textAlign: TextAlign.center),
                    ]),
                    // Signature table
                    Padding(padding: const EdgeInsets.symmetric(vertical: 15)),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      Table(
                          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                          tableWidth: TableWidth.min,
                          border: const TableBorder(),
                          columnWidths: const {
                            0: FixedColumnWidth(75),
                            1: FixedColumnWidth(150),
                          },
                          children: [
                            // 納付者氏名 row
                            TableRow(
                              children: [
                                _buildText('納付者氏名', font, fontSize: 11, textAlign: TextAlign.center),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  decoration: const BoxDecoration(border: Border(bottom: BorderSide(width: 2))),
                                )
                              ],
                            ),
                            // 記 名 row
                            TableRow(
                              children: [
                                _buildText('', font, fontSize: 11, textAlign: TextAlign.center),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  decoration: const BoxDecoration(border: Border(top: BorderSide(width: 2))),
                                  child: _buildText('記          名', font, fontSize: 11, textAlign: TextAlign.center),
                                )
                              ],
                            ),
                            // Name row
                            TableRow(
                              children: [
                                _buildText('', font, fontSize: 11, textAlign: TextAlign.left),
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  decoration: const BoxDecoration(border: Border()),
                                  child: _buildText('  Name', Font.times(), fontSize: 11, textAlign: TextAlign.center),
                                )
                              ],
                            ),
                          ]),
                    ]),
                  ])),

              // 注 the last section
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: _buildText('（注）用紙の大きさは，日本産業規格Ａ列４番とする。', font, fontSize: 11)),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: _buildText(
                      'Note: Paper size must be A-4 as specified in the Japanese Industrial Standards.', Font.times(),
                      fontSize: 11)),
            ],
          );
        },
      ),
    );

    return await pdf.save();
  }

  static Widget _buildText(String text, Font font,
      {double fontSize = 0, fontWeight = FontWeight.normal, textAlign = TextAlign.left, lineSpacing = 0}) {
    if (fontSize == 0) {
      return Text(text, style: TextStyle(font: font));
    } else {
      return Text(text,
          textAlign: textAlign,
          style: TextStyle(font: font, fontSize: fontSize, fontWeight: fontWeight, lineSpacing: lineSpacing));
    }
  }
}

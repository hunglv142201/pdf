import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class PdfTemplate11127 extends PDFTemplate {
  @override
  Future<Uint8List> build() async {
    final font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        // pageFormat: PdfPageFormat.a4,
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 2.0 * cm,
            marginBottom: 0.5 * cm,
            marginLeft: 2.0 * cm,
            marginRight: 2.0 * cm),
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: -36),
                child: _buildText('参考様式第 １－１ １ 号', font, fontSize: 11),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.symmetric(vertical: 2),
                child: pw.Center(
                    child: _buildText('特  定  技  能  所  属  機  関  概  要  書', font,
                        fontSize: 14)),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 4, bottom: 2),
                child: _buildText(
                  '1    所属役員',
                  font,
                  fontSize: 11,
                ),
              ),
              // ---------- Table 1 ------------
              pw.Padding(
                padding:
                    const pw.EdgeInsets.only(left: 6, bottom: 6, right: -30),
                child: pw.Center(
                    child: pw.Table(
                  columnWidths: {
                    0: const pw.FractionColumnWidth(0.32),
                    1: const pw.FractionColumnWidth(0.384),
                    2: const pw.FlexColumnWidth(),
                  },
                  border: pw.TableBorder.all(),
                  defaultVerticalAlignment:
                      pw.TableCellVerticalAlignment.middle,
                  children: [
                    pw.TableRow(children: [
                      // First Coulumn
                      pw.Padding(
                          padding: const pw.EdgeInsets.symmetric(
                              vertical: 4, horizontal: 2),
                          child: pw.Center(
                            child: _buildText(
                                '\t\t\t\t\t\t\t   (ふりがな）\n(1) 役    員     氏    名',
                                font,
                                fontSize: 10),
                          )),
                      // Second Column
                      pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '	① ', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 8,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 19,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 26,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                ' ', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '	② ', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 8,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 19,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 26,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                ' ', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '	③ ', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 8,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 19,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 26,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                ' ', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '	④ ', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 8,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 19,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 26,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                ' ', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '	⑤ ', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 8,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 19,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 26,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                ' ', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 2,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '	⑥ ', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 8,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 19,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 26,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                ' ', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                          ]),
                      // Third Column
                      pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '役職', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 7,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '役職', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 7,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '役職', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 7,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '役職', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 7,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '役職', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 7,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                            pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0),
                              child: pw.Container(
                                  padding: const pw.EdgeInsets.all(0),
                                  child: pw.Row(
                                      crossAxisAlignment:
                                          pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Expanded(
                                            flex: 3,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: _buildText(
                                                            '役職', font,
                                                            fontSize: 10))
                                                  ])
                                                ])),
                                        pw.Expanded(
                                            flex: 7,
                                            child: pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 45,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 4,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '', font,
                                                                fontSize: 10)))
                                                  ]),
                                                ])),
                                      ])),
                            ),
                          ])
                    ]),
                  ],
                )),
              ),
              _buildText('  (注意)', font, fontSize: 8),
              pw.Padding(
                padding: const pw.EdgeInsets.only(right: -30),
                child: _buildText(
                    '  役員が複数名いる場合は, その全てについて記載すること。なお, 役員を記載しきれない場合は,「別紙のとおり」と記載し, 別紙を添付する\nこととして差し支えない。',
                    font,
                    fontSize: 8),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 8, bottom: 2),
                child: _buildText(
                  '2    決算状況',
                  font,
                  fontSize: 11,
                ),
              ),
              // ---------- Table 2 ------------
              pw.Padding(
                  padding: const pw.EdgeInsets.only(left: 6, right: -30),
                  child: pw.Center(
                    child: pw.Table(
                      columnWidths: {
                        0: const pw.FractionColumnWidth(0.25),
                        1: const pw.FractionColumnWidth(0.25),
                        2: const pw.FractionColumnWidth(0.25),
                        3: const pw.FlexColumnWidth(),
                      },
                      border: pw.TableBorder.all(),
                      defaultVerticalAlignment:
                          pw.TableCellVerticalAlignment.middle,
                      children: [
                        pw.TableRow(children: [
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(
                                vertical: 4, horizontal: 16),
                            child: _buildText('', font),
                          ),
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              child: pw.Center(
                                child: _buildText('前年度', font, fontSize: 10),
                              )),
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              child: pw.Center(
                                child: _buildText('前々年度', font, fontSize: 10),
                              )),
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              child: pw.Center(
                                child: _buildText('前々々年度', font, fontSize: 10),
                              )),
                        ]),
                        pw.TableRow(children: [
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              child: pw.Center(
                                child: _buildText('売上高', font, fontSize: 10),
                              )),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                        ]),
                        pw.TableRow(children: [
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              child: pw.Center(
                                child: _buildText('経常損益', font, fontSize: 10),
                              )),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                        ]),
                        pw.TableRow(children: [
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              child: pw.Center(
                                child: _buildText('純損益', font, fontSize: 10),
                              )),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                        ]),
                        pw.TableRow(children: [
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 16),
                              child: pw.Center(
                                child: _buildText('純資産', font, fontSize: 10),
                              )),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                          pw.Align(
                            alignment: pw.Alignment.centerRight,
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 6),
                              child: _buildText('     円', font, fontSize: 10),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  )),
              _buildText('  (注意)', font, fontSize: 8),
              pw.Padding(
                padding: const pw.EdgeInsets.only(right: -30),
                child: _buildText(
                    '1    個人事業主の場合には, 純資産の欄に所得税青色申告決算書の貸借対照表における元入金を記載してください。',
                    font,
                    fontSize: 8),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(right: -30),
                child: _buildText(
                    '2    前年度末において債務超過 (純資産の欄がマイナス) がある場合には, 中小企業診断士, 税理士, 公認会計士等の企業評価を行う能力が\n\t\tあると認められる公的資格を有する第三者が改善の見通しについて評価を行った書面を添付してください。',
                    font,
                    fontSize: 8),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(top: 8, bottom: 2),
                child: _buildText(
                  '3    基準適合性に係る事項',
                  font,
                  fontSize: 11,
                ),
              ),
              pw.Padding(
                  padding:
                      const pw.EdgeInsets.only(left: 6, bottom: 2, right: -30),
                  child: pw.Center(
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                        pw.Table(
                            columnWidths: {
                              0: const pw.FractionColumnWidth(0.35),
                              1: const pw.FlexColumnWidth(),
                            },
                            border: pw.TableBorder.all(),
                            defaultVerticalAlignment:
                                pw.TableCellVerticalAlignment.middle,
                            children: [
                              pw.TableRow(children: [
                                // First Coulumn
                                pw.Padding(
                                  padding: const pw.EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 0),
                                  child: pw.Container(
                                      padding: const pw.EdgeInsets.all(0),
                                      child: pw.Row(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Expanded(
                                                flex: 45,
                                                child: pw.Table(
                                                    border:
                                                        pw.TableBorder.all(),
                                                    children: [
                                                      pw.TableRow(children: [
                                                        pw.Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height: 84,
                                                            padding: const pw
                                                                    .EdgeInsets.symmetric(
                                                                vertical: 4,
                                                                horizontal: 2),
                                                            child: _buildText(
                                                                '  (1)   過去 1 年に\nおける特定技能外\n国人と同種の業務\nに従事する労働者\nの離職状況',
                                                                font,
                                                                fontSize: 9))
                                                      ])
                                                    ])),
                                            pw.Expanded(
                                                flex: 55,
                                                child: pw.Table(
                                                    border:
                                                        pw.TableBorder.all(),
                                                    children: [
                                                      pw.TableRow(children: [
                                                        pw.Container(
                                                            height: 32,
                                                            padding: const pw
                                                                    .EdgeInsets.symmetric(
                                                                vertical: 4,
                                                                horizontal: 2),
                                                            child: pw.Center(
                                                                child:
                                                                    _buildText(
                                                                        '',
                                                                        font,
                                                                        fontSize:
                                                                            9)))
                                                      ]),
                                                      pw.TableRow(children: [
                                                        pw.Container(
                                                            height: 26,
                                                            padding: const pw
                                                                    .EdgeInsets.symmetric(
                                                                vertical: 4,
                                                                horizontal: 2),
                                                            child: pw.Center(
                                                                child: _buildText(
                                                                    '日本人労働者',
                                                                    font,
                                                                    fontSize:
                                                                        9)))
                                                      ]),
                                                      pw.TableRow(children: [
                                                        pw.Container(
                                                            height: 26,
                                                            padding: const pw
                                                                    .EdgeInsets.symmetric(
                                                                vertical: 4,
                                                                horizontal: 2),
                                                            child: pw.Center(
                                                                child: _buildText(
                                                                    '外国人労働者',
                                                                    font,
                                                                    fontSize:
                                                                        9)))
                                                      ]),
                                                    ])),
                                          ])),
                                ),
                                // Second Column
                                pw.Padding(
                                  padding: const pw.EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 0),
                                  child: pw.Container(
                                      padding: const pw.EdgeInsets.all(0),
                                      child: pw.Column(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Table(
                                                border: pw.TableBorder.all(),
                                                children: [
                                                  pw.TableRow(children: [
                                                    pw.Container(
                                                        height: 16,
                                                        padding: const pw
                                                                .EdgeInsets.symmetric(
                                                            vertical: 2,
                                                            horizontal: 2),
                                                        child: pw.Center(
                                                            child: _buildText(
                                                                '離職理由', font,
                                                                fontSize: 9)))
                                                  ]),
                                                  pw.TableRow(children: [
                                                    pw.Center(
                                                      child: pw.Table(
                                                        columnWidths: {
                                                          0: const pw
                                                                  .FractionColumnWidth(
                                                              0.5),
                                                          1: const pw
                                                              .FlexColumnWidth(),
                                                        },
                                                        border: pw.TableBorder
                                                            .all(),
                                                        defaultVerticalAlignment:
                                                            pw.TableCellVerticalAlignment
                                                                .middle,
                                                        children: [
                                                          pw.TableRow(
                                                              children: [
                                                                pw.Container(
                                                                    height: 16,
                                                                    padding: const pw
                                                                            .EdgeInsets.symmetric(
                                                                        vertical:
                                                                            2,
                                                                        horizontal:
                                                                            2),
                                                                    child: pw.Center(
                                                                        child: _buildText(
                                                                            '自発的離職者',
                                                                            font,
                                                                            fontSize:
                                                                                9))),
                                                                pw.Container(
                                                                    height: 16,
                                                                    padding: const pw
                                                                            .EdgeInsets.symmetric(
                                                                        vertical:
                                                                            2,
                                                                        horizontal:
                                                                            2),
                                                                    child: pw.Center(
                                                                        child: _buildText(
                                                                            '非自発的離職者',
                                                                            font,
                                                                            fontSize:
                                                                                9))),
                                                              ]),
                                                          pw.TableRow(
                                                              children: [
                                                                pw.Container(
                                                                    height: 26,
                                                                    padding: const pw
                                                                            .EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4,
                                                                        horizontal:
                                                                            2),
                                                                    alignment: pw
                                                                        .Alignment
                                                                        .centerRight,
                                                                    child: _buildText(
                                                                        '1 名',
                                                                        font,
                                                                        fontSize:
                                                                            9)),
                                                                pw.Container(
                                                                    height: 26,
                                                                    padding: const pw
                                                                            .EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4,
                                                                        horizontal:
                                                                            2),
                                                                    alignment: pw
                                                                        .Alignment
                                                                        .centerRight,
                                                                    child: _buildText(
                                                                        '3 名',
                                                                        font,
                                                                        fontSize:
                                                                            9)),
                                                              ]),
                                                          pw.TableRow(
                                                              children: [
                                                                pw.Container(
                                                                    height: 26,
                                                                    padding: const pw
                                                                            .EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4,
                                                                        horizontal:
                                                                            2),
                                                                    alignment: pw
                                                                        .Alignment
                                                                        .centerRight,
                                                                    child: _buildText(
                                                                        '2 名',
                                                                        font,
                                                                        fontSize:
                                                                            9)),
                                                                pw.Container(
                                                                    height: 26,
                                                                    padding: const pw
                                                                            .EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4,
                                                                        horizontal:
                                                                            2),
                                                                    alignment: pw
                                                                        .Alignment
                                                                        .centerRight,
                                                                    child: _buildText(
                                                                        '4 名',
                                                                        font,
                                                                        fontSize:
                                                                            9)),
                                                              ]),
                                                        ],
                                                      ),
                                                    )
                                                  ]),
                                                ]),
                                          ])),
                                ),
                              ]),
                            ]),
                        pw.Table(
                            columnWidths: {
                              0: const pw.FractionColumnWidth(0.35),
                              1: const pw.FlexColumnWidth(),
                            },
                            border: pw.TableBorder.all(),
                            defaultVerticalAlignment:
                                pw.TableCellVerticalAlignment.middle,
                            children: [
                              pw.TableRow(children: [
                                // First Coulumn
                                pw.Padding(
                                  padding: const pw.EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 0),
                                  child: pw.Container(
                                      padding: const pw.EdgeInsets.all(0),
                                      child: pw.Row(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Expanded(
                                                flex: 45,
                                                child: pw.Table(
                                                    border:
                                                        pw.TableBorder.all(),
                                                    children: [
                                                      pw.TableRow(children: [
                                                        pw.Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height: 70,
                                                            padding: const pw
                                                                    .EdgeInsets.symmetric(
                                                                vertical: 4,
                                                                horizontal: 2),
                                                            child: _buildText(
                                                                '  (2)   前 1 年間の\n行方不明者数',
                                                                font,
                                                                fontSize: 9))
                                                      ])
                                                    ])),
                                            pw.Expanded(
                                                flex: 55,
                                                child: pw.Table(
                                                    border:
                                                        pw.TableBorder.all(),
                                                    children: [
                                                      pw.TableRow(children: [
                                                        pw.Container(
                                                            height: 35,
                                                            padding: const pw
                                                                    .EdgeInsets.symmetric(
                                                                vertical: 4,
                                                                horizontal: 2),
                                                            child: pw.Center(
                                                                child: _buildText(
                                                                    ' 特    定   技   能\n 1 号及び 2 号',
                                                                    font,
                                                                    fontSize:
                                                                        9)))
                                                      ]),
                                                      pw.TableRow(children: [
                                                        pw.Container(
                                                            height: 35,
                                                            padding: const pw
                                                                    .EdgeInsets.symmetric(
                                                                vertical: 4,
                                                                horizontal: 2),
                                                            child: pw.Center(
                                                                child:
                                                                    _buildText(
                                                                        '技能実習',
                                                                        font,
                                                                        fontSize:
                                                                            9)))
                                                      ]),
                                                    ])),
                                          ])),
                                ),
                                // Second Column
                                pw.Padding(
                                    padding: const pw.EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 0),
                                    child: pw.Table(
                                        columnWidths: {
                                          0: const pw.FractionColumnWidth(0.5),
                                          1: const pw.FractionColumnWidth(0.25),
                                          2: const pw.FlexColumnWidth(),
                                        },
                                        border: pw.TableBorder.all(),
                                        children: [
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 35,
                                                padding: const pw
                                                        .EdgeInsets.symmetric(
                                                    vertical: 2, horizontal: 2),
                                                alignment:
                                                    pw.Alignment.centerRight,
                                                child: _buildText('5 名', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 35,
                                                padding: const pw
                                                        .EdgeInsets.symmetric(
                                                    vertical: 2, horizontal: 2),
                                                alignment: pw.Alignment.center,
                                                child: _buildText(
                                                    'うち責めに帰すべき\n事由による行方不明',
                                                    font,
                                                    fontSize: 8.5)),
                                            pw.Container(
                                              height: 35,
                                              padding:
                                                  const pw.EdgeInsets.symmetric(
                                                      vertical: 4,
                                                      horizontal: 2),
                                              alignment: pw.Alignment.center,
                                              child: pw.Column(
                                                children: [
                                                  pw.Row(children: [
                                                    Checkbox(
                                                      name: '',
                                                      value: true,
                                                      width: 8,
                                                      height: 8,
                                                      activeColor:
                                                          PdfColor.fromHex(
                                                              '#000000'),
                                                    ),
                                                    _buildText(' 該当あり', font,
                                                        fontSize: 9),
                                                  ]),
                                                  pw.Row(children: [
                                                    Checkbox(
                                                      name: '',
                                                      value: false,
                                                      width: 8,
                                                      height: 8,
                                                      activeColor:
                                                          PdfColor.fromHex(
                                                              '#000000'),
                                                    ),
                                                    _buildText(' 該当なし', font,
                                                        fontSize: 9),
                                                  ]),
                                                ],
                                              ),
                                            ),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 35,
                                                padding: const pw
                                                        .EdgeInsets.symmetric(
                                                    vertical: 2, horizontal: 2),
                                                alignment:
                                                    pw.Alignment.centerRight,
                                                child: _buildText('6 名', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 35,
                                                padding: const pw
                                                        .EdgeInsets.symmetric(
                                                    vertical: 2, horizontal: 2),
                                                alignment: pw.Alignment.center,
                                                child: _buildText(
                                                    'うち責めに帰すべき\n事由による行方不明',
                                                    font,
                                                    fontSize: 8.5)),
                                            pw.Container(
                                              height: 35,
                                              padding:
                                                  const pw.EdgeInsets.symmetric(
                                                      vertical: 2,
                                                      horizontal: 2),
                                              alignment: pw.Alignment.center,
                                              child: pw.Column(
                                                children: [
                                                  pw.Row(children: [
                                                    Checkbox(
                                                      name: '',
                                                      value: true,
                                                      width: 8,
                                                      height: 8,
                                                      activeColor:
                                                          PdfColor.fromHex(
                                                              '#000000'),
                                                    ),
                                                    _buildText(' 該当あり', font,
                                                        fontSize: 9),
                                                  ]),
                                                  pw.Row(children: [
                                                    Checkbox(
                                                      name: '',
                                                      value: false,
                                                      width: 8,
                                                      height: 8,
                                                      activeColor:
                                                          PdfColor.fromHex(
                                                              '#000000'),
                                                    ),
                                                    _buildText(' 該当なし', font,
                                                        fontSize: 9),
                                                  ]),
                                                ],
                                              ),
                                            ),
                                          ]),
                                        ])),
                              ]),
                            ]),
                      ]))),
              _buildText('  (注意)', font, fontSize: 8),
              pw.Padding(
                padding: const pw.EdgeInsets.only(right: -30, left: 8),
                child: _buildText(
                    '1    (1) の「自発的離職」とは, 特定技能外国人の自己都合による転職や退職をいい,「非自発的離職」とは, 特定技能所属機関の経営\n\t\t上の都合により, 人員整理を行うために希望退職を募集したり又は退職勧奨を行った場合等をいう。',
                    font,
                    fontSize: 8),
              ),
              pw.Padding(
                padding: const pw.EdgeInsets.only(right: -30, left: 8),
                child: _buildText(
                    '2    (2) の「外国人労働者」とは, 入管法別表第 1の1, 2 及び5の表 (就労資格に限る) の在留資格をもって在留する者をいう。',
                    font,
                    fontSize: 8),
              ),
            ],
          );
        },
      ),
    );

    pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Padding(
            padding: const pw.EdgeInsets.only(right: -30, left: 8, top: -10),
            child: _buildText(
                '3    (2) は, 特定技能所属機関が雇用する特定技能外国人の過去 1 年間における行方不明者の発生状況について, 行方不明者が発生して\n\t\tいる場合はその発生人数を, 発生していない場合は0名と記載すること。また, 特定技能所属機関の責めに帰すべき事由により行方不明\n\t\t者が発生している場合は「該当あり」に, 特定技能所属機関の責めによらない理由で行方不明者が発生している場合は「該当なし」にチ\n\t\tェックマークを付すこと。',
                font,
                fontSize: 8),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(right: -30, left: 8),
            child: _buildText(
                '4    (2) は, 特定技能所属機関が, 技能実習制度における実習実施者である場合は, 過去1年間における技能実習生の行方不明者の発生\n\t\t状況についても記載すること。',
                font,
                fontSize: 8),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(top: 8, bottom: 2),
            child: _buildText(
              '4    中長期在留者の受入れ実績等 (1 号特定技能外国人支援計画の全部の実施を登録支援機関に委託す\n\t\tる場合は記載不要)',
              font,
              fontSize: 10.6,
            ),
          ),
          // ---------- Table 4 ------------
          pw.Padding(
              padding: const pw.EdgeInsets.only(left: 6, right: -30),
              child: pw.Center(
                  child: pw.Table(
                      columnWidths: {
                        0: const pw.FractionColumnWidth(0.0435),
                        1: const pw.FractionColumnWidth(0.3),
                        2: const pw.FlexColumnWidth(),
                      },
                      border: pw.TableBorder.all(),
                      children: [
                        pw.TableRow(children: [
                          pw.Padding(
                              padding: const pw.EdgeInsets.only(
                                  top: 36, left: 2, right: 2),
                              child: pw.Center(
                                child: Checkbox(
                                  name: '',
                                  value: true,
                                  width: 8,
                                  height: 8,
                                  activeColor: PdfColor.fromHex('#000000'),
                                ),
                              )),
                          pw.Padding(
                            padding: const pw.EdgeInsets.only(
                                top: 26, bottom: 10, left: 2, right: 2),
                            child: _buildText(
                                '   (1) 過去 2 年間にわたり中長期\n在留者の受入れを適正に行った実\n績',
                                font,
                                fontSize: 9),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            child: pw.Table(
                                columnWidths: {
                                  0: const pw.FractionColumnWidth(0.188),
                                  1: const pw.FractionColumnWidth(0.333),
                                  2: const pw.FlexColumnWidth(),
                                },
                                border: pw.TableBorder.all(),
                                children: [
                                  pw.TableRow(children: [
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 2),
                                        child: pw.Center(
                                          child:
                                              _buildText('', font, fontSize: 9),
                                        )),
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 2),
                                        child: pw.Center(
                                          child: _buildText('受入れ人数', font,
                                              fontSize: 9),
                                        )),
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 2),
                                        child: pw.Center(
                                          child: _buildText('受入れ期間中の法令遵守', font,
                                              fontSize: 9),
                                        )),
                                  ]),
                                  pw.TableRow(children: [
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 2),
                                        child: pw.Center(
                                          child: _buildText('直近 1 年前', font,
                                              fontSize: 9),
                                        )),
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 2),
                                        child: pw.Container(
                                          alignment: pw.Alignment.centerRight,
                                          child: _buildText('7 名', font,
                                              fontSize: 9),
                                        )),
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 2),
                                        child: pw.Container(
                                          alignment: pw.Alignment.centerLeft,
                                          child: pw.Column(
                                            children: [
                                              pw.Row(children: [
                                                Checkbox(
                                                  name: '',
                                                  value: true,
                                                  width: 8,
                                                  height: 8,
                                                  activeColor: PdfColor.fromHex(
                                                      '#000000'),
                                                ),
                                                _buildText(' 法令遵守', font,
                                                    fontSize: 9),
                                              ]),
                                              pw.Row(children: [
                                                Checkbox(
                                                  name: '',
                                                  value: false,
                                                  width: 8,
                                                  height: 8,
                                                  activeColor: PdfColor.fromHex(
                                                      '#000000'),
                                                ),
                                                _buildText(' 法令違反・行政指導あり', font,
                                                    fontSize: 9),
                                              ]),
                                            ],
                                          ),
                                        )),
                                  ]),
                                  pw.TableRow(children: [
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 2),
                                        child: pw.Center(
                                          child: _buildText('直近 2 年前', font,
                                              fontSize: 9),
                                        )),
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 2),
                                        child: pw.Container(
                                          alignment: pw.Alignment.centerRight,
                                          child: _buildText('8 名', font,
                                              fontSize: 9),
                                        )),
                                    pw.Padding(
                                        padding: const pw.EdgeInsets.symmetric(
                                            vertical: 4, horizontal: 2),
                                        child: pw.Container(
                                          alignment: pw.Alignment.centerLeft,
                                          child: pw.Column(
                                            children: [
                                              pw.Row(children: [
                                                Checkbox(
                                                  name: '',
                                                  value: true,
                                                  width: 8,
                                                  height: 8,
                                                  activeColor: PdfColor.fromHex(
                                                      '#000000'),
                                                ),
                                                _buildText(' 法令遵守', font,
                                                    fontSize: 9),
                                              ]),
                                              pw.Row(children: [
                                                Checkbox(
                                                  name: '',
                                                  value: false,
                                                  width: 8,
                                                  height: 8,
                                                  activeColor: PdfColor.fromHex(
                                                      '#000000'),
                                                ),
                                                _buildText(' 法令違反・行政指導あり', font,
                                                    fontSize: 9),
                                              ]),
                                            ],
                                          ),
                                        )),
                                  ]),
                                ]),
                          ),
                        ]),
                        pw.TableRow(children: [
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 22, horizontal: 2),
                              child: pw.Center(
                                child: Checkbox(
                                  name: '',
                                  value: true,
                                  width: 8,
                                  height: 8,
                                  activeColor: PdfColor.fromHex('#000000'),
                                ),
                              )),
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(
                                vertical: 4, horizontal: 2),
                            child: _buildText(
                                ' (2) 支援責任者及び支援担当者\nが過去 2 年間に中長期在留者の生\n活相談業務に従事した実績を有す\nること',
                                font,
                                fontSize: 9),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(
                                vertical: 16, horizontal: 2),
                            child: pw.Center(
                                child: _buildText(
                                    ' (注意 : 記載不要。ただし,「支援責任者の履歴書 (参考様式第 1-20 号) 」及び「支援担当\n者の履歴書 (参考様式第 1-22 号) 」に記載した上, 添付すること。',
                                    font,
                                    fontSize: 8)),
                          ),
                        ]),
                        pw.TableRow(children: [
                          pw.Padding(
                              padding: const pw.EdgeInsets.symmetric(
                                  vertical: 36, horizontal: 2),
                              child: pw.Center(
                                child: Checkbox(
                                  name: '',
                                  value: true,
                                  width: 8,
                                  height: 8,
                                  activeColor: PdfColor.fromHex('#000000'),
                                ),
                              )),
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(
                                vertical: 16, horizontal: 2),
                            child: _buildText(
                                ' (3) (1) 及び (2) に掲げるも\nののほか,これらの者と同程度に\n支援業務を適正に実施することが\nできること',
                                font,
                                fontSize: 9),
                          ),
                          pw.Padding(
                            padding: const pw.EdgeInsets.symmetric(
                                vertical: 0, horizontal: 0),
                            child: pw.Container(
                                child: pw.Row(
                                    crossAxisAlignment:
                                        pw.CrossAxisAlignment.start,
                                    children: [
                                  pw.Expanded(
                                      flex: 52,
                                      child: pw.Column(
                                          crossAxisAlignment:
                                              pw.CrossAxisAlignment.start,
                                          children: [
                                            pw.Padding(
                                                padding: const pw
                                                        .EdgeInsets.symmetric(
                                                    vertical: 4, horizontal: 2),
                                                child: pw.Center(
                                                  child: _buildText(
                                                      ' (注意:該当することを立証する資料を必ず添\n付すること)',
                                                      font,
                                                      fontSize: 8),
                                                )),
                                            pw.Padding(
                                                padding: const pw
                                                        .EdgeInsets.symmetric(
                                                    horizontal: 2),
                                                child: _buildText(
                                                    ' User Input!', font,
                                                    fontSize: 10)),
                                          ])),
                                  pw.Expanded(
                                      flex: 48,
                                      child: pw.Table(
                                          border: pw.TableBorder.all(),
                                          children: [
                                            pw.TableRow(children: [
                                              pw.Container(
                                                  height: 30,
                                                  child: pw.Center(
                                                    child: _buildText(
                                                        '過去 5 年間に労働基準監督署から是\n正勧告を受けたことの有無',
                                                        font,
                                                        fontSize: 9),
                                                  ))
                                            ]),
                                            pw.TableRow(children: [
                                              pw.Container(
                                                height: 60,
                                                padding: const pw
                                                        .EdgeInsets.symmetric(
                                                    vertical: 16,
                                                    horizontal: 2),
                                                alignment:
                                                    pw.Alignment.centerLeft,
                                                child: pw.Column(
                                                  children: [
                                                    pw.Row(children: [
                                                      Checkbox(
                                                        name: '',
                                                        value: true,
                                                        width: 8,
                                                        height: 8,
                                                        activeColor:
                                                            PdfColor.fromHex(
                                                                '#000000'),
                                                      ),
                                                      _buildText(
                                                          ' 是正勧告あり', font,
                                                          fontSize: 9),
                                                    ]),
                                                    pw.Row(children: [
                                                      Checkbox(
                                                        name: '',
                                                        value: false,
                                                        width: 8,
                                                        height: 8,
                                                        activeColor:
                                                            PdfColor.fromHex(
                                                                '#000000'),
                                                      ),
                                                      _buildText(
                                                          ' 是正勧告なし', font,
                                                          fontSize: 9),
                                                    ]),
                                                  ],
                                                ),
                                              )
                                            ])
                                          ])),
                                ])),
                          ),
                        ]),
                      ]))),
          _buildText('  (注意)', font, fontSize: 8),
          pw.Padding(
            padding: const pw.EdgeInsets.only(right: -30, left: 8),
            child: _buildText(
                '1    本欄は (1) から (3) 欄の該当するものにチェックマークを付した上, 記載すること。', font,
                fontSize: 8),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(right: -30, left: 8),
            child: _buildText(
                '2    「中長期在留者」とは, 入管法別表第 1 の 1, 2 及び 5 (就労資格に限る) の在留資格を有する者をいう。',
                font,
                fontSize: 8),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(right: -30, left: 8),
            child: _buildText(
                '3    (1) 欄の「適正に行った」とは, 入管法, 技能実習法及び労働基準法など出入国又は労働に関する法令の規定に違反したことによ\n\t\t\tり, ① 刑に処せられたこと, ② 行政処分を受けたことのほか, ③ 技能実習法上の改善命令又は技能実習法施行前の旧技能実習制度にお\n\t\t\tける改善指導 (旧上陸基準省令の 1 6 号イからソまでのいずれかに該当するものに限る。) を受けていないことをいう。適正に行ってい\n\t\t\tる場合は「法令遵守」に, 適正に行っていない場合は「法令違反・行政指導あり」にチェックマークを付すこと。',
                font,
                fontSize: 8),
          ),
          pw.Padding(
              padding: const pw.EdgeInsets.only(top: 8, bottom: 2),
              child: pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    _buildText(
                      '5    支援体制に関する事項',
                      font,
                      fontSize: 10.6,
                    ),
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(top: 2),
                      child: _buildText(
                        '   （ １ 号特定技能外国人支援計画の全部の実施を登録支援機関に委託する場合は記載不要。）',
                        font,
                        fontSize: 9,
                      ),
                    )
                  ])),
          // -------- Table 5 --------
          pw.Padding(
              padding: const pw.EdgeInsets.only(left: 6, right: -30),
              child: pw.Center(
                  child: pw.Table(
                      columnWidths: {
                        0: const pw.FractionColumnWidth(0.032),
                        1: const pw.FractionColumnWidth(0.323),
                        2: const pw.FractionColumnWidth(0.323),
                        3: const pw.FlexColumnWidth(),
                      },
                      border: pw.TableBorder.all(),
                      defaultVerticalAlignment:
                          pw.TableCellVerticalAlignment.middle,
                      children: [
                        pw.TableRow(children: [
                          // First Column
                          pw.Container(
                              height: 136,
                              child: pw.Table(
                                  border: pw.TableBorder.all(),
                                  children: [
                                    pw.TableRow(children: [
                                      pw.Container(
                                        height: 58,
                                        child:
                                            _buildText('', font, fontSize: 9),
                                      )
                                    ]),
                                    pw.TableRow(children: [
                                      pw.Container(
                                        height: 26,
                                        alignment: pw.Alignment.center,
                                        child:
                                            _buildText('1', font, fontSize: 9),
                                      )
                                    ]),
                                    pw.TableRow(children: [
                                      pw.Container(
                                        alignment: pw.Alignment.center,
                                        height: 26,
                                        child:
                                            _buildText('2', font, fontSize: 9),
                                      )
                                    ]),
                                    pw.TableRow(children: [
                                      pw.Container(
                                        alignment: pw.Alignment.center,
                                        height: 26,
                                        child:
                                            _buildText('3', font, fontSize: 9),
                                      )
                                    ]),
                                  ])),
                          // Second Column
                          pw.Container(
                              height: 136,
                              child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Container(
                                        height: 16,
                                        child: pw.Center(
                                          child: _buildText(
                                              '支援対象者 (申請人) ', font,
                                              fontSize: 9),
                                        )),
                                    pw.Table(
                                        columnWidths: {
                                          0: const pw.FractionColumnWidth(0.5),
                                          1: const pw.FlexColumnWidth(),
                                        },
                                        border: pw.TableBorder.all(),
                                        children: [
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 42,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('氏名', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 42,
                                                alignment: pw.Alignment.center,
                                                child: _buildText(
                                                    '所属部署\n\t\t\t役職', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                        ])
                                  ])),
                          // Third Column
                          pw.Container(
                              height: 136,
                              child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Container(
                                        height: 16,
                                        child: pw.Center(
                                          child: _buildText('支援責任者', font,
                                              fontSize: 9),
                                        )),
                                    pw.Table(
                                        columnWidths: {
                                          0: const pw.FractionColumnWidth(0.5),
                                          1: const pw.FlexColumnWidth(),
                                        },
                                        border: pw.TableBorder.all(),
                                        children: [
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 42,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('氏名', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 42,
                                                alignment: pw.Alignment.center,
                                                child: _buildText(
                                                    '所属部署\n\t\t\t役職', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                        ])
                                  ])),
                          // Fourth Column
                          pw.Container(
                              height: 136,
                              child: pw.Column(
                                  crossAxisAlignment:
                                      pw.CrossAxisAlignment.start,
                                  children: [
                                    pw.Container(
                                        height: 16,
                                        child: pw.Center(
                                          child: _buildText('支援担当者', font,
                                              fontSize: 9),
                                        )),
                                    pw.Table(
                                        columnWidths: {
                                          0: const pw.FractionColumnWidth(0.5),
                                          1: const pw.FlexColumnWidth(),
                                        },
                                        border: pw.TableBorder.all(),
                                        children: [
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 42,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('氏名', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 42,
                                                alignment: pw.Alignment.center,
                                                child: _buildText(
                                                    '所属部署\n\t\t\t役職', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                          pw.TableRow(children: [
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                            pw.Container(
                                                height: 26,
                                                alignment: pw.Alignment.center,
                                                child: _buildText('----', font,
                                                    fontSize: 9)),
                                          ]),
                                        ])
                                  ])),
                        ]),
                      ]))),
          _buildText('  (注意)', font, fontSize: 8),
          pw.Padding(
            padding: const pw.EdgeInsets.only(right: -30, left: 8),
            child: _buildText(
                '申請人全員について記載しきれない場合は,「別紙のとおり」と記載し, 別紙を添付することとして差し支えない。', font,
                fontSize: 8),
          ),
          pw.Padding(
            padding: const pw.EdgeInsets.only(top: 8),
            child: _buildText('上記の記載内容は, 事実と相違ありません。', font, fontSize: 9.5),
          ),
          pw.Align(
            alignment: pw.Alignment.centerRight,
            child: pw.Padding(
              padding:
                  const pw.EdgeInsets.only(top: 16, bottom: 16, right: -30),
              child: _buildText('2022 年   01 月   04 日', font, fontSize: 11),
            ),
          ),
          pw.Center(
            child: pw.Padding(
                padding: const pw.EdgeInsets.only(left: 120, top: -10),
                child: _buildText('特定技能所属機関の氏名又は名称      NullANALOG', font,
                    fontSize: 9.5)),
          ),
          pw.Center(
            child: pw.Padding(
                padding: const pw.EdgeInsets.only(left: 228, top: 20),
                child: pw.Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildText('作成責任者      役職・氏名     ', font, fontSize: 9.5),
                      pw.Padding(
                        padding: const pw.EdgeInsets.only(left: 0),
                        child: Container(
                          margin: const EdgeInsets.all(2.0),
                          width: 150,
                          child:
                              _buildText('Null    Null', font, fontSize: 9.5),
                        ),
                      )
                    ])),
          ),
        ]);
      },
    ));

    return await pdf.save();
  }

  static pw.Widget _buildText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return pw.Text(text, style: pw.TextStyle(font: font));
    } else {
      return pw.Text(text, style: pw.TextStyle(font: font, fontSize: fontSize));
    }
  }

  static const double inch = 72.0;
  static const double cm = inch / 2.54;
}

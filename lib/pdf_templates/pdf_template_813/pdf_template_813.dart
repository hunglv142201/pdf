import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';

class PdfTemplate813 extends PDFTemplate {
  PdfTemplate813(this.inputs);

  final List<List<String>> inputs;

  late Font font;
  late Font fontMedium;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    fontMedium = await PdfGoogleFonts.mPLUSRounded1cMedium();
    final pdf = Document();

    List<String> ins = inputs[0];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 1 * cm,
            marginBottom: 1 * cm,
            marginLeft: 1.5 * cm,
            marginRight: 1.0 * cm),
        build: (Context context) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildText('参考様式第 1 - 3 号', font, fontSize: 11),
                SizedBox(height: 6),
                Center(
                    child:
                        _buildText('健  康  診  断  個  人  票', font, fontSize: 16)),
                SizedBox(height: 6),
                Table(border: TableBorder.all(), children: [
                  // Row 1
                  TableRow(children: [
                    Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.191),
                          1: const FractionColumnWidth(0.247),
                          2: const FractionColumnWidth(0.112),
                          3: const FractionColumnWidth(0.165),
                          4: const FractionColumnWidth(0.124),
                          5: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            // Column 1
                            Container(
                                height: 40,
                                alignment: Alignment.center,
                                child: _buildText(' 氏              名 ', font,
                                    fontSize: 10)),
                            // Column 2
                            Container(
                                height: 40,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(left: 2),
                                child: Column(children: [
                                  Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      padding:
                                          const EdgeInsets.only(bottom: -10),
                                      child: _buildText(ins[0], font,
                                          fontSize: 10)),
                                  Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(top: -10),
                                      child: _buildText(ins[1], font,
                                          fontSize: 10)),
                                ])),
                            // Column 3
                            Container(
                                height: 40,
                                alignment: Alignment.center,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      child: _buildText(' 生 年 月 日', font,
                                          fontSize: 10),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      child: _buildText(' 性     別 ', font,
                                          fontSize: 10),
                                    )
                                  ]),
                                ])),
                            // Column 4
                            Container(
                                height: 40,
                                alignment: Alignment.center,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                      height: 20,
                                      alignment: Alignment.centerRight,
                                      child: _buildText(
                                          (ins[2] == ''
                                                  ? ''
                                                  : ins[2].split('/')[0]) +
                                              ' 年 ' +
                                              (ins[2] == ''
                                                  ? ''
                                                  : ins[2].split('/')[1]) +
                                              ' 月 ' +
                                              (ins[2] == ''
                                                  ? ''
                                                  : ins[2].split('/')[2]) +
                                              ' 日 ',
                                          font,
                                          fontSize: 9),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      height: 20,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Stack(children: [
                                              _buildText('男', font,
                                                  fontSize: 10),
                                              _buildText(
                                                  ins[3] == '1' ? '◯' : '',
                                                  font,
                                                  fontSize: 12)
                                            ]),
                                            _buildText('   ・   ', font,
                                                fontSize: 10),
                                            Stack(children: [
                                              _buildText('女', font,
                                                  fontSize: 10),
                                              _buildText(
                                                  ins[3] == '2' ? '◯' : '',
                                                  font,
                                                  fontSize: 12)
                                            ])
                                          ]),
                                    )
                                  ]),
                                ])),
                            // Column 5
                            Container(
                                height: 40,
                                alignment: Alignment.center,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      child: _buildText('検 診 年 月 日', font,
                                          fontSize: 10),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      child: _buildText('年       齢', font,
                                          fontSize: 10),
                                    )
                                  ]),
                                ])),
                            // Column 6
                            Container(
                                height: 40,
                                alignment: Alignment.center,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                      height: 20,
                                      alignment: Alignment.centerRight,
                                      child: _buildText(
                                          (ins[5] == ''
                                                  ? ''
                                                  : ins[5].split('/')[0]) +
                                              ' 年 ' +
                                              (ins[5] == ''
                                                  ? ''
                                                  : ins[5].split('/')[1]) +
                                              ' 月 ' +
                                              (ins[5] == ''
                                                  ? ''
                                                  : ins[5].split('/')[2]) +
                                              ' 日 ',
                                          font,
                                          fontSize: 9),
                                    )
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      height: 20,
                                      alignment: Alignment.center,
                                      child: _buildText(ins[4] + ' 歳', font,
                                          fontSize: 10),
                                    )
                                  ]),
                                ])),
                          ]),
                        ])
                  ]),
                  // Row 2
                  TableRow(children: [
                    Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.191),
                          1: const FractionColumnWidth(0.302),
                          2: const FractionColumnWidth(0.394),
                          3: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            // Column 1
                            Container(
                                height: 60,
                                alignment: Alignment.topCenter,
                                child: _buildText(
                                    '業           務         歴', font,
                                    fontSize: 10)),
                            // Column 2
                            Container(
                                height: 60,
                                child: _buildText('', font, fontSize: 10)),
                            // Column 3
                            Container(
                                height: 60,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        alignment: Alignment.center,
                                        child: _buildText(
                                            '血                    圧                                (mmHg)',
                                            font,
                                            fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 40,
                                        child: Table(
                                            columnWidths: {
                                              0: const FractionColumnWidth(
                                                  0.323),
                                              1: const FlexColumnWidth(),
                                            },
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                Container(
                                                    height: 40,
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: _buildText(
                                                        '貧  血  検  査', font,
                                                        fontSize: 10)),
                                                Table(
                                                    border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(
                                                            height: 20,
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: _buildText(
                                                                ' 血   色   素   量       (g/d )',
                                                                font,
                                                                fontSize: 10)),
                                                      ]),
                                                      TableRow(children: [
                                                        Container(
                                                            height: 20,
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: _buildText(
                                                                ' 赤血球数 (万/mm )',
                                                                font,
                                                                fontSize: 10)),
                                                      ]),
                                                    ])
                                              ])
                                            ]))
                                  ]),
                                ])),
                            // Column 4
                            Container(
                                height: 60,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child: _buildText('.', font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child: _buildText(' ', font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child: _buildText(' ', font,
                                            fontSize: 10)),
                                  ]),
                                ])),
                          ])
                        ])
                  ]),
                  // Row 3
                  TableRow(children: [
                    Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.191),
                          1: const FractionColumnWidth(0.302),
                          2: const FractionColumnWidth(0.394),
                          3: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            // Column 1
                            Container(
                                height: 60,
                                alignment: Alignment.topCenter,
                                child: _buildText(
                                    '既           往         歴', font,
                                    fontSize: 10)),
                            // Column 2
                            Container(
                                height: 60,
                                child: _buildText('', font, fontSize: 10)),
                            // Column 3
                            Container(
                                height: 60,
                                child: Table(
                                    columnWidths: {
                                      0: const FractionColumnWidth(0.323),
                                      1: const FlexColumnWidth(),
                                    },
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(children: [
                                        Container(
                                            height: 60,
                                            // alignment: Alignment.topCenter,
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: _buildText('肝機能検査', font,
                                                fontSize: 10)),
                                        Table(
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                Container(
                                                    height: 20,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: _buildText(
                                                        ' G       O       T           ( IU/      )',
                                                        font,
                                                        fontSize: 10)),
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 20,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: _buildText(
                                                        ' G       P       T           ( IU/      )',
                                                        font,
                                                        fontSize: 10)),
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 20,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: _buildText(
                                                        ' γ   -   G   T   P         ( IU/      )',
                                                        font,
                                                        fontSize: 10)),
                                              ]),
                                            ])
                                      ])
                                    ])),

                            // Column 4
                            Container(
                                height: 60,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child: _buildText('.', font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child: _buildText(' ', font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child: _buildText(' ', font,
                                            fontSize: 10)),
                                  ]),
                                ])),
                          ])
                        ])
                  ]),
                  // Row 4
                  TableRow(children: [
                    Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.191),
                          1: const FractionColumnWidth(0.302),
                          2: const FractionColumnWidth(0.394),
                          3: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            // Column 1
                            Container(
                                height: 60,
                                alignment: Alignment.topCenter,
                                child: _buildText(
                                    '自      覚      症      状', font,
                                    fontSize: 10)),
                            // Column 2
                            Container(
                                height: 60,
                                child: _buildText('', font, fontSize: 10)),
                            // Column 3
                            Container(
                                height: 60,
                                child: Table(
                                    columnWidths: {
                                      0: const FractionColumnWidth(0.323),
                                      1: const FlexColumnWidth(),
                                    },
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(children: [
                                        Container(
                                            height: 60,
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: _buildDoubleLineText(
                                                '血中脂質検', font, '査', font,
                                                fontSize: 10,
                                                space: 0,
                                                ratio: 1)),
                                        Table(
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                Container(
                                                    height: 20,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: _buildText(
                                                        ' LDL コレステロール   (mg/d    )',
                                                        font,
                                                        fontSize: 9.5)),
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 20,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: _buildText(
                                                        ' HDL コレステロール   (mg/d    )',
                                                        font,
                                                        fontSize: 9.5)),
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 20,
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: _buildText(
                                                        ' トリグリセライド       (mg/d    )',
                                                        font,
                                                        fontSize: 9.5)),
                                              ]),
                                            ])
                                      ])
                                    ])),

                            // Column 4
                            Container(
                                height: 60,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child: _buildText('.', font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 40,
                                        child: _buildText(' ', font,
                                            fontSize: 10)),
                                  ]),
                                ])),
                          ])
                        ])
                  ]),
                  // Row 5
                  TableRow(children: [
                    Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.191),
                          1: const FractionColumnWidth(0.302),
                          2: const FractionColumnWidth(0.394),
                          3: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            // Column 1
                            Container(
                                height: 92,
                                alignment: Alignment.topCenter,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 69,
                                        child: _buildText(
                                            ' 他      覚      症      状 ', font,
                                            fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 23,
                                        child: _buildText(
                                            '  身        長        ( cm ) ', font,
                                            fontSize: 10))
                                  ]),
                                ])),
                            // Column 2
                            Container(
                                height: 92,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 69,
                                        child:
                                            _buildText('', font, fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 23,
                                        child:
                                            _buildText('', font, fontSize: 10))
                                  ]),
                                ])),
                            // Column 3
                            Container(
                                height: 92,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 23,
                                        padding: const EdgeInsets.only(left: 4),
                                        child: _buildText(
                                            '血         糖          検          査               (mg/d    )',
                                            font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 69,
                                        child: Table(
                                            columnWidths: {
                                              0: const FractionColumnWidth(
                                                  0.323),
                                              1: const FlexColumnWidth(),
                                            },
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                Container(
                                                    height: 69,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 4),
                                                    child: _buildText(
                                                        '尿     検     査', font,
                                                        fontSize: 10)),
                                                Table(
                                                    border: TableBorder.all(),
                                                    children: [
                                                      TableRow(children: [
                                                        Container(
                                                            height: 23,
                                                            alignment: Alignment
                                                                .center,
                                                            child: _buildText(
                                                                '糖', font,
                                                                fontSize: 9.5)),
                                                      ]),
                                                      TableRow(children: [
                                                        Container(
                                                            height: 46,
                                                            alignment: Alignment
                                                                .center,
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                      height:
                                                                          46,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          top:
                                                                              12),
                                                                      child: _buildDoubleLineText(
                                                                          ' たん',
                                                                          font,
                                                                          '蛋',
                                                                          font,
                                                                          ratio:
                                                                              2.5,
                                                                          fontSize:
                                                                              4)),
                                                                  SizedBox(
                                                                      width:
                                                                          20),
                                                                  Container(
                                                                      height:
                                                                          46,
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: _buildText(
                                                                          '白',
                                                                          font,
                                                                          fontSize:
                                                                              10))
                                                                ])),
                                                      ]),
                                                    ])
                                              ])
                                            ])),
                                  ]),
                                ])),

                            // Column 4
                            Container(
                                height: 92,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 23,
                                        child: _buildText('.', font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 23,
                                        child: _buildText(' ', font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 46,
                                        child: _buildText(' ', font,
                                            fontSize: 10)),
                                  ]),
                                ])),
                          ])
                        ])
                  ]),
                  // Row 6
                  TableRow(children: [
                    Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.191),
                          1: const FractionColumnWidth(0.302),
                          2: const FractionColumnWidth(0.228),
                          3: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            // Column 1
                            Container(
                                height: 40,
                                alignment: Alignment.topCenter,
                                child: _buildText(
                                    ' 体        重        ( kg ) ', font,
                                    fontSize: 10)),
                            // Column 2
                            Container(
                                height: 40,
                                child: _buildText('', font, fontSize: 10)),
                            // Column 3
                            Container(
                                height: 40,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.only(left: 4),
                                        child: _buildText(
                                            '心       電     図      検     査',
                                            font,
                                            fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        alignment: Alignment.center,
                                        padding: const EdgeInsets.only(left: 4),
                                        child: _buildText(
                                            'そ     の     他    の   検   査', font,
                                            fontSize: 10)),
                                  ]),
                                ])),

                            // Column 4
                            Container(
                                height: 40,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child: _buildText('.', font,
                                            fontSize: 10)),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        child:
                                            _buildText('', font, fontSize: 10)),
                                  ]),
                                ])),
                          ])
                        ])
                  ]),
                  // Row 7
                  TableRow(children: [
                    Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.191),
                          1: const FractionColumnWidth(0.302),
                          2: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            // Column 1
                            Container(
                                height: 20,
                                alignment: Alignment.centerLeft,
                                child: _buildText('   B M I ', font,
                                    fontSize: 10)),
                            // Column 2
                            Container(
                                height: 20,
                                child: _buildText('', font, fontSize: 10)),
                            // Column 3
                            Container(
                                height: 20,
                                alignment: Alignment.center,
                                child: _buildText('医師の診断', font, fontSize: 10)),
                          ])
                        ])
                  ]),
                  // Row 8
                  TableRow(children: [
                    Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.191),
                          1: const FractionColumnWidth(0.302),
                          2: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          TableRow(children: [
                            // Column 1
                            Container(
                                height: 200,
                                alignment: Alignment.center,
                                child: Table(
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(children: [
                                        Container(
                                            height: 20,
                                            alignment: Alignment.center,
                                            child: _buildText(
                                                ' 腹        囲        ( cm ) ',
                                                font,
                                                fontSize: 10)),
                                      ]),
                                      TableRow(children: [
                                        Container(
                                            height: 40,
                                            child: Table(
                                                columnWidths: {
                                                  0: const FractionColumnWidth(
                                                      0.323),
                                                  1: const FlexColumnWidth(),
                                                },
                                                border: TableBorder.all(),
                                                children: [
                                                  TableRow(children: [
                                                    Container(
                                                        height: 40,
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 6),
                                                        child:
                                                            _buildDoubleLineText(
                                                                '視',
                                                                font,
                                                                '力',
                                                                font,
                                                                fontSize: 10,
                                                                ratio: 1,
                                                                space: 1)),
                                                    Table(
                                                        border:
                                                            TableBorder.all(),
                                                        children: [
                                                          TableRow(children: [
                                                            Container(
                                                                height: 20,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: _buildText(
                                                                    '右', font,
                                                                    fontSize:
                                                                        10)),
                                                          ]),
                                                          TableRow(children: [
                                                            Container(
                                                                height: 20,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: _buildText(
                                                                    '左', font,
                                                                    fontSize:
                                                                        10)),
                                                          ]),
                                                        ])
                                                  ])
                                                ])),
                                      ]),
                                      TableRow(children: [
                                        Container(
                                            height: 80,
                                            child: Table(
                                                columnWidths: {
                                                  0: const FractionColumnWidth(
                                                      0.323),
                                                  1: const FlexColumnWidth(),
                                                },
                                                border: TableBorder.all(),
                                                children: [
                                                  TableRow(children: [
                                                    Container(
                                                        height: 80,
                                                        alignment:
                                                            Alignment.center,
                                                        padding:
                                                            const EdgeInsets
                                                                .only(top: 26),
                                                        child:
                                                            _buildDoubleLineText(
                                                                '聴',
                                                                font,
                                                                '力',
                                                                font,
                                                                fontSize: 10,
                                                                ratio: 1,
                                                                space: 1)),
                                                    Table(
                                                        border:
                                                            TableBorder.all(),
                                                        children: [
                                                          TableRow(children: [
                                                            Container(
                                                                height: 40,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Table(
                                                                    columnWidths: {
                                                                      0: const FractionColumnWidth(
                                                                          0.24),
                                                                      1: const FlexColumnWidth(),
                                                                    },
                                                                    children: [
                                                                      TableRow(
                                                                          children: [
                                                                            Container(
                                                                                height: 20,
                                                                                alignment: Alignment.center,
                                                                                child: _buildText('右', font, fontSize: 10)),
                                                                            Container(
                                                                                height: 20,
                                                                                alignment: Alignment.center,
                                                                                child: _buildText('1,000Hz', font, fontSize: 10)),
                                                                          ]),
                                                                      TableRow(
                                                                          children: [
                                                                            Container(
                                                                                height: 20,
                                                                                alignment: Alignment.center,
                                                                                child: _buildText('', font, fontSize: 10)),
                                                                            Container(
                                                                                height: 20,
                                                                                alignment: Alignment.center,
                                                                                child: _buildText('4,000Hz', font, fontSize: 10)),
                                                                          ]),
                                                                    ])),
                                                          ]),
                                                          TableRow(children: [
                                                            Container(
                                                                height: 40,
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Table(
                                                                    columnWidths: {
                                                                      0: const FractionColumnWidth(
                                                                          0.24),
                                                                      1: const FlexColumnWidth(),
                                                                    },
                                                                    children: [
                                                                      TableRow(
                                                                          children: [
                                                                            Container(
                                                                                height: 20,
                                                                                alignment: Alignment.center,
                                                                                child: _buildText('左', font, fontSize: 10)),
                                                                            Container(
                                                                                height: 20,
                                                                                alignment: Alignment.center,
                                                                                child: _buildText('1,000Hz', font, fontSize: 10)),
                                                                          ]),
                                                                      TableRow(
                                                                          children: [
                                                                            Container(
                                                                                height: 20,
                                                                                alignment: Alignment.center,
                                                                                child: _buildText('', font, fontSize: 10)),
                                                                            Container(
                                                                                height: 20,
                                                                                alignment: Alignment.center,
                                                                                child: _buildText('4,000Hz', font, fontSize: 10)),
                                                                          ]),
                                                                    ])),
                                                          ]),
                                                        ])
                                                  ])
                                                ])),
                                      ]),
                                      TableRow(children: [
                                        Container(
                                            height: 60,
                                            child: Table(
                                                columnWidths: {
                                                  0: const FractionColumnWidth(
                                                      0.323),
                                                  1: const FlexColumnWidth(),
                                                },
                                                border: TableBorder.all(),
                                                children: [
                                                  TableRow(children: [
                                                    Container(
                                                        height: 60,
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 2),
                                                        child:
                                                            _buildDoubleLineText(
                                                                '結   核',
                                                                font,
                                                                '等',
                                                                font,
                                                                fontSize: 10,
                                                                ratio: 1,
                                                                space: 1)),
                                                    Container(
                                                        height: 60,
                                                        alignment:
                                                            Alignment.center,
                                                        child:
                                                            Column(children: [
                                                          _buildDoubleLineText(
                                                              '胸部エックス',
                                                              font,
                                                              '線検査',
                                                              font,
                                                              fontSize: 10,
                                                              ratio: 1,
                                                              space: 1),
                                                          SizedBox(height: 12),
                                                          _buildText(
                                                              'フィルム番号', font,
                                                              fontSize: 10)
                                                        ])),
                                                  ])
                                                ])),
                                      ]),
                                    ])),
                            // Column 2
                            Container(
                                height: 200,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        alignment: Alignment.center,
                                        child:
                                            _buildText('', font, fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        alignment: Alignment.centerRight,
                                        child: _buildText(
                                            '(            ) ', font,
                                            fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        alignment: Alignment.centerRight,
                                        child: _buildText(
                                            '(            ) ', font,
                                            fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 40,
                                        alignment: Alignment.center,
                                        child: Table(columnWidths: {
                                          0: const FractionColumnWidth(0.5),
                                          1: const FlexColumnWidth(),
                                        }, children: [
                                          TableRow(children: [
                                            Container(
                                                height: 20,
                                                alignment: Alignment.center,
                                                child: _buildText(
                                                    '1  所見なし', font,
                                                    fontSize: 10)),
                                            Container(
                                                height: 20,
                                                alignment: Alignment.center,
                                                child: _buildText(
                                                    '2  所見あり', font,
                                                    fontSize: 10)),
                                          ]),
                                          TableRow(children: [
                                            Container(
                                                height: 20,
                                                alignment: Alignment.center,
                                                child: _buildText(
                                                    '1  所見なし', font,
                                                    fontSize: 10)),
                                            Container(
                                                height: 20,
                                                alignment: Alignment.center,
                                                child: _buildText(
                                                    '2 所見あり', font,
                                                    fontSize: 10)),
                                          ]),
                                        ]))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 40,
                                        alignment: Alignment.centerRight,
                                        child: Table(columnWidths: {
                                          0: const FractionColumnWidth(0.5),
                                          1: const FlexColumnWidth(),
                                        }, children: [
                                          TableRow(children: [
                                            Container(
                                                height: 20,
                                                alignment: Alignment.center,
                                                child: _buildText(
                                                    '1  所見なし', font,
                                                    fontSize: 10)),
                                            Container(
                                                height: 20,
                                                alignment: Alignment.center,
                                                child: _buildText(
                                                    '2  所見あり', font,
                                                    fontSize: 10)),
                                          ]),
                                          TableRow(children: [
                                            Container(
                                                height: 20,
                                                alignment: Alignment.center,
                                                child: _buildText(
                                                    '1  所見なし', font,
                                                    fontSize: 10)),
                                            Container(
                                                height: 20,
                                                alignment: Alignment.center,
                                                child: _buildText(
                                                    '2 所見あり', font,
                                                    fontSize: 10)),
                                          ]),
                                        ]))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 60,
                                        alignment: Alignment.centerRight,
                                        child: Column(children: [
                                          Table(columnWidths: {
                                            0: const FractionColumnWidth(0.5),
                                            1: const FlexColumnWidth(),
                                          }, children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 16,
                                                  alignment: Alignment.center,
                                                  child: _buildText('直接', font,
                                                      fontSize: 10)),
                                              Container(
                                                  height: 16,
                                                  alignment: Alignment.center,
                                                  child: _buildText('間接', font,
                                                      fontSize: 10)),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 16,
                                                  alignment: Alignment.center,
                                                  child: _buildText('撮影', font,
                                                      fontSize: 10)),
                                              Container(
                                                  height: 16,
                                                  alignment: Alignment.center,
                                                  child: _buildText(
                                                      '   年     月    日', font,
                                                      fontSize: 10)),
                                            ]),
                                          ]),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              padding: const EdgeInsets.only(
                                                  left: 2),
                                              child: _buildDoubleLineText(
                                                  'No.', font, '所見 :', font,
                                                  fontSize: 10,
                                                  ratio: 1,
                                                  space: 0))
                                        ]))
                                  ]),
                                ])),
                            // Column 3
                            Container(
                                height: 200,
                                alignment: Alignment.center,
                                child:
                                    Table(border: TableBorder.all(), children: [
                                  TableRow(children: [
                                    Container(
                                        height: 80,
                                        alignment: Alignment.centerRight,
                                        child:
                                            _buildText(' ', font, fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 20,
                                        alignment: Alignment.center,
                                        child: _buildText('備     考', font,
                                            fontSize: 10))
                                  ]),
                                  TableRow(children: [
                                    Container(
                                        height: 100,
                                        alignment: Alignment.centerRight,
                                        child:
                                            _buildText(' ', font, fontSize: 10))
                                  ]),
                                ])),
                          ])
                        ])
                  ]),
                ]),
                _buildText(' (注意)', font, fontSize: 9.5),
                Row(children: [
                  _buildText('1   BMIは、次の算式により算出すること。', font, fontSize: 9.5),
                  SizedBox(width: 40),
                  _buildText('BMI = ', font, fontSize: 9.5),
                  Column(children: [
                    _buildText('体重( )', font, fontSize: 9.5),
                    Container(
                        width: 30,
                        alignment: Alignment.center,
                        decoration: _myUnderLine('#000000', width: 0.5)),
                    _buildText('身長(m)', font, fontSize: 9.5),
                  ])
                ]),
                _buildText(
                    '2   「視力」の欄は、矯正していない場合は( )外に、矯正している場合は( )内に記入すること。', font,
                    fontSize: 9.5),
                _buildText(
                    '3   「胸部エックス線検査」の欄に異常所見がある場合は、喀痰検査を実施し、活動性結核を否定すること。', font,
                    fontSize: 9.5),
                _buildText('4   「医師の診断」の欄は、異常なし、要精密検査、要診療等の医師の診断を記入すること。', font,
                    fontSize: 9.5),
                _buildText(
                    '5   現在治療中の疾病があるときには、「医師の診断」の欄に、現病歴、病名等医学的に特記すべき病状を記載する\nこと。また、その場合は、処方されている全ての薬剤について備考欄に記載すること。',
                    font,
                    fontSize: 9.5),
                SizedBox(height: 4),
                _buildText(
                    '     前記の者は、本邦において安定・継続的に就労活動を行うことについて、上記に示す感染症に感染しておらず、',
                    font,
                    fontSize: 9.5),
                _buildText('また、健康上の支障はありません。', font, fontSize: 9.5),
                SizedBox(height: 4),
                Row(children: [
                  _buildText('作成年月日', font, fontSize: 9.5),
                  SizedBox(width: 40),
                  _buildText(
                      (ins[6] == '' ? '' : ins[6].split('/')[0]) + ' 年', font,
                      fontSize: 9.5),
                  SizedBox(width: 30),
                  _buildText(
                      (ins[6] == '' ? '' : ins[6].split('/')[1]) + ' 月', font,
                      fontSize: 9.5),
                  SizedBox(width: 30),
                  _buildText(
                      (ins[6] == '' ? '' : ins[6].split('/')[2]) + ' 日', font,
                      fontSize: 9.5),
                  SizedBox(width: 40),
                  _buildText('(医       師) 署名', font, fontSize: 9.5),
                ]),
              ]);
        },
      ),
    );

    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 1 * cm,
            marginBottom: 1 * cm,
            marginLeft: 1.5 * cm,
            marginRight: 1.0 * cm),
        build: (Context context) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildText('参考様式第 1 - 3 号 (別紙)', font, fontSize: 11),
                SizedBox(height: 6),
                Center(child: _buildText('受診者の申告書', font, fontSize: 18)),
                SizedBox(height: 100),
                _buildText('      私は、通院歴、入院歴、手術歴、投薬歴の全てを医師に申告', font,
                    fontSize: 18),
                _buildText('した上で、医師の診断を受けました。', font, fontSize: 18),
                SizedBox(height: 450),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  _buildText('作  成  年  月  日', font, fontSize: 12),
                  SizedBox(width: 60),
                  _buildText(
                      (ins[6] == '' ? '' : ins[6].split('/')[0]) +
                          ' 年  ' +
                          (ins[6] == '' ? '' : ins[6].split('/')[1]) +
                          ' 月  ' +
                          (ins[6] == '' ? '' : ins[6].split('/')[2]) +
                          ' 日',
                      font,
                      fontSize: 12),
                ]),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  _buildText('申 請 人 の 署 名', font, fontSize: 12),
                  SizedBox(width: 20),
                  Container(
                    width: 140,
                    height: 14,
                    alignment: Alignment.center,
                    decoration: _myUnderLine('#000000', width: 0.5),
                  ),
                ])
              ]);
        },
      ),
    );

    return await pdf.save();
  }

  static Widget _buildText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return Text(text, style: TextStyle(font: font));
    } else {
      return Text(text, style: TextStyle(font: font, fontSize: fontSize));
    }
  }

  static BoxDecoration _myUnderLine(String color, {double width = 1}) {
    return BoxDecoration(
        border: Border(
      bottom: BorderSide(
        color: PdfColor.fromHex(color),
        width: width,
      ),
    ));
  }

  static Widget _buildDoubleLineText(
      String text1, Font font1, String text2, Font font2,
      {double fontSize = 0, double ratio = 2 / 3, double space = -2.0}) {
    if (fontSize == 0) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.only(),
            child: Text(text1, style: TextStyle(font: font1))),
        Padding(
            padding: EdgeInsets.only(top: space),
            child: Text(text2, style: TextStyle(font: font2))),
      ]);
    } else {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.only(),
            child:
                Text(text1, style: TextStyle(font: font1, fontSize: fontSize))),
        Padding(
            padding: EdgeInsets.only(top: space),
            child: Text(text2,
                style: TextStyle(font: font2, fontSize: fontSize * ratio))),
      ]);
    }
  }

  static const double inch = 72.0;
  static const double cm = inch / 2.54;
}

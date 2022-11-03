import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';

class Page2 {
  static Widget buildPage(List<String> inputs, Font font) {
    inputs = [
      'input_0',
      '2022/12/22',
      '2022/12/22',
      'input_3',
      'input_4',
      'input_5',
      'input_6',
      'input_7',
      'input_8',
      'input_9',
      '123456',
      '123456',
      '123456',
      'input_13',
      'input_14',
      'input_15',
      'input_16',
      'input_17',
      'input_18',
      'input_19',
      '123456',
      '123456',
      '123456',
      'input_23',
      'input_24',
      'input_25',
      'input_26',
      'input_27',
      'input_28',
      'input_29',
      '1',
    ];
    Common c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Table(
          columnWidths: {
            0: const FractionColumnWidth(0.0296),
            1: const FractionColumnWidth(0.1777),
            2: const FlexColumnWidth(),
          },
          border: TableBorder.all(),
          children: [
            TableRow(children: [
              // column 1
              c.verticalBoxText(['III', '登', '録', '支', '援', '機', '関'],
                  height: 500),
              // column 2
              Table(border: TableBorder.all(), children: [
                TableRow(children: [
                  c.boxText('1  登  録  番  号', height: 54, center: true)
                ]),
                TableRow(children: [
                  c.box(
                      c.buildDoubleLineText(
                          '           (ふりがな)', font, '4   氏名又は名称', font,
                          ratio: 1.2, space: 0, fontSize: 8.5),
                      height: 54,
                      center: true)
                ]),
                TableRow(children: [
                  c.boxText('5    住        所', height: 54, center: true)
                ]),
                TableRow(children: [
                  Table(
                      columnWidths: {
                        0: const FractionColumnWidth(0.186),
                        1: const FlexColumnWidth(),
                      },
                      border: TableBorder.all(),
                      children: [
                        TableRow(children: [
                          c.verticalBoxText(['法', '人', 'の', '場', '合'],
                              height: 110),
                          c.box(
                              Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: c.buildDoubleLineText(
                                      '           (ふりがな)',
                                      font,
                                      '6   代表者の氏名',
                                      font,
                                      ratio: 1.2,
                                      space: 0,
                                      fontSize: 8.5)),
                              height: 110,
                              center: true)
                        ])
                      ])
                ]),
                TableRow(children: [
                  c.verticalBox([
                    c.text('7    支援を行う事務所の所'),
                    c.text('     在地                               '),
                  ], height: 54, center: true)
                ]),
                TableRow(children: [
                  c.verticalBox([
                    c.text('8    支援業務を行う体制の'),
                    c.text('     概要                               '),
                  ], height: 174, center: true)
                ]),
              ]),
              // column 3
              Table(border: TableBorder.all(), children: [
                // Column 3 - Row 1
                TableRow(children: [
                  Table(
                      columnWidths: {
                        0: const FractionColumnWidth(0.224),
                        1: const FractionColumnWidth(0.149),
                        2: const FractionColumnWidth(0.222),
                        3: const FractionColumnWidth(0.186),
                        4: const FlexColumnWidth(),
                      },
                      border: TableBorder.all(),
                      children: [
                        TableRow(children: [
                          c.boxText(inputs[0], height: 54, center: true),
                          c.boxText('2  登録年月日', height: 54, center: true),
                          c.box(
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    c.text((inputs[1] == ''
                                            ? ''
                                            : inputs[1].split('/')[0]) +
                                        ' 年    '),
                                    c.text((inputs[1] == ''
                                            ? ''
                                            : inputs[1].split('/')[1]) +
                                        ' 月    '),
                                    c.text((inputs[1] == ''
                                            ? ''
                                            : inputs[1].split('/')[2]) +
                                        ' 日 '),
                                  ]),
                              height: 54,
                              center: true),
                          c.verticalBox([
                            c.text('3    支援業務を開始する'),
                            c.text('     予定年月日                     '),
                          ], height: 54, center: true),
                          c.box(
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    c.text((inputs[2] == ''
                                            ? ''
                                            : inputs[1].split('/')[0]) +
                                        ' 年    '),
                                    c.text((inputs[2] == ''
                                            ? ''
                                            : inputs[1].split('/')[1]) +
                                        ' 月    '),
                                    c.text((inputs[2] == ''
                                            ? ''
                                            : inputs[1].split('/')[2]) +
                                        ' 日 '),
                                  ]),
                              height: 54,
                              center: true),
                        ])
                      ])
                ]),
                // Column 3 - Row 2
                TableRow(children: [
                  Table(border: TableBorder.all(), children: [
                    TableRow(children: [c.boxText(inputs[3], height: 22)]),
                    TableRow(children: [
                      c.box(
                          Padding(
                              padding: const EdgeInsets.only(top: -3),
                              child: c.buildDoubleLineText(
                                  inputs[4], font, inputs[5], font,
                                  fontSize: 10, ratio: 1, space: -1)),
                          height: 32)
                    ]),
                  ])
                ]),
                // Column 3 - Row 3
                TableRow(children: [
                  Table(columnWidths: {
                    0: const FractionColumnWidth(0.8),
                    1: const FlexColumnWidth(),
                  }, children: [
                    TableRow(children: [
                      c.tInput(inputs[6], inputs[7], height: 18),
                      c.text('')
                    ]),
                    TableRow(children: [
                      Container(height: 18, child: c.text(' ' + inputs[8])),
                      c.text(' ')
                    ]),
                    TableRow(children: [
                      Container(height: 18, child: c.text(' ' + inputs[9])),
                      Row(children: [
                        c.text('(電話'),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 18,
                            child: c.text(inputs[10])),
                        c.text(' - '),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: c.text(inputs[11])),
                        c.text(' - '),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: c.text(inputs[12])),
                        c.text(' )'),
                      ])
                    ]),
                  ])
                ]),
                // Column 3 - Row 4
                TableRow(children: [
                  Table(border: TableBorder.all(), children: [
                    TableRow(children: [c.boxText(inputs[13], height: 22)]),
                    TableRow(children: [
                      c.box(
                          Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: c.buildDoubleLineText(
                                  inputs[14], font, inputs[15], font,
                                  fontSize: 10, ratio: 1, space: 10)),
                          height: 88)
                    ]),
                  ])
                ]),
                // Column 3 - Row 5
                TableRow(children: [
                  Table(columnWidths: {
                    0: const FractionColumnWidth(0.8),
                    1: const FlexColumnWidth(),
                  }, children: [
                    TableRow(children: [
                      c.tInput(inputs[16], inputs[17], height: 18),
                      c.text('')
                    ]),
                    TableRow(children: [
                      Container(height: 18, child: c.text(' ' + inputs[18])),
                      c.text(' ')
                    ]),
                    TableRow(children: [
                      Container(height: 18, child: c.text(' ' + inputs[19])),
                      Row(children: [
                        c.text('(電話'),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 18,
                            child: c.text(inputs[20])),
                        c.text(' - '),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: c.text(inputs[21])),
                        c.text(' - '),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: c.text(inputs[22])),
                        c.text(' )'),
                      ])
                    ]),
                  ])
                ]),
                // Column 3 - Row 6
                TableRow(children: [
                  Table(
                      columnWidths: {
                        0: const FractionColumnWidth(0.259),
                        1: const FlexColumnWidth(),
                      },
                      border: TableBorder.all(),
                      children: [
                        // Row 1
                        TableRow(children: [
                          c.boxText('支   援   責   任   者',
                              center: true, height: 58),
                          Table(
                              columnWidths: {
                                0: const FractionColumnWidth(0.5),
                                1: const FlexColumnWidth(),
                              },
                              border: TableBorder.all(),
                              children: [
                                TableRow(children: [
                                  Table(
                                      columnWidths: {
                                        0: const FractionColumnWidth(0.3),
                                        1: const FlexColumnWidth(),
                                      },
                                      border: TableBorder.all(),
                                      children: [
                                        TableRow(children: [
                                          c.box(
                                              c.buildDoubleLineText('(ふりがな)',
                                                  font, '氏       名', font,
                                                  ratio: 1.2,
                                                  space: 0,
                                                  fontSize: 8.5),
                                              height: 58,
                                              center: true),
                                          Table(children: [
                                            TableRow(children: [
                                              c.boxText(inputs[23],
                                                  center: true, height: 24)
                                            ]),
                                            TableRow(children: [
                                              c.box(
                                                  Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: -3),
                                                      child:
                                                          c.buildDoubleLineText(
                                                              inputs[24],
                                                              font,
                                                              inputs[25],
                                                              font,
                                                              fontSize: 10,
                                                              ratio: 1,
                                                              space: -1)),
                                                  height: 34,
                                                  center: true)
                                            ]),
                                          ])
                                        ])
                                      ]),
                                  Table(
                                      columnWidths: {
                                        0: const FractionColumnWidth(0.3),
                                        1: const FlexColumnWidth(),
                                      },
                                      border: TableBorder.all(),
                                      children: [
                                        TableRow(children: [
                                          c.boxText('役       職',
                                              center: true, height: 58),
                                          c.box(
                                              Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10),
                                                  alignment: Alignment.center,
                                                  child: c.buildDoubleLineText(
                                                      inputs[26],
                                                      font,
                                                      inputs[27],
                                                      font,
                                                      fontSize: 10,
                                                      ratio: 1,
                                                      space: 2)),
                                              height: 58,
                                              center: true)
                                        ])
                                      ]),
                                ])
                              ])
                        ])
                      ])
                ]),
                TableRow(children: [
                  Table(
                      columnWidths: {
                        0: const FractionColumnWidth(0.259),
                        1: const FlexColumnWidth(),
                      },
                      border: TableBorder.all(),
                      children: [
                        // Row 1
                        TableRow(children: [
                          Table(border: TableBorder.all(), children: [
                            TableRow(children: [
                              c.verticalBoxText(
                                  ['支 援 を 行 っ て い る', '1号特定技能外国人数'],
                                  height: 58, center: true)
                            ]),
                            TableRow(children: [
                              c.boxText('支  援  担  当  者  数',
                                  height: 58, center: true)
                            ]),
                          ]),
                          Table(border: TableBorder.all(), columnWidths: {
                            0: const FractionColumnWidth(0.4),
                            1: const FlexColumnWidth(),
                          }, children: [
                            TableRow(children: [
                              Table(border: TableBorder.all(), children: [
                                TableRow(children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            width: 100,
                                            height: 58,
                                            alignment: Alignment.center,
                                            child: c.text(inputs[28])),
                                        SizedBox(width: 10),
                                        c.text('名 ')
                                      ])
                                ]),
                                TableRow(children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                            width: 100,
                                            height: 58,
                                            alignment: Alignment.center,
                                            child: c.text(inputs[29])),
                                        SizedBox(width: 10),
                                        c.text('名 ')
                                      ])
                                ]),
                              ]),
                              Container(
                                  height: 116,
                                  alignment: Alignment.center,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        c.text('支援の中立性を確保していることの有無'),
                                        SizedBox(height: 10),
                                        c.text(
                                            '・支援責任者が特定技能所属機関の役員の配偶者、2親等以内の親族、特定技能所属機関の',
                                            fontSize: 8),
                                        c.text(
                                            '役員と社会生活において密接な関係にある者、過去5年以内に特定技能所属機関の役員又は',
                                            fontSize: 8),
                                        c.text('職員であった者ではないこと', fontSize: 8),
                                        c.text(
                                            '・支援責任者及び支援担当者が登録支援機関の登録拒否事由に該当しないこと',
                                            fontSize: 8),
                                        SizedBox(height: 10),
                                        c.optionInput(inputs[30])
                                      ]))
                            ]),
                          ])
                        ])
                      ])
                ]),
              ])
            ])
          ])
    ]);
  }
}

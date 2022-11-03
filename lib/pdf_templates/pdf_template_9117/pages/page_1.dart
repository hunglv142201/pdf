import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';

class Page1 {
  static Widget buildPage(List<String> inputs, Font font) {
    inputs = [
      '2022/12/22',
      'input1_1',
      'input1_2',
      '1',
      '2022/12/22',
      'input1_5',
      'input1_6',
      'input1_7',
      // II.2
      'input1_8',
      'input1_9',
      'input1_10',
      '123564',
      '153151',
      '153561',
      // II.3
      'input1_14',
      'input1_15',
      'input1_16',
      '12356',
      '153617',
      '153789',
      // II.4
      'input1_20',
      'input1_21',
      'input1_22',
      // II.5
      'input1_23',
      'input1_24',
      '1',
    ];
    Common c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      c.text('参考様式第 1 - 17 号', fontSize: 12),
      SizedBox(height: 20),
      Center(
          child: c.text(
              '1    号    特     定     技    能     外     国    人    支    援    計     画     書',
              fontSize: 16)),
      SizedBox(height: 30),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        c.text('作成日:', fontSize: 12),
        SizedBox(width: 15),
        c.text((inputs[0] == '' ? '' : inputs[0].split('/')[0]) + ' 年    ',
            fontSize: 12),
        c.text((inputs[0] == '' ? '' : inputs[0].split('/')[1]) + ' 月    ',
            fontSize: 12),
        c.text((inputs[0] == '' ? '' : inputs[0].split('/')[2]) + ' 日    ',
            fontSize: 12),
      ]),
      SizedBox(height: 20),
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
              c.verticalBoxText(['I', '支', '援', '対', '象', '者'], height: 100),
              // column 2
              Table(border: TableBorder.all(), children: [
                TableRow(children: [
                  c.boxText('1    氏        名', height: 50, center: true)
                ]),
                TableRow(children: [
                  c.boxText('3   生  年  月  日', height: 50, center: true)
                ]),
              ]),
              // column 3
              Table(
                  columnWidths: {
                    0: const FractionColumnWidth(0.556),
                    1: const FractionColumnWidth(0.186),
                    2: const FlexColumnWidth(),
                  },
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      c.box(
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: 200,
                                    padding: const EdgeInsets.all(2.0),
                                    child: Center(
                                        child:
                                            c.text(inputs[1], fontSize: 12))),
                                c.text('(ほか'),
                                Container(
                                    width: 60,
                                    child: Center(
                                        child:
                                            c.text(inputs[2], fontSize: 12))),
                                c.text('名) '),
                              ]),
                          height: 50),
                      c.box(c.text('2      性        別'),
                          height: 50, center: true),
                      c.box(
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  c.text('男'),
                                  c.text(inputs[3] == '1' ? '◯' : '',
                                      fontSize: 12),
                                ]),
                                c.text(' ・ '),
                                Stack(children: [
                                  c.text('女'),
                                  c.text(inputs[3] == '2' ? '◯' : '',
                                      fontSize: 12),
                                ]),
                              ]),
                          height: 50)
                    ]),
                    TableRow(children: [
                      c.box(
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 50),
                                c.text((inputs[4] == ''
                                        ? ''
                                        : inputs[0].split('/')[0]) +
                                    ' 年    '),
                                c.text((inputs[4] == ''
                                        ? ''
                                        : inputs[0].split('/')[1]) +
                                    ' 月    '),
                                c.text((inputs[4] == ''
                                        ? ''
                                        : inputs[0].split('/')[2]) +
                                    ' 日    '),
                              ]),
                          height: 50,
                          center: true),
                      c.box(c.text('4     国籍・地域'), height: 50, center: true),
                      c.box(c.text(inputs[5]), height: 50, center: true)
                    ]),
                  ]),
            ]),
            // Row 2
            TableRow(children: [
              // column 1
              c.verticalBoxText(['II', '特', '定', '技', '能', '所', '属', '機', '関'],
                  height: 300, center: true),
              // column 2
              Table(border: TableBorder.all(), children: [
                TableRow(children: [
                  c.box(
                      c.buildDoubleLineText(
                          '           (ふりがな)', font, '1   氏名又は名称', font,
                          ratio: 1.2, space: 0, fontSize: 8.5),
                      height: 50,
                      center: true)
                ]),
                TableRow(children: [
                  c.boxText('2    住        所', height: 50, center: true)
                ]),
                TableRow(children: [
                  c.verticalBox([
                    c.text('3    支援を行う事務所の所'),
                    c.text('     在地'),
                    c.text('     (2と異なる場合に記入)'),
                  ], height: 50, center: true)
                ]),
                TableRow(children: [
                  c.verticalBox([
                    c.text('4    支援業務を行う体制の'),
                    c.text('     概要                               '),
                  ], height: 150, center: true)
                ]),
              ]),
              // column 3
              Table(border: TableBorder.all(), children: [
                TableRow(children: [c.boxText(inputs[6], height: 20)]),
                TableRow(children: [c.boxText(inputs[7], height: 30)]),
                TableRow(children: [
                  Table(columnWidths: {
                    0: const FractionColumnWidth(0.8),
                    1: const FlexColumnWidth(),
                  }, children: [
                    TableRow(children: [
                      c.tInput(inputs[8], inputs[9], height: 25),
                      c.text('')
                    ]),
                    TableRow(children: [
                      c.text(' ' + inputs[10]),
                      Row(children: [
                        c.text('(電話'),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 25,
                            child: c.text(inputs[11])),
                        c.text(' - '),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: c.text(inputs[12])),
                        c.text(' - '),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: c.text(inputs[13])),
                        c.text(' )'),
                      ])
                    ]),
                  ])
                ]),
                TableRow(children: [
                  Table(columnWidths: {
                    0: const FractionColumnWidth(0.8),
                    1: const FlexColumnWidth(),
                  }, children: [
                    TableRow(children: [
                      c.tInput(inputs[14], inputs[15], height: 25),
                      c.text('')
                    ]),
                    TableRow(children: [
                      c.text(' ' + inputs[16]),
                      Row(children: [
                        c.text('(電話'),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            height: 25,
                            child: c.text(inputs[17])),
                        c.text(' - '),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: c.text(inputs[18])),
                        c.text(' - '),
                        Container(
                            alignment: Alignment.center,
                            width: 40,
                            child: c.text(inputs[19])),
                        c.text(' )'),
                      ])
                    ]),
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
                          c.boxText('支   援   責   任   者',
                              center: true, height: 50),
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
                                              height: 50,
                                              center: true),
                                          Table(children: [
                                            TableRow(children: [
                                              c.boxText(inputs[20],
                                                  center: true, height: 20)
                                            ]),
                                            TableRow(children: [
                                              c.boxText(inputs[21],
                                                  center: true, height: 30)
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
                                              center: true, height: 50),
                                          c.boxText(inputs[22],
                                              center: true, height: 50),
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
                                  height: 50, center: true)
                            ]),
                            TableRow(children: [
                              c.boxText('支  援  担  当  者  数',
                                  height: 50, center: true)
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
                                            height: 50,
                                            alignment: Alignment.center,
                                            child: c.text(inputs[23])),
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
                                            height: 50,
                                            alignment: Alignment.center,
                                            child: c.text(inputs[24])),
                                        SizedBox(width: 10),
                                        c.text('名 ')
                                      ])
                                ]),
                              ]),
                              Container(
                                  height: 100,
                                  alignment: Alignment.center,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        c.text('支援の中立性を確保していることの有無'),
                                        SizedBox(height: 10),
                                        c.text(
                                            '支援責任者及び支援担当者が,支援対象者と異なる部署の職員であるなど,当該対象者に対',
                                            fontSize: 8),
                                        c.text(
                                            'する指揮命令権を有しない者であること、また,異なる部署であっても,当該対象者に指揮命令',
                                            fontSize: 8),
                                        c.text('をし得る立場にないこと', fontSize: 8),
                                        SizedBox(height: 10),
                                        c.optionInput(inputs[25])
                                      ]))
                            ]),
                          ])
                        ])
                      ])
                ]),
              ]),
            ]),
          ]),
    ]);
  }
}

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';

class Page3 {
  static Widget buildPage(List<String> inputs, Font font) {
    List<String> ins = [];
    Common c = Common(font);

    return Table(
        columnWidths: {
          0: const FractionColumnWidth(0.0296),
          1: const FractionColumnWidth(0.0296),
          2: const FractionColumnWidth(0.205),
          3: const FlexColumnWidth(),
        },
        border: TableBorder.all(),
        children: [
          TableRow(children: [
            // Column 1
            c.verticalBoxText(['IV', '', '支', '援', '内', '容'],
                height: 550, center: true),
            // Column 2
            c.verticalBoxText(
                ['1', '', '事', '前', 'ガ', 'イ', 'ダ', 'ン', 'ス', 'の', '提', '供'],
                height: 550, center: true),
            // Column 3
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Table(
                  columnWidths: {
                    0: const FractionColumnWidth(0.146),
                    1: const FlexColumnWidth(),
                  },
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      c.verticalBoxText(
                          ['ア', '', '情', '報', '提', '供', '内', '容', '等'],
                          height: 500, center: true),
                      Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          c.boxText('支援内容', height: 47, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('a. 従事する業務の内容, 報酬の額そ\nの他の労働条件に関する事項',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('b. 本邦において行うことができる活\n動の内容',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('c. 入国に当たっての手続に関する事\n項',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('d. 保証金の徴収, 契約の不履行につ\nいての違約金契約等の締結の禁止',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText(
                              'e. 入国の準備に関し外国の機関に支\n払った費用について, 当該費用の額\n及び内訳を十分に理解して支払わな\nければならないこと',
                              height: 64,
                              center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('f. 支援に要する費用を負担させない\nこととしていること',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('g. 入国する際の送迎に関する支援の\n内容',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('h. 住居の確保に関する支援の内容  ',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('i. 相談・苦情の対応に関する内容  ',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('j. 特定技能所属機関等の支援担当者\n氏名及び連絡先',
                              height: 38, center: true)
                        ]),
                        TableRow(children: [
                          c.boxText('(自由記入)', height: 47, center: true)
                        ]),
                      ])
                    ])
                  ]),
              c.boxText('イ  実施言語', height: 25, center: true),
              c.boxText('ウ  実施予定時間', height: 25, center: true),
            ]),
            // Column 4
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Table(
                  columnWidths: {
                    0: const FractionColumnWidth(0.2),
                    1: const FractionColumnWidth(0.08),
                    2: const FractionColumnWidth(0.44),
                    3: const FlexColumnWidth(),
                  },
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      c.boxText('txt', height: 47, center: true),
                      c.boxText('委託の\n有   無', height: 47, center: true),
                      Column(children: [
                        c.boxText('支援担当者又は委託を受けた実施担当者',
                            height: 17, center: true),
                        Row(children: [
                          Expanded(
                              flex: 36,
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  child: c.buildDoubleLineText(
                                      ' 氏名', font, '(役職)', font,
                                      fontSize: 10, ratio: 1, space: 0))),
                          Expanded(
                              flex: 64,
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 30,
                                  child: c.boxText(
                                      '              住所\n(委託を受けた場合のみ)',
                                      height: 30,
                                      center: true))),
                        ])
                      ]),
                      c.boxText('               実施方法\n(該当するもの全てにチェック)',
                          height: 47, center: true),
                    ]),
                    TableRow(children: [
                      c.box(
                          c.booleanInputWithText('1',
                              trailing1: '  inputs[1] ',
                              trailing2: '  inputs[2] '),
                          height: 406,
                          center: true),
                      Column(children: [
                        SizedBox(height: 24),
                        c.optionInput('1'),
                        SizedBox(height: 30),
                        c.text('<支援内容ご\nとに異なる場\n合にはそれが\nわかるように\n以下記載>')
                      ]),
                      Table(
                          columnWidths: {
                            0: const FractionColumnWidth(0.36),
                            1: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              c.box(
                                  Column(children: [
                                    SizedBox(height: 20),
                                    c.text('input123412'),
                                    c.text('input9874892'),
                                    SizedBox(height: 16),
                                    c.text('<支援内容ごとに異なる場\n合にはそれがわかるよう\nに以下記載>')
                                  ]),
                                  height: 406),
                              Column(children: [
                                c.tInput('1234', '1231412'),
                                SizedBox(height: 20),
                                c.text('input9874892123asda'),
                                SizedBox(height: 20),
                                c.text('<支援内容ごとに異なる場合にはそれがわかるよ\nうに以下記載>')
                              ]),
                            ])
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(children: [
                              Checkbox(value: true, name: ''),
                              c.text(' 対面')
                            ]),
                            SizedBox(height: 4),
                            Row(children: [
                              Checkbox(value: false, name: ''),
                              c.text(' テレビ電話装置')
                            ]),
                            SizedBox(height: 4),
                            Row(children: [
                              Checkbox(value: false, name: ''),
                              c.text(' その他('),
                              Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: c.text('txt')),
                              c.text(' )')
                            ]),
                            SizedBox(height: 16),
                            c.text('<支援内容ごとに異なる場合にはそれがわかるように\n以下記載>')
                          ])
                    ]),
                    TableRow(children: [
                      c.box(c.booleanInput('1'), height: 47, center: true),
                      c.box(c.optionInput('2'), height: 47),
                      Table(
                          columnWidths: {
                            0: const FractionColumnWidth(0.36),
                            1: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              c.boxText('txt', center: true, height: 47),
                              c.boxText('txt2', center: true, height: 47),
                            ])
                          ]),
                      c.box(c.text('txt'), height: 47, center: true)
                    ])
                  ]),
              c.box(
                  Row(children: [
                    SizedBox(width: 2),
                    Container(
                        alignment: Alignment.center,
                        width: 100,
                        child: c.text('txt')),
                    SizedBox(width: 2),
                    c.text('語    (支援担当者以外の者が通訳を担う場合)通訳者の所属・氏名 '),
                    Container(
                        alignment: Alignment.center,
                        width: 100,
                        child: c.text('txt2')),
                    Container(
                        alignment: Alignment.center,
                        width: 100,
                        child: c.text('txt3')),
                  ]),
                  height: 25,
                  center: true),
              c.box(
                  Row(children: [
                    SizedBox(width: 2),
                    c.text('合計'),
                    SizedBox(width: 6),
                    Container(
                        alignment: Alignment.center,
                        width: 70,
                        child: c.text('123124')),
                    SizedBox(width: 6),
                    c.text('時間'),
                  ]),
                  height: 25,
                  center: true),
            ]),
          ])
        ]);
  }
}

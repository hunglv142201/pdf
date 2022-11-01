import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';

class Page8 {
  static Widget buildPage(List<String> inputs, Font font) {
    List<String> ins = [
      '1Hello World!', // 0
      '2', // 1
      'asd asd asd', // 2
      'Testing here', // 3
      '', // 4
      '1Hello World!', // 5
      '2', // 6
      'asd asd asd', // 7
      'Testing here', // 8
      '', // 9
      'Hi there', // 10
      '', // 11
      '', // 12
      '', // 13
      '', // 14
      '', // 15
      '', // 16
      '', // 17
      '', // 18
      '', // 19
      '', // 20
      '', // 21
      '', // 22
      '', // 23
      '', // 24
      '', // 25
      '', // 26
      '', // 27
      '', // 28
      '', // 29
      '', // 30
      '', // 31
      '', // 32
      '', // 33
      '', // 34
      '', // 35
      '', // 36
      '', // 37
      '', // 38
      '', // 39
      '', // 40
      '', // 41
      '', // 42
    ];

    Common c = Common(font);

    return Row(
      children: [
        c.box(c.verticalText('Ⅳ支援内容（続き）')),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                c.box(c.verticalText('２出入国する際の送迎')),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.full,
                  children: [
                    // --- 2.1 ---
                    TableRow(children: [
                      c.boxText('支援内容', center: true, width: 195),
                      c.boxText('実施予定', center: true, width: 160),
                      c.verticalBoxText(['委託の', '有 無'], width: 70),
                      Column(children: [
                        c.boxText(('支援担当者又は委託を受けた実施担当者'), center: true, width: 375),
                        Row(children: [
                          c.verticalBoxText([('氏名'), ('（役職）')], width: 115),
                          c.verticalBoxText([('住所'), ('（委託を受けた場合のみ）')], width: 260),
                        ]),
                      ]),
                      c.verticalBoxText([('実施方法'), ('（該当するもの全てにチェック）')], width: 195),
                    ]),

                    // --- 2.2 ---
                    TableRow(children: [
                      c.boxText(('ａ．到着空港等での出迎え及び特定技能所属機関又は住居までの送迎'), width: 195),
                      c.box(c.booleanInputWithText(ins[0]), width: 160),
                      c.box(c.optionInput(ins[1]), width: 70),
                      Row(children: [
                        c.boxText(ins[2], width: 115, height: 50),
                        c.boxText(ins[3], width: 260, height: 50),
                      ]),
                      c.box(c.booleanInputWithText(ins[4], label1: '出迎え空港等', label2: '送迎方法', trailing1: '空港'),
                          width: 195),
                    ]),

                    // --- 2.3 ---
                    TableRow(children: [
                      c.boxText(('ｂ．出国予定空港等までの送迎及び保安検査場入場までの出国手続の補助'), width: 195),
                      c.box(c.booleanInputWithText(ins[5]), width: 160),
                      c.box(c.optionInput(ins[6]), width: 70),
                      Row(children: [
                        c.boxText(ins[7], width: 115, height: 50),
                        c.boxText(ins[8], width: 260, height: 50),
                      ]),
                      c.box(c.booleanInputWithText(ins[9], label1: '出国予定空港等', label2: '送迎方法', trailing1: '空港/未定'),
                          width: 195),
                    ]),

                    // --- 2.4 ---
                    TableRow(children: [
                      c.verticalBoxText(['（自由記入）', ins[10]], width: 195),
                      c.box(c.booleanInputWithText(ins[11]), width: 160),
                      c.box(c.optionInput(ins[12]), width: 70),
                      Row(children: [
                        c.boxText(ins[13], width: 115, height: 50),
                        c.boxText(ins[14], width: 260, height: 50),
                      ]),
                      c.box(c.booleanInputWithText(ins[15], label1: '出国予定空港等', label2: '送迎方法', trailing1: '空港/未定'),
                          width: 195),
                    ]),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                c.box(c.verticalText('３適切な住居の確保に係る支援・生活に必要な契約に係る支援')),
                c.box(c.verticalText('ア適切な住居の確保に係る支援')),
                Table(defaultVerticalAlignment: TableCellVerticalAlignment.full, children: [
                  // --- 3.1 ---
                  TableRow(children: [
                    c.boxText('支援内容', center: true, width: 177),
                    c.boxText('実施予定', center: true, width: 160),
                    c.verticalBoxText(['委託の', '有 無'], width: 70),
                    Column(children: [
                      c.boxText(('支援担当者又は委託を受けた実施担当者'), center: true, width: 375),
                      Row(children: [
                        c.verticalBoxText([('氏名'), ('（役職）')], width: 115),
                        c.verticalBoxText([('住所'), ('（委託を受けた場合のみ）')], width: 260),
                      ]),
                    ]),
                  ]),

                  // --- 3.2 ---
                  TableRow(children: [
                    c.boxText(
                        ('ａ．不動産仲介事業者や賃貸物件の情報を提供し，必要に応じて住宅確保に係る手続に同行し，住居探しの補助を行う。また，賃貸借契約の締結時に連帯保証人が必要な場合に，適当な連帯保証人がいないときは，支援対象者の連帯保証人となる又は利用可能な家賃債務保証業者を確保し自らが緊急連絡先となる'),
                        width: 177),
                    c.box(c.booleanInputWithText(ins[16]), width: 160),
                    c.box(c.optionInput(ins[17]), width: 70),
                    Row(children: [
                      c.boxText(ins[18], width: 115, height: 150),
                      c.boxText(ins[19], width: 260, height: 150),
                    ]),
                  ]),

                  // --- 3.3 ---
                  TableRow(children: []),

                  // --- 3.4 ---
                  TableRow(children: []),

                  // --- 3.5 ---
                  TableRow(children: []),
                ]),
                c.box(Container(), width: 195),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}

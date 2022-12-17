import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';

class Page4 {
  static Widget buildPage(List<String> ins, Font font) {
    Common c = Common(font);

    return Row(
      children: [
        c.box(c.verticalText('Ⅳ支援内容（続き）'), width: 30),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                c.box(c.verticalText('２出入国する際の送迎'), height: 208, width: 30),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.full,
                  children: [
                    // --- 2.1 ---
                    TableRow(children: [
                      c.boxText('支援内容', center: true, width: 207),
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
                      c.boxText(('ａ．到着空港等での出迎え及び特定技能所属機関又は住居までの送迎'), width: 207),
                      c.box(c.booleanInputWithText(ins[0], trailing1: ins[1], trailing2: ins[2]), width: 160),
                      c.box(c.optionInput(ins[3]), width: 70),
                      Row(children: [
                        c.boxText(ins[4], width: 115, height: 50),
                        c.boxText(ins[5], width: 260, height: 50),
                      ]),
                      c.box(
                          c.booleanInputWithText(ins[6],
                              label1: '出迎え空港等', label2: '送迎方法', trailing1: ' ${ins[7]} 空港', trailing2: ins[8]),
                          width: 195),
                    ]),

                    // --- 2.3 ---
                    TableRow(children: [
                      c.boxText(('ｂ．出国予定空港等までの送迎及び保安検査場入場までの出国手続の補助'), width: 207),
                      c.box(c.booleanInputWithText(ins[9], trailing1: ins[10], trailing2: ins[11]), width: 160),
                      c.box(c.optionInput(ins[12]), width: 70),
                      Row(children: [
                        c.boxText(ins[13], width: 115, height: 50),
                        c.boxText(ins[14], width: 260, height: 50),
                      ]),
                      c.box(
                          c.booleanInputWithText(ins[15],
                              label1: '出国予定空港等', label2: '送迎方法', trailing1: '${ins[16]}空港/未定', trailing2: ins[17]),
                          width: 195),
                    ]),

                    // --- 2.4 ---
                    TableRow(children: [
                      c.verticalBoxText(['（自由記入）', ins[18]], width: 207),
                      c.box(c.booleanInput(ins[19]), width: 160),
                      c.box(c.optionInput(ins[20]), width: 70),
                      Row(children: [
                        c.boxText(ins[21], width: 115, height: 50),
                        c.boxText(ins[22], width: 260, height: 50),
                      ]),
                      c.boxText(ins[23], width: 195),
                    ]),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.box(c.verticalText('３適切な住居の確保に係る支援・生活に必要な契約に係る支援'), width: 30),
                c.box(c.verticalText('ア適切な住居の確保に係る支援'), width: 30),
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
                    c.box(c.booleanInputWithText(ins[24], trailing1: ins[25], trailing2: ins[26]), width: 160),
                    c.box(c.optionInput(ins[27]), width: 70),
                    Row(children: [
                      c.boxText(ins[28], width: 115, height: 150),
                      c.boxText(ins[29], width: 260, height: 150),
                    ]),
                  ]),

                  // --- 3.3 ---
                  TableRow(children: [
                    c.boxText(('ｂ．自ら賃借人となって賃貸借契約を締結した上で，１号特定技能外国人の合意の下，住居として提供する'), width: 177),
                    c.box(c.booleanInputWithText(ins[30], trailing1: ins[31], trailing2: ins[32]), width: 160),
                    c.box(c.optionInput(ins[33]), width: 70),
                    Row(children: [
                      c.boxText(ins[34], width: 115, height: 105),
                      c.boxText(ins[35], width: 260, height: 105),
                    ]),
                  ]),

                  // --- 3.4 ---
                  TableRow(children: [
                    c.boxText(('ｃ．所有する社宅等を，１号特定技能外国人の合意の下，当該外国人に対して住居として提供する'), width: 177),
                    c.box(c.booleanInputWithText(ins[36], trailing1: ins[37], trailing2: ins[38]), width: 160),
                    c.box(c.optionInput(ins[39]), width: 70),
                    Row(children: [
                      c.boxText(ins[40], width: 115, height: 105),
                      c.boxText(ins[41], width: 260, height: 105),
                    ]),
                  ]),

                  // --- 3.5 ---
                  TableRow(children: [
                    c.verticalBoxText(['（自由記入）', ins[42]], width: 177),
                    c.box(c.booleanInput(ins[43]), width: 160),
                    c.box(c.optionInput(ins[44]), width: 70),
                    Row(children: [
                      c.boxText(ins[45], width: 115, height: 102.5),
                      c.boxText(ins[46], width: 260, height: 102.5),
                    ]),
                  ]),
                ]),
                Column(children: [
                  c.boxText('実施方法', width: 195, height: 58, center: true),
                  c.boxDivider(width: 195, height: 360),
                  c.boxText(ins[47], width: 195, height: 102.5),
                ]),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}

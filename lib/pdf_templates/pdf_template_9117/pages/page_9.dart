import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';
import 'package:pdf/pdf.dart';

class Page9 {
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        c.box(c.verticalText('Ⅳ支援内容（続き）'), height: 160 + 290 + 80 + 20),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ８ 非自発的離職時の転
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  height: 160,
                  width: 25,
                  alignment: Alignment.center,
                  decoration: _buildBoxAllSide(),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    c.verticalText('職支援（続き）'),
                    c.verticalText(' ８ 非自発的離職時の転'),
                  ]),
                ),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.full,
                  children: [
                    // --- 8 ---
                    TableRow(children: [
                      c.boxText(('f．離職時に必要な行政手続について情報を提供する'), width: 197, height: 50),
                      c.box(c.booleanInputWithText(ins[0]), width: 160),
                      c.box(c.optionInput(ins[1]), width: 70),
                      Row(children: [
                        c.boxText(ins[2], width: 115, height: 50),
                        c.boxText(ins[3], width: 260, height: 50),
                      ]),
                      c.boxDivider(width: 195, height: 50),
                    ]),
                    // --- 2.2 ---
                    TableRow(children: [
                      c.boxText(('g．倒産等により，転職のための支援 が適切に実施できなくなることが見込 まれるときは，それに備え，当該機関 に代わって支援を行う者を確保する'),
                          width: 197, height: 60),
                      c.box(c.booleanInputWithText(ins[5]), width: 160),
                      c.box(c.optionInput(ins[6]), width: 70),
                      Row(children: [
                        c.boxText(ins[7], width: 115, height: 60),
                        c.boxText(ins[8], width: 260, height: 60),
                      ]),
                      c.boxDivider(width: 195, height: 60),
                    ]),

                    // --- 2.3 ---
                    TableRow(children: [
                      c.verticalBoxText(['（自由記入）', ins[10]], width: 195),
                      c.box(c.booleanInputWithText(ins[11]), width: 160),
                      c.box(c.optionInput(ins[12]), width: 70),
                      Row(children: [
                        c.boxText(ins[13], width: 115, height: 50),
                        c.boxText(ins[14], width: 260, height: 50),
                      ]),
                      c.box(c.boxNoBorder(), width: 195),
                    ]),
                  ],
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                height: 290 + 80 + 20,
                width: 25,
                alignment: Alignment.center,
                decoration: _buildBoxAllSide(),
                child: c.verticalText('９ 定期的な面談の実施・行政機関への通報'),
              ),
              Column(children: [
                Row(children: [
                  c.box(c.verticalText('ア   面談内容等'), height: 290 + 80, width: 20),
                  Table(defaultVerticalAlignment: TableCellVerticalAlignment.full, children: [
                    // --- Title ---
                    TableRow(children: [
                      c.boxText('支援内容', center: true, width: 177),
                      c.boxText('実施予定', center: true, width: 160),
                      c.verticalBoxText(['委託の', '有   無'], width: 70),
                      Column(children: [
                        Column(children: [
                          Container(
                            decoration: _buildBoxTopLine(width: 1),
                            padding: const EdgeInsets.only(top: 4),
                            alignment: Alignment.center,
                            height: 20,
                            width: 375,
                            child: _buildText('支援担当者又は委託を受けた実施担当者', font),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 4),
                            alignment: Alignment.center,
                            height: 20,
                            width: 375,
                            child: _buildText('※ｂ欄及び自由記入欄については，委託を受けた実施担当者も可', font, fontSize: 9),
                          ),
                        ]),
                        Row(children: [
                          c.verticalBoxText([('氏名'), ('（役職）')], width: 115, height: 40),
                          c.verticalBoxText([('住所'), ('（委託を受けた場合のみ）')], width: 260, height: 40),
                        ]),
                      ]),
                      c.verticalBoxText(['実施方法', '（該当するもの全てにチェック） '], width: 195),
                    ]),

                    // --- a.  ---
                    TableRow(children: [
                      Column(children: [
                        c.boxText(('ａ．１号特定技能外国人の労働状況や生活状況を確認するため，当該外国人及びその監督をする立場にある者それぞれと定期的な面談（3か月に1回以上）を実施する'),
                            width: 177, height: 75, center: true),
                        c.boxText(('ｂ．再確認のため，生活オリエンテーションにおいて提供した情報について，改めて提供する'), width: 177, height: 45, center: true),
                        c.boxText(('ｃ．労働基準法その他の労働に関する法令の規定に違反していることを知ったときは，労働基準監督署その他の関係行政機関へ通報する'),
                            width: 177, height: 60, center: true),
                        c.boxText(('ｄ．資格外活動等の入管法違反又は旅券及び在留カードの取上げ等その他の問題の発生を知ったときは，その旨を地方出入国在留管理局に通報する'),
                            width: 177, height: 60, center: true),
                      ]),
                      Column(mainAxisSize: MainAxisSize.max, children: [
                        c.box(c.booleanInputWithText(ins[16]), width: 160, height: 120),
                        c.box(c.booleanInputWithText(ins[16]), width: 160, height: 120),
                      ]),
                      c.box(c.optionInput(ins[17]), width: 70),
                      Row(children: [
                        c.boxText(ins[18], width: 115, height: 240),
                        c.boxText(ins[19], width: 260, height: 240),
                      ]),
                      Column(children: [
                        c.box(c.booleanInputWithText('', label1: ' 対面', label2: ' 無線や船舶電話', trailing2: '漁船漁業のみ'),
                            width: 195, height: 75),
                        c.boxDivider(width: 195, height: 165),
                      ]),
                    ]),
                    TableRow(children: [
                      c.verticalBoxText(['（自由記入）', ins[10]], width: 177),
                      c.box(c.booleanInputWithText(ins[11]), width: 160),
                      c.box(c.optionInput(ins[12]), width: 70),
                      Row(children: [
                        c.boxText(ins[13], width: 115, height: 50),
                        c.boxText(ins[14], width: 260, height: 50),
                      ]),
                      c.box(c.boxNoBorder(), width: 195),
                    ]),
                  ]),
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                      height: 20,
                      width: 177 + 20,
                      padding: const EdgeInsets.only(left: 10),
                      decoration: _buildBoxAllSide(),
                      alignment: Alignment.centerLeft,
                      child: _buildText('イ 実施言語 ', font)),
                  Container(
                      height: 20,
                      width: 160 + 70 + 115 + 260 + 195,
                      decoration: _buildBoxAllSide(),
                      alignment: Alignment.center,
                      child: _buildText('語 （支援担当者以外の者が通訳を担う場合）通訳者の所属・氏名', font)),
                ]),
              ]),
            ]),
          ],
        ),
      ],
    );
  }

  static BoxDecoration _buildBoxAllSide({String color = '#000000', double width = 1}) {
    return BoxDecoration(
      border: Border.all(color: PdfColor.fromHex(color), width: width),
    );
  }

  static BoxDecoration _buildBoxUnderLine({String color = '#000000', double width = 1}) {
    return BoxDecoration(
      border: Border(bottom: BorderSide(color: PdfColor.fromHex(color), width: width)),
    );
  }

  static BoxDecoration _buildBoxTopLine({String color = '#000000', double width = 1}) {
    return BoxDecoration(
      border: Border(top: BorderSide(color: PdfColor.fromHex(color), width: width)),
    );
  }

  static Widget _buildText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return Text(text, style: TextStyle(font: font, fontSize: 10));
    } else {
      return Text(text, style: TextStyle(font: font, fontSize: fontSize));
    }
  }
}

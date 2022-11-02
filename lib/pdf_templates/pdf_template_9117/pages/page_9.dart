import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';
import 'package:pdf/pdf.dart';

class Page9 {
  static Widget buildPage(List<String> inputs, Font font) {
    inputs = [
      // ７ 日本人との交流促進に係る支援
      // --- f ---
      '1',
      'input 1',
      'input 2',
      '1',
      'input 4',
      'input 5',
      'input 6',
      // --- g ---
      '1',
      'input 8',
      'input 9',
      '1',
      'input 11',
      'input 12',
      'input 13',
      // --- （自由記入） ---
      'input 14',
      '1',
      'input 16',
      'input 17',
      '1',
      'input 19',
      'input 20',
      'input 21',
      'input 22',
      // ９ 定期的な面談の実施・行政機関への通報
      '1',
      'input 24',
      'input 25',
      '1',
      'input 27',
      'input 28',
      '1',
      'input 30',
      'input 31',
      '1',
      // --- （自由記入） ---
      'input 33',
      '1',
      'input 35',
      'input 36',
      '1',
      // --- d ---
      'input 38',
      'input 39',
      'input 40',
      'input 41',
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
                    TableRow(children: [
                      c.boxText(('f．離職時に必要な行政手続について情報を提供する'), width: 197, height: 50),
                      c.box(c.booleanInputWithText(inputs[0], trailing1: inputs[1], trailing2: inputs[2]), width: 160),
                      c.box(c.optionInput(inputs[3]), width: 70),
                      Row(children: [
                        c.boxText(inputs[4], width: 115, height: 50),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[5], inputs[6], height: 50),
                        ),
                      ]),
                      c.boxDivider(width: 195, height: 50),
                    ]),
                    // --- 2.2 ---
                    TableRow(children: [
                      c.boxText(('g．倒産等により，転職のための支援 が適切に実施できなくなることが見込 まれるときは，それに備え，当該機関 に代わって支援を行う者を確保する'),
                          width: 197, height: 60),
                      c.box(c.booleanInputWithText(inputs[7], trailing1: inputs[8], trailing2: inputs[9]), width: 160),
                      c.box(c.optionInput(inputs[10]), width: 70),
                      Row(children: [
                        c.boxText(inputs[11], width: 115, height: 60),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[12], inputs[13], height: 60),
                        ),
                      ]),
                      c.boxDivider(width: 195, height: 60),
                    ]),

                    // --- 2.3 ---
                    TableRow(children: [
                      c.verticalBoxText(['（自由記入）', inputs[14]], width: 195),
                      c.box(c.booleanInputWithText(inputs[15], trailing1: inputs[16], trailing2: inputs[17]),
                          width: 160),
                      c.box(c.optionInput(inputs[18]), width: 70),
                      Row(children: [
                        c.boxText(inputs[19], width: 115, height: 50),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[20], inputs[21], height: 50),
                        ),
                      ]),
                      c.boxText(inputs[22], width: 195),
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
                        c.box(c.booleanInputWithText(inputs[23], trailing1: inputs[24], trailing2: inputs[25]),
                            width: 160, height: 120),
                        c.box(c.booleanInputWithText(inputs[26], trailing1: inputs[27], trailing2: inputs[28]),
                            width: 160, height: 120),
                      ]),
                      c.box(c.optionInput(inputs[29]), width: 70),
                      Row(children: [
                        c.boxText(inputs[30], width: 115, height: 240),
                        c.boxText(inputs[31], width: 260, height: 240),
                      ]),
                      Column(children: [
                        c.box(
                            c.booleanInputWithText(inputs[32], label1: ' 対面', label2: ' 無線や船舶電話', trailing2: '漁船漁業のみ'),
                            width: 195,
                            height: 75),
                        c.boxDivider(width: 195, height: 165),
                      ]),
                    ]),
                    TableRow(children: [
                      c.verticalBoxText(['（自由記入）', inputs[33]], width: 177),
                      c.box(c.booleanInputWithText(inputs[34], trailing1: inputs[35], trailing2: inputs[36]),
                          width: 160),
                      c.box(c.optionInput(inputs[37]), width: 70),
                      Row(children: [
                        c.boxText(inputs[38], width: 115, height: 50),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[39], inputs[40], height: 50),
                        ),
                      ]),
                      c.boxText(inputs[41], width: 195),
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

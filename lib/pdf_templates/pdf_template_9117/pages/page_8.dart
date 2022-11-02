import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';
import 'package:pdf/pdf.dart';

class Page8 {
  static Widget buildPage(List<String> inputs, Font font) {
    inputs = [
      // ７ 日本人との交流促進に係る支援
      'input 0',
      'input 1',
      'input 2',
      '1',
      'input 4',
      'input 5',
      'input 6',
      'input 7',
      '1',
      'input 9',
      'input 10',
      'input 11',
      '1',
      'input 13',
      'input 14',
      'input 15',
      'input 16',
      // ８ 非自発的離職時の転職支援
      // --- a ---
      '1',
      'input 18',
      'input 19',
      '1',
      'input 21',
      'input 22',
      'input 23',
      // --- b ---
      '1',
      'input 25',
      'input 26',
      '1',
      'input 28',
      'input 29',
      'input 30',
      // --- c ---
      '1',
      'input 32',
      'input 33',
      '1',
      'input 35',
      'input 36',
      'input 37',
      // --- d ---
      '1',
      'input 39',
      'input 40',
      '1',
      'input 42',
      'input 43',
      'input 44',
      // --- e ---
      '1',
      'input 46',
      'input 47',
    ];

    Common c = Common(font);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        c.box(c.verticalText('Ⅳ支援内容（続き）'), height: 60 + 280 + 60 + 105 + 60 + 50),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ７ 日本人との交流促進に係る支援
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  height: 60 + 105 + 60 + 50,
                  width: 25,
                  alignment: Alignment.center,
                  decoration: _buildBoxAllSide(),
                  child: c.verticalText(' ７ 日本人との交流促進に係る支援'),
                ),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.full,
                  children: [
                    TableRow(children: [
                      c.boxText('支援内容', center: true, width: 177),
                      c.boxText('実施予定', center: true, width: 160),
                      c.verticalBoxText(['委託の', '有   無'], width: 70),
                      Column(children: [
                        Container(
                          decoration: _buildBoxTopLine(width: 1),
                          padding: const EdgeInsets.only(top: 4),
                          alignment: Alignment.center,
                          height: 20,
                          width: 375,
                          child: _buildText('支援担当者又は委託を受けた実施担当者', font),
                        ),
                        Row(children: [
                          c.verticalBoxText([('氏名'), ('（役職）')], width: 115, height: 40),
                          c.verticalBoxText([('住所'), ('（委託を受けた場合のみ）')], width: 260, height: 40),
                        ]),
                      ]),
                      c.boxText('実施方法', center: true, width: 195),
                    ]),
                    TableRow(children: [
                      Column(children: [
                        c.boxText(
                            ('ａ．必要に応じ，地方公共団体やボランティア団体等が主催する地域住民との交流の場に関する情報の提供や地域の自治会等の案内を行い，各行事等への参加の手続の補助を行うほか，必要に応じて同行して各行事の注意事項や実施方法を説明するなどの補助を行う'),
                            width: 197,
                            height: 105),
                        c.boxText(('ｂ．日本の文化を理解するために必要な情報として，就労又は生活する地域の行事に関する案内を行うほか，必要に応じて同行し現地で説明するなどの補助を行う'),
                            width: 197, height: 60),
                      ]),
                      c.box(c.booleanInputWithText(inputs[0], trailing1: inputs[1], trailing2: inputs[2]), width: 160),
                      c.box(c.optionInput(inputs[3]), width: 70),
                      Row(children: [
                        c.boxText(inputs[4], width: 115, height: 165),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[5], inputs[6], height: 165),
                        ),
                      ]),
                      c.boxDivider(width: 195, height: 165),
                    ]),
                    TableRow(children: [
                      c.verticalBoxText(['（自由記入）', inputs[7]], width: 195),
                      c.box(c.booleanInputWithText(inputs[8], trailing1: inputs[9], trailing2: inputs[10]), width: 160),
                      c.box(c.optionInput(inputs[12]), width: 70),
                      Row(children: [
                        c.boxText(inputs[13], width: 115, height: 50),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[14], inputs[15], height: 50),
                        ),
                      ]),
                      c.boxText(inputs[16], width: 195),
                    ]),
                  ],
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ８ 非自発的離職時の転職支援
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  height: 60 + 280,
                  width: 25,
                  alignment: Alignment.center,
                  decoration: _buildBoxAllSide(),
                  child: c.verticalText(' ８ 非自発的離職時の転職支援'),
                ),
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.full,
                  children: [
                    TableRow(children: [
                      c.boxText('支援内容', center: true, width: 177),
                      c.boxText('実施予定', center: true, width: 160),
                      c.verticalBoxText(['委託の', '有   無'], width: 70),
                      Column(children: [
                        Container(
                          decoration: _buildBoxTopLine(width: 1),
                          padding: const EdgeInsets.only(top: 4),
                          alignment: Alignment.center,
                          height: 20,
                          width: 375,
                          child: _buildText('支援担当者又は委託を受けた実施担当者', font),
                        ),
                        Row(children: [
                          c.verticalBoxText([('氏名'), ('（役職）')], width: 115, height: 40),
                          c.verticalBoxText([('住所'), ('（委託を受けた場合のみ）')], width: 260, height: 40),
                        ]),
                      ]),
                      c.verticalBoxText(['実施方法', '（該当するもの全てにチェック） '], width: 195),
                    ]),
                    // --- a ---
                    TableRow(children: [
                      c.boxText(('ａ．所属する業界団体や関連企業等を通じて次の受入れ先に関する情報を入手し提供する'), width: 197, height: 50),
                      c.box(c.booleanInputWithText(inputs[17], trailing1: inputs[18], trailing2: inputs[19]),
                          width: 160),
                      c.box(c.optionInput(inputs[20]), width: 70),
                      Row(children: [
                        c.boxText(inputs[21], width: 115, height: 50),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[22], inputs[23], height: 50),
                        ),
                      ]),
                      c.boxDivider(width: 195, height: 50),
                    ]),
                    // --- b ---
                    TableRow(children: [
                      c.boxText(('ｂ．公共職業安定所，その他の職業安定機関等を案内し，必要に応じて支援対象者に同行して次の受入れ先を探す補助を行う'), width: 197, height: 50),
                      c.box(c.booleanInputWithText(inputs[24], trailing1: inputs[25], trailing2: inputs[26]),
                          width: 160),
                      c.box(c.optionInput(inputs[27]), width: 70),
                      Row(children: [
                        c.boxText(inputs[28], width: 115, height: 50),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[29], inputs[30], height: 50),
                        ),
                      ]),
                      c.boxDivider(width: 195, height: 50),
                    ]),
                    // --- c ---
                    TableRow(children: [
                      c.boxText(('ｃ．１号特定技能外国人の希望条件，技能水準，日本語能力等を踏まえ，適切に職業相談・職業紹介が受けられるよう又は円滑に就職活動が行えるよう推薦状を作成する'),
                          width: 197, height: 80),
                      c.box(c.booleanInputWithText(inputs[31], trailing1: inputs[32], trailing2: inputs[33]),
                          width: 160),
                      c.box(c.optionInput(inputs[34]), width: 70),
                      Row(children: [
                        c.boxText(inputs[35], width: 115, height: 80),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[36], inputs[37], height: 80),
                        ),
                      ]),
                      c.boxDivider(width: 195, height: 80),
                    ]),
                    // --- d ---
                    TableRow(children: [
                      c.boxText(('ｄ．職業紹介事業の許可又は届出を受けて職業紹介を行うことができる場合は，就職先の紹介あっせんを行う'), width: 197, height: 50),
                      c.box(c.booleanInputWithText(inputs[38], trailing1: inputs[39], trailing2: inputs[40]),
                          width: 160),
                      c.box(c.optionInput(inputs[41]), width: 70),
                      Row(children: [
                        c.boxText(inputs[42], width: 115, height: 50),
                        Container(
                          width: 260,
                          decoration: _buildBoxAllSide(),
                          child: c.tInput(inputs[43], inputs[44], height: 50),
                        ),
                      ]),
                      c.boxDivider(width: 195, height: 50),
                    ]),
                    // --- e ---
                    TableRow(children: [
                      c.boxText(('ｅ．１号特定技能外国人が求職活動をするために必要な有給休暇を付与する'), width: 197, height: 50),
                      c.box(c.booleanInputWithText(inputs[45], trailing1: inputs[46], trailing2: inputs[47]),
                          width: 160, height: 50),
                      c.boxDivider(width: 70, height: 50),
                      c.boxDivider(width: 115 + 195, height: 50),
                      c.boxDivider(width: 195, height: 50),
                    ]),
                  ],
                ),
              ],
            ),
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

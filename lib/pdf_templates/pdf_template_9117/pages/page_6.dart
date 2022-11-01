import 'package:pdf/widgets.dart';

import 'common.dart';

class Page6 {
  static Widget buildPage(List<String> inputs, Font font) {
    List<String> ins = [
      '', // 0
      '', // 1
      '', // 2
      '', // 3
      '', // 4
      '', // 5
      '', // 6
      '', // 7
      '', // 8
      '', // 9
      '', // 10
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
    ];

    Common c = Common(font);

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      c.box(c.verticalText('Ⅳ支援内容（続き）'), height: 658),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // --- 4 ---
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          c.box(
            Row(children: [
              c.verticalText('（続き）'),
              c.verticalText('４生活オリエンテーションの実施'),
            ]),
            height: 240,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.box(c.verticalText('ア情報提供内容等（続き）'), height: 196),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.boxText('ｄ．十分に理解することができる言語により医療を受けることができる医療機関に関する事項', width: 177),
                c.boxText('ｅ．防 災 ・ 防 犯 に 関 す る事 項， 急病その他の緊急時におけ る 対 応 に 必 要 な 事 項', width: 177),
                c.boxText('ｆ．出入国又は労働に関する法令規定の違反を知ったときの対応方法その他当該外国人の法的保護に必要な事項', width: 177),
                c.verticalBoxText(['（自由記入）', ins[0]], width: 177, height: 46.5),
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.box(Container(), width: 160, height: 149.5),
                c.box(c.booleanInput(ins[1]), width: 160, height: 46.5),
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.box(Container(), width: 70, height: 149.5),
                c.box(c.optionInput(ins[2]), width: 70, height: 46.5),
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.box(Container(), width: 115, height: 149.5),
                c.boxText(ins[3], width: 115, height: 46.5),
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.box(Container(), width: 260, height: 149.5),
                c.boxText(ins[4], width: 260, height: 46.5),
              ]),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.box(Container(), width: 195, height: 149.5),
                c.boxText(ins[5], width: 195, height: 46.5),
              ]),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.boxText('イ実施言語', width: 195),
              c.boxText('${ins[6]} 語（支援担当者以外の者が通訳を担う場合）通訳者の所属・氏名 ${ins[7]} ${ins[8]}', width: 800, center: true),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.boxText('ウ実施予定時間', width: 195),
              c.boxText('合計 ${ins[9]} 時間', width: 800, center: true),
            ]),
            Row(),
          ]),
        ]),

        // --- 5 ---
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          c.box(c.verticalText('５日本語学習の機会の提供'), width: 28, height: 418),
          Table(defaultVerticalAlignment: TableCellVerticalAlignment.full, children: [
            // --- 5.1 ---
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
            ]),

            // --- 5.2 ---
            TableRow(children: [
              c.boxText(('ａ．日本語教室や日本語教育機関に関する入学案内の情報を提供し，必要に応じて同行して入学の手続の補助を行う'), width: 195),
              c.box(c.booleanInputWithText(ins[10]), width: 160),
              c.box(c.optionInput(ins[11]), width: 70),
              Row(children: [
                c.boxText(ins[12], width: 115, height: 90),
                c.boxText(ins[13], width: 260, height: 90),
              ]),
            ]),

            // --- 5.3 ---
            TableRow(children: [
              c.boxText(('ｂ．自主学習のための日本語学習教材やオンラインの日本語講座に関する情報の提供し，必要に応じて日本語学習教材の入手やオンラインの日本語講座の利用契約手続の補助を行う'),
                  width: 195),
              c.box(c.booleanInputWithText(ins[14]), width: 160),
              c.box(c.optionInput(ins[15]), width: 70),
              Row(children: [
                c.boxText(ins[16], width: 115, height: 90),
                c.boxText(ins[17], width: 260, height: 90),
              ]),
            ]),

            // --- 5.4 ---
            TableRow(children: [
              c.boxText(('ｃ．１号特定技能外国人との合意の下，日本語教師と契約して１号特定技能外国人に日本語の講習の機会を提供する'), width: 195),
              c.box(c.booleanInputWithText(ins[18]), width: 160),
              c.box(c.optionInput(ins[19]), width: 70),
              Row(children: [
                c.boxText(ins[20], width: 115, height: 90),
                c.boxText(ins[21], width: 260, height: 90),
              ]),
            ]),

            // --- 5.5 ---
            TableRow(children: [
              c.verticalBoxText(['（自由記入）', ins[22]], width: 195),
              c.box(c.booleanInputWithText(ins[23]), width: 160),
              c.box(c.optionInput(ins[24]), width: 70),
              Row(children: [
                c.boxText(ins[25], width: 115, height: 90),
                c.boxText(ins[26], width: 260, height: 90),
              ]),
            ]),
          ]),
          Column(children: [
            c.boxText('実施方法', width: 195, height: 58, center: true),
            c.boxDivider(width: 195, height: 270),
            c.boxText(ins[27], width: 195, height: 90),
          ]),
        ])
      ]),
    ]);
  }
}

import 'package:pdf/widgets.dart';

import 'common.dart';

class Page7 {
  static Widget buildPage(List<String> ins, Font font) {
    Common c = Common(font);

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      c.box(c.verticalText('Ⅳ支援内容（続き）'), height: 531.5, width: 30),
      c.box(c.verticalText('６相談又は苦情への対応'), height: 531.5, width: 30),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        // --- 6.1 ---
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          c.box(c.verticalText('ア対応内容等'), height: 203.5, width: 30),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // --- 6.1.1 ---
            Table(defaultVerticalAlignment: TableCellVerticalAlignment.full, children: [
              TableRow(children: [
                c.boxText('支援内容', width: 177, center: true),
                c.boxText('実施予定', width: 160, center: true),
                c.verticalBoxText(['委託の', '有 無'], width: 70),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.boxText('支援担当者又は委託を受けた実施担当者', width: 570),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    c.verticalBoxText(['氏名', '（役職）'], width: 115),
                    c.verticalBoxText(['住所', '（委託を受けた場合のみ）'], width: 455),
                  ]),
                ]),
              ]),
            ]),

            Table(defaultVerticalAlignment: TableCellVerticalAlignment.full, children: [
              // --- 6.1.2 ---
              TableRow(children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.boxText('ａ．相談又は苦情に対し，遅滞なく十分に理解できる言語により適切に対応し，必要な助言及び指導を行う', width: 177),
                  c.boxText('ｂ．必要に応じ，相談内容に対応する関係行政機関を案内し，同行する等必要な手続の補助を行う', width: 177),
                ]),
                c.box(c.booleanInputWithText(ins[0], trailing1: '適宜実施', trailing2: ins[1]), width: 160, center: true),
                c.box(c.optionInput(ins[2]), width: 70, center: true),
                c.boxText(ins[3], width: 115),
                c.boxText(ins[4], width: 455),
              ]),

              // --- 6.1.3 ---
              TableRow(children: [
                c.verticalBoxText(['（自由記入）', ins[5]], width: 177),
                c.box(c.booleanInput(ins[6]), width: 160, center: true),
                c.box(c.optionInput(ins[7]), width: 70, center: true),
                c.boxText(ins[8], width: 115),
                c.boxText(ins[9], width: 455),
              ]),
            ]),
          ]),
        ]),

        // --- 6.2 ---
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          c.box(c.verticalText('イ実施方法'), width: 30, height: 306),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // --- 6.2.1 ---
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.box(c.verticalText('対応時間'), width: 30, height: 110),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Table(defaultVerticalAlignment: TableCellVerticalAlignment.full, children: [
                  TableRow(children: [
                    c.boxText('平日', width: 147, center: true),
                    Column(children: [
                      c.boxText('月', width: 160, center: true),
                      c.boxText('${ins[10]}時 ～ ${ins[11]}時', width: 160, center: true),
                    ]),
                    Column(children: [
                      c.boxText('火', width: 160, center: true),
                      c.boxText('${ins[12]}時 ～ ${ins[13]}時', width: 160, center: true),
                    ]),
                    Column(children: [
                      c.boxText('水', width: 160, center: true),
                      c.boxText('${ins[14]}時 ～ ${ins[15]}時', width: 160, center: true),
                    ]),
                    Column(children: [
                      c.boxText('木 ', width: 160, center: true),
                      c.boxText('${ins[16]}時 ～ ${ins[17]}時', width: 160, center: true),
                    ]),
                    Column(children: [
                      c.boxText('金', width: 160, center: true),
                      c.boxText('${ins[18]}時 ～ ${ins[19]}時', width: 160, center: true),
                    ]),
                  ]),
                ]),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.boxText('土曜 ', width: 147, center: true),
                  c.boxText('${ins[20]}時 ～ ${ins[21]}時', width: 800, center: true),
                ]),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.boxText('日曜', width: 147, center: true),
                  c.boxText('${ins[22]}時 ～ ${ins[23]}時', width: 800, center: true),
                ]),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.boxText('祝日  ', width: 147, center: true),
                  c.boxText('${ins[24]}時 ～ ${ins[25]}時', width: 800, center: true),
                ]),
              ]),
            ]),

            // --- 6.2.2 ---
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.box(c.verticalText('相談方法'), width: 30, height: 98),
              c.box(
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    c.text('以下の方法により実施（該当するものを全てチェックすること。）'),
                    c.booleanInputWithText(ins[26], label1: '直接面談', label2: '電話', trailing2: ins[28]),
                    c.booleanInputWithText(ins[27],
                        label1: 'メール', label2: 'その他', trailing1: ins[29], trailing2: ins[30]),
                  ]),
                  width: 947),
            ]),

            // --- 6.2.3 ---
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.box(c.verticalText('緊急時対応'), width: 30, height: 98),
              c.box(
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    c.text('緊急時は，以下の方法により実施（該当するものを全てチェックすること。）'),
                    c.booleanInputWithText(ins[31], label1: '直接面談', label2: '電話', trailing2: ins[33]),
                    c.booleanInputWithText(ins[32],
                        label1: 'メール', label2: 'その他', trailing1: ins[34], trailing2: ins[35]),
                  ]),
                  width: 947),
            ]),
          ]),
        ]),

        // --- 6.3 ---
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          c.boxText('ウ 実施言語', width: 207),
          c.boxText('${ins[36]} 語 （支援担当者以外の者が通訳を担う場合）通訳者の所属・氏名 ${ins[37]}', width: 800),
        ]),
      ]),
    ]);
  }
}

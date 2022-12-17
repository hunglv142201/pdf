import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/common.dart';

class Page5 {
  static Widget buildPage(List<String> ins, Font font) {
    Common c = Common(font);

    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      c.box(c.verticalText('Ⅳ支援内容（続き）'), height: 684, width: 30),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          c.box(
              Row(children: [
                c.verticalText('支援（続き）'),
                c.verticalText('３適切な住居の確保に係る支援・生活に必要な契約に係る'),
              ]),
              height: 467,
              width: 30),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // --- 3.1 ---
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.box(
                  Row(children: [
                    c.verticalText('係る支援（続き）'),
                    c.verticalText('ア適切な住居の確保に'),
                  ]),
                  height: 125,
                  width: 30),
              c.boxText('ｄ 情報提供する又は住居とし て提供する住居の概要（確保 予定の場合を含む）', width: 177, height: 125, center: true),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.box(
                    c.booleanInput(
                      ins[0],
                      label1: '在留資格変更許可申請（又は在留資格認定証明書交付申請）の時点で確保しているもの',
                      label2: '在留資格変更許可申請（又は在留資格認定証明書交付申請）の後に確保するもの',
                    ),
                    width: 800),
                c.box(
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    c.text('居室の広さ                                （同居人数計 ${ins[1]} 人）'),
                    SizedBox(height: 4),
                    Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Row(children: [
                        Checkbox(value: ins[2] == '1', name: ''),
                        c.text('１人当たり7.5㎡以上を確保      '),
                      ]),
                      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        c.text('寝室の広さ'),
                        Row(children: [Checkbox(value: ins[3] == '1', name: ''), c.text('１人当たり4.5㎡以上を確保')]),
                      ]),
                    ]),
                  ]),
                  height: 79,
                  width: 800,
                ),
              ]),
            ]),

            // --- 3.2 ---
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.box(c.verticalText('イ生活に必要な契約に係る支援'), height: 342, width: 30),
              Table(defaultVerticalAlignment: TableCellVerticalAlignment.full, children: [
                // --- 3.2.1 ---
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
                  c.verticalBoxText([('実施方法'), ('（該当するもの全てにチェック）')], width: 195),
                ]),

                // --- 3.2.2 ---
                TableRow(children: [
                  c.boxText(('ａ．銀行その他の金融機関における預金口座又は貯金口座の開設の手続の補助'), width: 177),
                  c.box(c.booleanInputWithText(ins[4], trailing1: ins[5], trailing2: ins[6]), width: 160),
                  c.box(c.optionInput(ins[7]), width: 70),
                  Row(children: [
                    c.boxText(ins[8], width: 115, height: 71),
                    c.boxText(ins[9], width: 260, height: 71),
                  ]),
                  c.box(
                      c.threeBooleanInput(
                        ins[10],
                        ['手続に係る情報提供', '必要に応じて手続に同行', 'その他'],
                        allowText: [false, false, true],
                        trailings: ['', '', ins[11]],
                      ),
                      width: 195),
                ]),

                // --- 3.2.3 ---
                TableRow(children: [
                  c.boxText(('ｂ．携帯電話の利用に関する契約の手続の補助'), width: 177),
                  c.box(c.booleanInputWithText(ins[12], trailing1: ins[13], trailing2: ins[14]), width: 160),
                  c.box(c.optionInput(ins[15]), width: 70),
                  Row(children: [
                    c.boxText(ins[16], width: 115, height: 71),
                    c.boxText(ins[17], width: 260, height: 71),
                  ]),
                  c.box(
                      c.threeBooleanInput(
                        ins[18],
                        ['手続に係る情報提供', '必要に応じて手続に同行', 'その他'],
                        allowText: [false, false, true],
                        trailings: ['', '', ins[19]],
                      ),
                      width: 195),
                ]),

                // --- 3.2.4 ---
                TableRow(children: [
                  c.boxText(('ｃ．電気・水道・ガス等のライフラインに関する手続の補助'), width: 177),
                  c.box(c.booleanInputWithText(ins[20], trailing1: ins[21], trailing2: ins[22]), width: 160),
                  c.box(c.optionInput(ins[23]), width: 70),
                  Row(children: [
                    c.boxText(ins[24], width: 115, height: 71),
                    c.boxText(ins[25], width: 260, height: 71),
                  ]),
                  c.box(
                      c.threeBooleanInput(
                        ins[26],
                        ['手続に係る情報提供', '必要に応じて手続に同行', 'その他'],
                        allowText: [false, false, true],
                        trailings: ['', '', ins[27]],
                      ),
                      width: 195),
                ]),

                // --- 3.2.4 ---
                TableRow(children: [
                  c.verticalBoxText(['（自由記入）', ins[28]], width: 177),
                  c.box(c.booleanInput(ins[29]), width: 160),
                  c.box(c.optionInput(ins[30]), width: 70),
                  Row(children: [
                    c.boxText(ins[31], width: 115, height: 71),
                    c.boxText(ins[32], width: 260, height: 71),
                  ]),
                  c.boxText(ins[33], width: 195),
                ]),
              ]),
            ]),
          ]),
        ]),

        // --- 4 ---
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          c.box(c.verticalText('４生活オリエンテーションの実施'), width: 30),
          c.box(c.verticalText('ア情報提供内容等'), width: 30, height: 217),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // --- 4.1 ---
            Table(defaultVerticalAlignment: TableCellVerticalAlignment.full, children: [
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
                c.verticalBoxText([('実施方法'), ('（該当するもの全てにチェック）')], width: 195),
              ]),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(children: [
                c.boxText('ａ．本邦での生活一般に関する事項', width: 177),
                c.boxText('ｂ．法令の規定により外国人が履行しなければならない国又は地方公共団体の機関に対する届出その他の手続に関する事項及び必要に応じて同行し手続を補助すること', width: 177),
                c.boxText('ｃ．相談・苦情の連絡先，申出をすべき国又は地方公共団体の機関の連絡先', width: 177, height: 59.5),
              ]),
              c.box(c.booleanInputWithText(ins[34], trailing1: ins[35], trailing2: ins[36]), width: 160, height: 159),
              c.box(
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    c.optionInput(ins[37]),
                    c.text('＜支援内容ごとに異なる場合にはそれがわかるように以下記載＞', fontSize: 8),
                  ]),
                  width: 70,
                  height: 159),
              c.box(
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    c.text(ins[38]),
                    c.text('＜支援内容ごとに異なる場合にはそれがわかるように以下記載＞', fontSize: 8),
                  ]),
                  width: 115,
                  height: 159),
              c.box(
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    c.text(ins[39]),
                    c.text('＜支援内容ごとに異なる場合にはそれがわかるように以下記載＞', fontSize: 8),
                  ]),
                  width: 260,
                  height: 159),
              c.box(
                  Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    c.booleanInput(ins[40], label1: '対面', label2: 'テレビ電話やＤＶＤ等の動画視聴等（質問に応じる体制あり）'),
                    c.text('＜支援内容ごとに異なる場合にはそれがわかるように以下記載＞', fontSize: 8),
                  ]),
                  width: 195,
                  height: 159),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_14/common.dart';

class Page2 {
  static Widget buildPage(List<String> inputs, Font font) {
    Common c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        c.buildBText('※　申請人に関する必要書類'),
        c.buildBText('＜認定用・第１表＞'),
      ]),
      SizedBox(height: 8),
      Table(
        border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: [
          // Header
          TableRow(children: [
            Center(child: c.buildBText('番号', padding: 2)),
            Center(child: c.buildBText('必要書類', padding: 2)),
            Center(child: c.buildBText('様式番号', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Center(child: c.buildBText('提出')),
                Center(child: c.buildBText('の')),
                Center(child: c.buildBText('要否')),
              ]),
            ),
            Center(child: c.buildBText('留意事項', padding: 2)),
            Column(children: [
              Container(
                decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: PdfColors.black))),
                child: Center(child: c.buildBText('提出確認欄', padding: 2)),
              ),
              Row(children: [
                Container(
                  padding: const EdgeInsets.all(2),
                  width: 28,
                  decoration: const BoxDecoration(border: Border(right: BorderSide(color: PdfColors.black))),
                  child: Column(children: [
                    c.buildBText('いずれか'),
                    c.buildBText('選択'),
                  ]),
                ),
                Container(
                  width: 106,
                  padding: const EdgeInsets.all(2),
                  child: Column(children: [
                    c.buildBText('過去に提出した'),
                    c.buildBText('申請日及び申請番号'),
                  ]),
                ),
              ]),
            ]),
            Container(alignment: Alignment.center, width: 28, child: c.buildBText('官用欄')),
          ]),

          // Row 0
          TableRow(children: [
            Center(child: c.buildBText('-')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('返信用封筒（定形封筒に宛名及び宛先を明記の上、'),
                c.buildText('４０４円分の切手（簡易書留用）を貼付したもの）'),
              ]),
            ),
            Container(),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※申請結果（在留資格認定証明書等）の'),
                c.buildText('返送に使用するもの'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[0]),
              c.buildText(inputs[1], padding: 2),
            ]),
            c.buildOptionInput(inputs[2]),
          ]),

          // Row 1
          TableRow(children: [
            Center(child: c.buildBText('1')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('特定技能外国人の在留諸申請に係る提出書類一覧'),
                c.buildText('表(本表)'),
              ]),
            ),
            Container(),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※外国人について同時に申請する場合'),
                c.buildText('は、「申請する特定技能外国人の名簿」'),
                c.buildText('(HP別途掲載)を添付'),
                c.buildText('※同一の受入れ機関に受け入れられる場'),
                c.buildText('合に限る。'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[3], height: 48),
              c.buildText(inputs[4], padding: 2),
            ]),
            c.buildOptionInput(inputs[5], height: 48),
          ]),

          // Row 2
          TableRow(children: [
            Center(child: c.buildBText('2')),
            c.buildBText('在留資格認定証明書交付申請書', padding: 2),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('別記第6号の'),
                c.buildText('3様式'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※申請前３か月以内に正面から撮影され'),
                c.buildText('た無帽、無背景で鮮明な申請人の写真'),
                c.buildText('(縦４ｃｍ×横３ｃｍ)を貼付。写真の裏'),
                c.buildText('面に申請人の氏名を記載'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[6], height: 48),
              c.buildText(inputs[7], padding: 2),
            ]),
            c.buildOptionInput(inputs[8], height: 48),
          ]),

          // Row 3
          TableRow(children: [
            Center(child: c.buildBText('3')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('特定技能外国人の報酬に関する説明書'),
                c.buildText('(注)賃金規定に基づき報酬を決定した場合には賃'),
                c.buildText('金規定を添付'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-4号'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※第２表の１に該当する「一定の実績が', color: PdfColors.red),
                c.buildText('あり適正な受入れが見込まれる機関」に', color: PdfColors.red),
                c.buildText('ついては提出省略', color: PdfColors.red),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[9], height: 36),
              c.buildText(inputs[10], padding: 2),
            ]),
            c.buildOptionInput(inputs[11], height: 36),
          ]),

          // Row 4
          TableRow(children: [
            Center(child: c.buildBText('4')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('特定技能雇用契約書の写し'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-5号'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※申請人が十分に理解できる言語での記'),
                c.buildText('載も必要'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[12], height: 24),
              c.buildText(inputs[13], padding: 2),
            ]),
            c.buildOptionInput(inputs[14], height: 24),
          ]),

          // Row 5.1
          TableRow(children: [
            Center(child: c.buildBText('5.1')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('(１)雇用条件書の写し'),
                c.buildText('(注)１年単位の変形労働時間制を採用している場合'),
                c.buildText('は次のものも添付'),
                c.buildText('・申請人が十分に理解できる言語が併記された年'),
                c.buildText('間カレンダーの写し'),
                c.buildText('・１年単位の変形労働時間制に関する協定書の写し'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-6号'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※申請人が十分に理解できる言語での記'),
                c.buildText('載も必要(雇用条件書(参考様式第１－６'),
                c.buildText('号)の写しのみ)'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[15], height: 56),
              c.buildText(inputs[16], padding: 2),
            ]),
            c.buildOptionInput(inputs[17], height: 56),
          ]),

          // Row 5.2
          TableRow(children: [
            Center(child: c.buildBText('5.2')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('(２)賃金の支払'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-6号別紙'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※申請人が十分に理解できる言語での記'),
                c.buildText('載も必要'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[18], height: 28),
              c.buildText(inputs[19], padding: 2),
            ]),
            c.buildOptionInput(inputs[20], height: 28),
          ]),

          // Row 6
          TableRow(children: [
            Center(child: c.buildBText('6')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('雇用の経緯に係る説明書'),
                c.buildText('(注)雇用契約の成立をあっせんする者がある場'),
                c.buildText('合には、職業紹介事業者に関する「人材サービス'),
                c.buildText('総合サイト」(厚生労働省職業安定局ホームページ)'),
                c.buildText('の画面を印刷したものを添付'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-16号'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※第２表の１に該当する「一定の実績が', color: PdfColors.red),
                c.buildText('あり適正な受入れが見込まれる機関」に', color: PdfColors.red),
                c.buildText('ついては提出省略', color: PdfColors.red),
                c.buildText('※雇用契約の成立をあっせんする者がな'),
                c.buildText('い場合でも提出が必要'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[21], height: 48),
              c.buildText(inputs[22], padding: 2),
            ]),
            c.buildOptionInput(inputs[23], height: 48),
          ]),

          // Row 7
          TableRow(children: [
            Center(child: c.buildBText('7')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('徴収費用の説明書'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-9号 '),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※第２表の１に該当する「一定の実績が', color: PdfColors.red),
                c.buildText('あり適正な受入れが見込まれる機関」に', color: PdfColors.red),
                c.buildText('ついては提出省略', color: PdfColors.red),
                c.buildText('※申請人から家賃を徴収する場合には、'),
                c.buildText('関係資料の提出が必要(参考様式の注意'),
                c.buildText('書きを参照)'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[24], height: 56),
              c.buildText(inputs[25], padding: 2),
            ]),
            c.buildOptionInput(inputs[26], height: 56),
          ]),

          // Row 8.1
          TableRow(children: [
            Center(child: c.buildBText('8.1')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('健康診断個人票'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-3号'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※病院発行の様式でも差し支えないが、'),
                c.buildText('受診項目は参考様式に記載のものが含ま'),
                c.buildText('れていることが必要'),
                c.buildText('※外国語で作成されている場合は、日'),
                c.buildText('本語訳を添付'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[27], height: 52),
              c.buildText(inputs[28], padding: 2),
            ]),
            c.buildOptionInput(inputs[29], height: 52),
          ]),

          // Row 8.2
          TableRow(children: [
            Center(child: c.buildBText('8.2')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('健康診断個人票'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-3号別紙'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Container(),
            Row(children: [
              c.buildOptionInput(inputs[30], height: 28),
              c.buildText(inputs[31], padding: 2),
            ]),
            c.buildOptionInput(inputs[32], height: 28),
          ]),

          // Row 9
          TableRow(children: [
            Center(child: c.buildBText('9')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('１号特定技能外国人支援計画書'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-17号'),
              ]),
            ),
            Center(child: c.buildText('○', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※申請人が十分に理解できる言語での記'),
                c.buildText('載も必要'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[33], height: 28),
              c.buildText(inputs[34], padding: 2),
            ]),
            c.buildOptionInput(inputs[35], height: 28),
          ]),

          // Row 10
          TableRow(children: [
            Center(child: c.buildBText('10')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('登録支援機関との支援委託契約に関する説明書'),
                c.buildText('(注)支援計画の実施の全部を登録支援機関に委'),
                c.buildText('託する場合に限り提出が必要'),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('参考様式'),
                c.buildText('第1-25号'),
              ]),
            ),
            Center(child: c.buildText('△', padding: 2)),
            Container(),
            Row(children: [
              c.buildOptionInput(inputs[36], height: 28),
              c.buildText(inputs[37], padding: 2),
            ]),
            c.buildOptionInput(inputs[38], height: 28),
          ]),

          // Row 11
          TableRow(children: [
            Center(child: c.buildBText('11')),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('二国間取決において定められた遵守すべき手続に'),
                c.buildText('係る書類'),
                c.buildText('(注)特定の国籍のみ提出が必要'),
              ]),
            ),
            Container(),
            Center(child: c.buildText('△', padding: 2)),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('※対象の国籍は、カンボジア、タイ、ベ'),
                c.buildText('トナム（令和４年３月現在）'),
                c.buildText('※詳細は出入国在留管理庁HPを参照'),
              ]),
            ),
            Row(children: [
              c.buildOptionInput(inputs[39], height: 28),
              c.buildText(inputs[40], padding: 2),
            ]),
            c.buildOptionInput(inputs[41], height: 28),
          ]),
        ],
      ),
    ]);
  }
}

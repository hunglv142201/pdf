import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_14/common.dart';

class Page1 {
  static Widget buildPage(List<String> inputs, Font font) {
    Common c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Align(alignment: Alignment.center, child: c.buildBText('「特定技能１号」に係る提出書類一覧表', fontSize: 12)),
      Align(alignment: Alignment.centerRight, child: c.buildBText('＜表紙＞', fontSize: 8)),
      Align(alignment: Alignment.center, child: c.buildBText('(在留資格認定証明書交付申請用)', fontSize: 12)),
      SizedBox(height: 12),
      Container(
        decoration: BoxDecoration(border: Border.all(color: PdfColors.orange, width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildUBText('<申請に当たっての留意事項＞', fontSize: 8),
            Wrap(children: [
              c.buildText('◆ 申請に必要な書類は、受入れ機関の法人・個人事業主の別、分野別に応じて、'),
              c.buildUBText('①「表紙」、②「第１表」、③「第２表の１～３のいずれか」、④「第３表の１～１２のいず'),
              c.buildUBText('れか」'),
              c.buildText('となっており、'),
              c.buildUBText('①から④までの４種類を組み合わせたもの'),
              c.buildText('になります。'),
            ]),
            c.buildUBText('  （組合せ例）：法人で介護分野での受入れをする場合 → ①「表紙」＋②「第１表」＋③「第２表の１」＋④「第３表の１」'),
            Wrap(children: [
              c.buildText('◆ 申請書及び添付書類は、'),
              c.buildUBText('片面印刷（A4サイズ）'),
              c.buildText('としてください。'),
            ]),
            Wrap(children: [
              c.buildText('◆ '),
              c.buildUBText('原本の提出'),
              c.buildText('が求められるものについては、'),
              c.buildUBText('発行(作成)後３か月以内'),
              c.buildText('内のものに限ります。'),
            ]),
            Wrap(children: [
              c.buildText('◆ 申請書類は、①から④までの'),
              c.buildUBText('４種類を組み合わせた一覧表の番号順'),
              c.buildText('に並べた上で、'),
              c.buildUBText('提出確認欄の「有」又は「無」のいずれかに〇'),
              c.buildText('を付けてください。'),
            ]),
            Wrap(children: [
              c.buildText('◆ '),
              c.buildUBText('同一の受入れ機関（事業所）'),
              c.buildText('で受け入れる'),
              c.buildUBText('複数の'),
              c.buildText('申請人について、'),
              c.buildUBText('同時に申請'),
              c.buildText('する場合は、'),
              c.buildUBText('申請人ごとに本表を作成'),
              c.buildText('の上、 次のとおりに必要書類とともに提出してくださ'),
              c.buildText('い。'),
            ]),
            Wrap(children: [
              c.buildText('・本表の番号１ 「申請人名簿」'),
              c.buildUBText('筆頭の'),
              c.buildText('申請人については、一覧表の番号に従って提出を要する'),
              c.buildUBText('全ての書類を番号順'),
              c.buildText('に並べてください。'),
            ]),
            Wrap(children: [
              c.buildText('・本表の番号１ 「申請人名簿」 の'),
              c.buildUBText('２人目以降の'),
              c.buildText('申請人については、'),
              c.buildUBText('①「表紙」、②「第１表」、③「第３の表の１～１２のいずれか」の３種類を組み合わせた一覧表の番号順'),
              c.buildText('に書類を並べ、申請人ごとに１件ずつクリップ等'),
              c.buildUBText('（ホッチキス不可）'),
              c.buildText('で綴じた上で、'),
              c.buildUBText('名簿順に並べてください'),
              c.buildText('。'),
            ]),
            Wrap(children: [
              c.buildText('◆ 提出を省略することができる書類については、提出確認欄に、当該書類を過去に提出した'),
              c.buildUBText('申請日及び申請番号等の申請を特定できる情報'),
              c.buildText('を記載してください。'),
            ]),
            c.buildUBText('  （記載例）：２０２１年３月１日・東労三Ｃ１００0（又は ベトナム人 NGUYEN THI VIETの ２０２１年３月の在留資格変更許可申請）'),
            c.buildText('◆ 必要書類のうち参考様式のものは、必ず使用しなければならないものではありませんが、使用しない場合は、同様の内容が記載された書類を提出してください。'),
            c.buildText('◆ 審査の過程で、必要に応じて本表に記載している書類以外についても提出を求めることがあります。'),
            c.buildText('◆ 様式は、出入国在留管理庁のホームページに掲載しています。'),
            c.buildText(
                '                                                                                                                                http://www.moj.go.jp/isa/policies/ssw/10_00020.html',
                color: PdfColors.blue),
          ]),
        ),
      ),
      SizedBox(height: 12),
      Container(
        decoration: BoxDecoration(border: Border.all(color: PdfColors.orange, width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildUBText('<提出の要否欄の内容＞', fontSize: 8),
            c.buildText('◆ 本表の「提出の要否」欄の意味は次のとおりです。なお、提出の要否については「留意事項」の欄も必ず確認してください。'),
            Wrap(children: [
              c.buildText('  （注１）'),
              c.buildUBText('申請人'),
              c.buildText('に係る'),
              c.buildUBText('過去の'),
              c.buildText('在留諸申請（在留資格認定証明書交付申請、在留資格変更許可申請、在留期間更新許可申請。以下、同じ。）において提出済み'),
            ]),
            Wrap(children: [
              c.buildUBText('  （現在もその内容に変更がなく、有効期限があるものは期限内の場合に限る。）'),
              c.buildText('の場合に提出を省略できるもの。'),
            ]),
            Wrap(children: [
              c.buildText('  （注２）'),
              c.buildUBText('申請人'),
              c.buildText('に係る'),
              c.buildUBText('過去１年以内'),
              c.buildText('の在留諸申請において提出済み'),
              c.buildUBText('（現在もその内容に変更がなく、有効期限があるものは期限内の場合に限る。）'),
              c.buildText('の場合は提出を省略'),
              c.buildText('できるもの。'),
            ]),
            Wrap(children: [
              c.buildText('  （注３）受け入れている'),
              c.buildUBText('任意の外国人'),
              c.buildText('に係る'),
              c.buildUBText('過去の'),
              c.buildText('在留諸申請において提出済み'),
              c.buildUBText('（現在もその内容に変更がなく、有効期限があるものは期限内の場合に限る。）'),
              c.buildText('の場合は提出'),
              c.buildText('を省略できるもの。'),
            ]),
            Wrap(
              children: [
                c.buildText('  （注４）受け入れている'),
                c.buildUBText('任意の外国人'),
                c.buildText('に係る'),
                c.buildUBText('過去１年以内'),
                c.buildText('の在留諸申請において提出済み'),
                c.buildUBText('（現在もその内容に変更がなく、有効期限があるものは期限内の場合に限る。）'),
                c.buildText('の場合は提出を省略できるもの。'),
              ],
            ),
            Wrap(children: [
              c.buildText('  （注５）受け入れている'),
              c.buildUBText('任意の外国人'),
              c.buildText('に係る'),
              c.buildUBText('過去２年以内'),
              c.buildText('の在留諸申請において提出済みの場合は提出を省略できるもの。ただし、'),
              c.buildUBText('過去現在も労働保険料等、社会保険料'),
              c.buildUBText('（健年以内康保険・厚生年金保険料、国民健康保険料(税)、国民年金保険料）、税（国税、住民税）のいずれについても滞納がない場合に限る。'),
            ]),
            Wrap(children: [
              c.buildText('  （注６）受け入れている'),
              c.buildUBText('任意の外国人'),
              c.buildText('に係る'),
              c.buildUBText('過去３年以内'),
              c.buildText('の在留諸申請において提出済み'),
              c.buildUBText('(現在もその内容に変更がなく、有効期限があるものは期限内の場合に限る。)'),
              c.buildText('の場合は提出を省略できるもの。'),
            ]),
            Wrap(children: [
              c.buildText('  （注７）'),
              c.buildUBText('次の全ての条件に該当'),
              c.buildText('する場合には、受け入れている'),
              c.buildUBText('任意の外国人'),
              c.buildText('に係る過去の在留諸申請において'),
              c.buildUBText('提出済みの内容と変更がない限り'),
              c.buildText('、提出を省略できるもの。'),
            ]),
            c.buildText('    ①申請日までの過去２年にわたって継続して（特定の外国人に限らない。）特定技能外国人の受入れを行っていること'),
            c.buildText('    ②申請日の前日から起算して１年以内に特定技能外国人の行方不明（受入れ機関の帰責性の有無を問わない。）を発生させていないこと'),
            c.buildText('    ③申請日の前日から起算して１年以内に地方出入国在留管理局から指導勧告書の交付を受けていないこと'),
            c.buildText('    ④申請日の前日から起算して３年以内に出入国管理及び難民認定法第１９条の２１第１項により改善命令を受けていないこと'),
            c.buildText('    ⑤申請日の前日から起算して１年以内に特定技能に係る定期又は随時の届出（出入国管理及び難民認定法第１９条の１８に定めるもの。）を怠ったことがないこと'),
          ]),
        ),
      ),
      SizedBox(height: 24),
      Row(children: [
        SizedBox(width: 120),
        c.buildText('申　請　人　の　氏　名', underline: true, fontSize: 8),
        SizedBox(width: 44),
        c.buildText(inputs[0], fontSize: 8),
      ]),
      SizedBox(height: 16),
      Row(children: [
        SizedBox(width: 120),
        c.buildText('特定技能所属機関の名称', underline: true, fontSize: 8),
        SizedBox(width: 16),
        c.buildText(inputs[1], fontSize: 8),
      ]),
    ]);
  }
}

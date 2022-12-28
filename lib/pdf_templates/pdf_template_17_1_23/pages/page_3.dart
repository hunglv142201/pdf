import 'package:pdf/widgets.dart';

import '../common.dart';

class Page3 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        c.buildLine('チ',
            '技能実習法第１６条第１項の規定により実習認定を取り消された者が法人である場合（同項第３号の規定により実習認定を取り消された場合については、当該法人がロ又はニに規定する者に該当することとなったことによる場合に限る。）において、当該取消しの処分を受ける原因となった事項が発生した当時現に当該法人の役員（業務を執行する社員、取締役、執行役又はこれらに準ずる者をいい、相談役、顧問その他いかなる名称を有する者であるかを問わず、法人に対し業務を執行する社員、取締役、執行役又はこれらに準ずる者と同等以上の支配力を有するものと認められる者を含む。ヲにおいて同じ。）であった者で、当該取消しの日から起算して５年を経過しないもの',
            padding: 16),
        c.buildLine('リ', '特定技能雇用契約の締結の日前５年以内又はその締結の日以後に、次に掲げる行為その他の出入国又は労働に関する法令に関し不正又は著しく不当な行為をした者', padding: 16),
        c.buildLine('(1)', '外国人に対して暴行し、脅迫し又は監禁する行為', padding: 24),
        c.buildLine('(2)', '外国人の旅券又は在留カードを取り上げる行為', padding: 24),
        c.buildLine('(3)', '外国人に支給する手当又は報酬の一部又は全部を支払わない行為', padding: 24),
        c.buildLine('(4)', '外国人の外出その他私生活の自由を不当に制限する行為', padding: 24),
        c.buildLine('(5)', '⑴から⑷までに掲げるもののほか、外国人の人権を著しく侵害する行為', padding: 24),
        c.buildLine('(6)',
            '外国人に係る出入国又は労働に関する法令に関して行われた不正又は著しく不当な行為に関する事実を隠蔽する目的又はその事業活動に関し外国人に法第３章第１節若しくは第２節の規定による証明書の交付、上陸許可の証印若しくは許可、同章第４節の規定による上陸の許可若しくは法第４章第１節若しくは第２節若しくは第５章第３節の規定による許可を受けさせる目的で、偽造若しくは変造された文書若しくは図画若しくは虚偽の文書若しくは図画を行使し、又は提供する行為',
            padding: 24),
        c.buildLine('(7)',
            '特定技能雇用契約に基づく当該外国人の本邦における活動に関連して、保証金の徴収若しくは財産の管理又は当該特定技能雇用契約の不履行に係る違約金を定める契約その他不当に金銭その他の財産の移転を予定する契約を締結する行為',
            padding: 24),
        c.buildLine('(8)',
            '外国人若しくはその配偶者、直系若しくは同居の親族その他当該外国人と社会生活において密接な関係を有する者との間で、特定技能雇用契約に基づく当該外国人の本邦における活動に関連して、保証金の徴収その他名目のいかんを問わず金銭その他の財産の管理をする者若しくは当該特定技能雇用契約の不履行について違約金を定める契約その他の不当に金銭その他の財産の移転を予定する契約を締結した者又はこれらの行為をしようとする者からの紹介を受けて、当該外国人と当該特定技能雇用契約を締結する行為',
            padding: 24),
        c.buildLine('(9)', '法第１９条の１８の規定による届出をせず、又は虚偽の届出をする行為', padding: 24),
        c.buildLine('(10)',
            '法第１９条の２０第１項の規定による報告若しくは帳簿書類の提出若しくは提示をせず、若しくは虚偽の報告若しくは虚偽の帳簿書類の提出若しくは提示をし、又は同項の規定による質問に対して答弁をせず、若しくは虚偽の答弁をし、若しくは同項の規定による検査を拒み、妨げ、若しくは忌避する行為',
            padding: 24),
        c.buildLine('(11)', '法第１９条の２１第１項の規定による処分に違反する行為', padding: 24),
        c.buildLine('ヌ', '暴力団員による不当な行為の防止等に関する法律第２条第６号に規定する暴力団員（以下「暴力団員」という。）又は暴力団員でなくなった日から５年を経過しない者（以下「暴力団員等」という。）',
            padding: 16),
        c.buildLine('ル', '営業に関し成年者と同一の行為能力を有しない未成年者であって、その法定代理人がイからヌまで又はヲのいずれかに該当するもの', padding: 16),
        c.buildLine('ヲ', '法人であって、その役員のうちにイからルまでのいずれかに該当する者があるもの', padding: 16),
        c.buildLine('ワ', '(略)', padding: 16),
      ]),
    );
  }
}

import 'package:pdf/widgets.dart';

class Page1 {
  static late Font _font;

  static Widget buildPage(List<String> inputs, Font font) {
    _font = font;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _buildText('参考様式第２－１号'),
      SizedBox(height: 16),
      Center(child: _buildText('登  録  支  援  機  関  誓  約  書', fontSize: 12)),
      SizedBox(height: 16),
      Row(children: [
        SizedBox(width: 4),
        _buildText('わたしは、出入国管理及び難民認定法第１９条の２６第１項各号に規定する登録拒否事由のいずれにも該当しないことを誓約します。'),
      ]),
      SizedBox(height: 8),
      Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            SizedBox(width: 4),
            _buildText('【参考】'),
          ]),
          _buildText('○   出入国管理及び難民認定法（昭和２６年政令第３１９号）（抄）'),
          Row(children: [
            SizedBox(width: 4),
            _buildText('（登録の拒否）'),
          ]),
          _buildText(
              '第１９条の２６出入国在留管理庁長官は、第１９条の２３第１項の登録を受けようとする者が次の各号のいずれかに該当するとき、又は第１９条の２４\n    第１項の申請書若しくはその添付書類のうちに重要な事項について虚偽の記載があり、若しくは重要な事実の記載が欠けているときは、その登録を\n    拒否しなければならない。'),
          _buildLine('1', '禁錮以上の刑に処せられ、その執行を終わり、又は執行を受けることがなくなつた日から起算して５年を経過しない者'),
          _buildLine('2',
              '出入国管理及び難民認定法若しくは外国人の技能実習の適正な実施及び技能実習生の保護に関する法律（平成２８年法律第８９号。以下「技能実習法」という。）の規定その他出入国若しくは労働に関する法律の規定（第４号に規定する規定を除く。）であつて政令で定めるもの又はこれらの規定に基づく命令の規定により、罰金の刑に処せられ、その執行を終わり、又は執行を受けることがなくなつた日から起算して５年を経過しない者'),
          _buildLine('3',
              '暴力団員による不当な行為の防止等に関する法律（平成３年法律第７７号）の規定（同法第５０条（第２号に係る部分に限る。）及び第５２条の規定を除く。）により、又は刑法第２０４条、第２０６条、第２０８条、第２０８条の２、第２２２条若しくは第２４７条の罪若しくは暴力行為等処罰に関する法律の罪を犯したことにより、罰金の刑に処せられ、その執行を終わり、又は執行を受けることがなくなつた日から起算して５年を経過しない者'),
          _buildLine('4',
              '健康保険法（大正１１年法律第７０号）第２０８条、第２１３条の２若しくは第２１４条第１項、船員保険法（昭和１４年法律第７３号）第１５６条、第１５９条若しくは第１６０条第１項、労働者災害補償保険法（昭和２２年法律第５０号）第５１条前段若しくは第５４条第１項（同法第５１条前段の規定に係る部分に限る。）、厚生年金保険法（昭和２９年法律第１１５号）第１０２条、第１０３条の２若しくは第１０４条第１項（同法第１０２条又は第１０３条の２の規定に係る部分に限る。）、労働保険の保険料の徴収等に関する法律（昭和４４年法律第８４号）第４６条前段若しくは第４８条第１項（同法第４６条前段の規定に係る部分に限る。）又は雇用保険法（昭和４９年法律第１１６号）第８３条若しくは第８６条（同法第８３条の規定に係る部分に限る。）の規定により、罰金の刑に処せられ、その執行を終わり、又は執行を受けることがなくなつた日から起算して５年を経過しない者'),
          _buildLine('5', '心身の故障により支援業務を適正に行うことができない者として法務省令で定めるもの'),
          _buildLine('6', '破産手続開始の決定を受けて復権を得ない者'),
          _buildLine('7', '第１９条の３２第１項の規定により第１９条の２３第１項の登録を取り消され、当該取消しの日から起算して５年を経過しない者'),
          _buildLine('8',
              '第１９条の３２第１項の規定により第１９条の２３第１項の登録を取り消された者が法人である場合において、当該取消しの処分を受ける原因となつた事項が発生した当時現に当該法人の役員（業務を執行する社員、取締役、執行役又はこれらに準ずる者をいい、相談役、顧問その他いかなる名称を有する者であるかを問わず、法人に対し業務を執行する社員、取締役、執行役又はこれらに準ずる者と同等以上の支配力を有するものと認められる者を含む。第１２号において同じ。）であつた者で、当該取消しの日から起算して５年を経過しないもの'),
          _buildLine('9', '第１９条の２３第１項の登録の申請の日前５年以内に出入国又は労働に関する法令に関し不正又は著しく不当な行為をした者'),
          _buildLine('10',
              '暴力団員による不当な行為の防止等に関する法律第２条第６号に規定する暴力団員（以下この号において「暴力団員」という。）又は暴力団員でなくなつた日から５年を経過しない者（第１３号において「暴力団員等」という。）'),
          _buildLine('11', '営業に関し成年者と同一の行為能力を有しない未成年者であつて、その法定代理人が前各号又は次号のいずれかに該当するもの'),
          _buildLine('12', '法人であつて、その役員のうちに前各号のいずれかに該当する者があるもの'),
          _buildLine('13', '暴力団員等がその事業活動を支配する者'),
          _buildLine('14', '支援業務を的確に遂行するための必要な体制が整備されていない者として法務省令で定めるもの'),
          Divider(height: 4),
          Row(children: [
            SizedBox(width: 8),
            _buildText('(心身の故障により支援業務を適正に行うことができない者)'),
          ]),
          _buildText('法施行規則第１９条の２０'),
          Row(children: [
            Flexible(
                child: _buildText(
                    '     法第１９条の２６第１項第５号の法務省令で定める者は、精神の機能の障害により支援業務を適正に行うに当たつての必要な認知、判断及び意思疎通を適切に行うことができない者とする。')),
          ]),
          Row(children: [
            SizedBox(width: 8),
            _buildText('(支援業務を的確に遂行するための必要な体制が整備されていない者)'),
          ]),
          _buildText('法施行規則第１９条の２１'),
          Row(children: [
            SizedBox(width: 8),
            _buildText('法第１９条の２６第１項第１４号の法務省令で定める者は、次の各号のいずれかに該当する者とする。'),
          ]),
          _buildLine('1', '過去１年間に、登録支援機関になろうとする者において、その者の責めに帰すべき事由により外国人の行方不明者を発生させている者'),
          _buildLine('2', '登録支援機関になろうとする者において、役員又は職員の中から、支援責任者及び支援業務を行う事務所ごとに１名以上の支援担当者（支援責任者が兼ねることができる。）が選任されていない者'),
          _buildLine('3', '次のいずれにも該当しない者'),
          _buildLine('イ',
              '登録支援機関になろうとする者が、過去２年間に法別表第１の１の表、２の表及び５の表の上欄の在留資格（収入を伴う事業を運営する活動又は報酬を受ける活動を行うことができる在留資格に限る。ハにおいて同じ。）をもつて在留する中長期在留者の受入れ又は管理を適正に行つた実績がある者であること',
              padding: 16),
          _buildLine('ロ', '登録支援機関になろうとする者が、過去２年間に報酬を得る目的で業として本邦に在留する外国人に関する各種の相談業務に従事した経験を有する者であること', padding: 16),
          _buildLine('ハ',
              '登録支援機関になろうとする者において選任された支援責任者及び支援担当者が、過去５年間に２年以上法別表第１の１の表、２の表及び５の表の上欄の在留資格をもつて在留する中長期在留者の生活相談業務に従事した一定の経験を有する者であること',
              padding: 16),
          _buildLine('ニ', 'イからハまでに掲げるもののほか、登録支援機関になろうとする者が、これらの者と同程度に支援業務を適正に実施することができる者として出入国在留管理庁長官が認めるものであること',
              padding: 16),
          _buildLine('4', '情報提供及び相談対応に関し次のいずれかに該当する者'),
          _buildLine('イ', '適合１号特定技能外国人支援計画に基づき情報提供すべき事項について、特定技能外国人が十分に理解することができる言語により適切に情報提供する体制を有していない者',
              padding: 16),
          _buildLine('ロ', '特定技能外国人からの相談に係る対応について、担当の職員を確保し、特定技能外国人が十分に理解することができる言語により適切に対応する体制を有していない者', padding: 16),
          _buildLine('ハ', '支援責任者又は支援担当者が特定技能外国人及びその監督をする立場にある者と定期的な面談を実施することができる体制を有していない者', padding: 16),
          _buildLine(
              '5', '支援業務の実施状況に係る文書を作成し、当該支援業務を行う事務所に、当該支援業務に係る支援の対象である特定技能外国人が締結した特定技能雇用契約の終了の日から１年以上備えて置くこととしていない者'),
        ]),
      ),
    ]);
  }

  static Widget _buildLine(String number, String text, {double padding = 8}) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(width: padding),
      _buildText(number),
      SizedBox(width: 6),
      Flexible(
        child: _buildText(text),
      ),
    ]);
  }

  static Widget _buildText(
    String? txt, {
    double fontSize = 7,
  }) {
    return Text(
      txt ?? '',
      style: TextStyle(font: _font, fontSize: fontSize),
    );
  }
}
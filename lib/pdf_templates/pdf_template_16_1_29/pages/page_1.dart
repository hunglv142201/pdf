import 'package:pdf/widgets.dart';

class Page1 {
  static late Font _font;

  static Widget buildPage(List<String> inputs, Font font) {
    _font = font;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _buildText('参考様式第１－２９号'),

      SizedBox(height: 32),
      Center(child: _buildText('書類省略に当たっての誓約書', fontSize: 10)),
      SizedBox(height: 32),

      _buildText(
          '   今般の申請にあたり、以下の事項を含め、出入国管理及び難民認定法令に適合していることを、誓約します。この誓約が虚偽であり、又はこの誓約に反した場合には、出入国管理及び難民認定法令に関し不正又は著しい不当な行為をしたものとして５年間の受入れができないこととなることも理解しています。'),
      SizedBox(height: 16),

      // 1
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _buildText('1'),
        SizedBox(width: 8),
        _buildText('申請書（所属機関作成用）で申告した事項及びその他提出書類の内容に虚偽でなく、以下のいずれにも滞納がないこと'),
      ]),

      // 1.1
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 8),
        _buildText('(1)'),
        SizedBox(width: 6),
        _buildText('労働関係法令の遵守\n労働保険料（適用事業所のみ）'),
      ]),

      // 1.2
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 8),
        _buildText('(2)'),
        SizedBox(width: 6),
        _buildText('社会保険関係法令の遵守'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 14),
        _buildText('ア   健康保険・厚生年金保険の適用事業所の場合'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 14),
        _buildText('       健康保険・厚生年金保険料'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 14),
        _buildText('イ   健康保険・厚生年金保険の適用事業所の場合ではない場合'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 18),
        _buildText('（ア） 事業主の国民健康保険料'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 18),
        _buildText('（イ） 事業主の国民年金保険料'),
      ]),

      // 1.3
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 8),
        _buildText('(3)'),
        SizedBox(width: 6),
        _buildText('租税関係の法令遵守'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 14),
        _buildText('ア   法人の場合'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 18),
        _buildText('（ア） 国税（源泉所得税及び復興特別所得税、法人税、消費税及び地方消費税）'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 18),
        _buildText('（イ） 地方税（法人住民税）'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 14),
        _buildText('イ   個人事業主の場合'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 18),
        _buildText('（ア） 国税（源泉所得税及び復興特別所得税、消費税及び地方消費税、相続税、贈与税）'),
      ]),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(width: 18),
        _buildText('（イ） 地方税（個人住民税）'),
      ]),

      // 2
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _buildText('2'),
        SizedBox(width: 8),
        _buildText('特定技能外国人の受入れ後は、出入国管理及び難民認定法第１９条の１８第２項第１号又は第３号の規定に基づき、事実に即し\nた内容を適正に届け出ること'),
      ]),

      // 3
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _buildText('3'),
        SizedBox(width: 8),
        _buildText('出入国在留管理局が行う、関係書類の提出指導、事情聴取、実地調査等の調査に応じること'),
      ]),

      SizedBox(height: 16),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        _buildText('${inputs[0].split('/')[0]}年   ${inputs[0].split('/')[1]}月   ${inputs[0].split('/')[2]}日')
      ]),
      SizedBox(height: 8),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        _buildText(inputs[1]),
        SizedBox(width: 96),
      ]),
    ]);
  }

  static Widget _buildText(
    String? txt, {
    double fontSize = 8,
    double padding = 0,
  }) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        txt ?? '',
        style: TextStyle(font: _font, fontSize: fontSize),
      ),
    );
  }
}

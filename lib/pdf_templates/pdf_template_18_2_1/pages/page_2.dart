import 'package:pdf/widgets.dart';

class Page2 {
  static late Font _font;

  static Widget buildPage(List<String> inputs, Font font) {
    _font = font;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildLine('6', '支援責任者又は支援担当者が次のいずれか（支援担当者にあつてはイに限る。）に該当する者'),
          _buildLine('イ', '法第１９条の２６第１項第１号から第１１号までのいずれかに該当する者', padding: 16),
          _buildLine('ロ',
              '特定技能所属機関の役員の配偶者、２親等内の親族その他特定技能所属機関の役員と社会生活において密接な関係を有する者であるにもかかわらず、当該特定技能所属機関から委託を受けた支援業務に係る支援責任者となろうとする者',
              padding: 16),
          _buildLine('ハ', '過去５年間に特定技能所属機関の役員又は職員であつた者であるにもかかわらず、当該特定技能所属機関から委託を受けた支援業務に係る支援責任者となろうとする者', padding: 16),
          _buildLine('7', '１号特定技能外国人支援に要する費用について、直接又は間接に当該外国人に負担させることとしている者'),
          _buildLine('8', '法第２条の５第５項の契約を締結するに当たり、特定技能所属機関に対し、支援業務に要する費用の額及びその内訳を示すこととしていない者'),
        ]),
      ),
      SizedBox(height: 32),
      Row(children: [
        SizedBox(width: 256),
        Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildText('作       成       年       月       日'),
          _buildText('${inputs[0].split('/')[0]}年   ${inputs[0].split('/')[1]}月   ${inputs[0].split('/')[2]}日'),
        ])),
      ]),
      SizedBox(height: 16),
      Row(children: [
        SizedBox(width: 256),
        Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildText('申 請 者 の 氏 名 又 は 名 称'),
          _buildText(inputs[1]),
        ])),
      ]),
      SizedBox(height: 16),
      Row(children: [
        SizedBox(width: 256),
        Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildText('作  成  者  の  役  職 ・ 氏  名'),
          _buildText(inputs[2]),
        ])),
      ]),
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

import 'package:pdf/widgets.dart';

import '../common.dart';

class Page9 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Row(children: [
        c.buildText('別紙 業種一覧', fontSize: 9),
        SizedBox(width: 32),
        c.buildText('Attachment: A list of business type', fontSize: 8),
      ]),
      SizedBox(height: 4),
      Row(children: [
        _buildNumberBox('1'),
        _buildTextBox('農林業', 'Agriculture'),
      ]),
      Row(children: [
        _buildNumberBox('2'),
        _buildTextBox('漁業', 'Fishery'),
      ]),
      Row(children: [
        _buildNumberBox('3'),
        _buildTextBox('漁業', 'Fishery'),
      ]),
      Row(children: [
        _buildNumberBox('4'),
        _buildTextBox('建設業', 'Construction'),
      ]),
      Row(children: [
        Column(children: [
          _buildNumberBox('5'),
          _buildNumberBox('6'),
          _buildNumberBox('7'),
          _buildNumberBox('8'),
          _buildNumberBox('9'),
          _buildNumberBox('10'),
          _buildNumberBox('11'),
          _buildNumberBox('12'),
        ]),
        _buildBox(
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('製造業', fontSize: 8),
            c.buildText('Manufacturing', fontSize: 7),
          ]),
          height: 121,
          width: 118,
        ),
        SizedBox(
          height: 121,
          width: 348,
          child: Column(children: [
            _buildTextBox('食料品', 'Food products'),
            _buildTextBox('繊維工業', 'Textile industry'),
            _buildTextBox('プラスチック製品', 'Plastic products'),
            _buildTextBox('金属製品', 'Metal products'),
            _buildTextBox('生産用機械器具', 'Industrial machinery and equipment'),
            _buildTextBox('電気機械器具', 'Electrical machinery and equipment'),
            _buildTextBox('輸送用機械器具', 'Transportation machinery and equipment'),
            _buildTextBox('その他（他に分類されないもの）', 'Others'),
          ]),
        ),
      ]),
      Row(children: [
        _buildNumberBox('13'),
        _buildTextBox('電気・ガス・熱供給・水道業', 'Electricity, gas, heat supply, water supply'),
      ]),
      Row(children: [
        _buildNumberBox('14'),
        _buildTextBox('情報通信業', 'Information and communication industry'),
      ]),
      Row(children: [
        _buildNumberBox('15'),
        _buildTextBox('運輸・信書便事業', 'Transportation and correspondence'),
      ]),
      Row(children: [
        Column(children: [
          _buildNumberBox('16'),
          _buildNumberBox('17'),
          _buildNumberBox('18'),
          _buildNumberBox('19'),
          _buildNumberBox('20'),
          _buildNumberBox('21'),
        ]),
        _buildBox(
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('卸売業', fontSize: 8),
            c.buildText('Wholesale', fontSize: 7),
          ]),
          height: 90.75,
          width: 118,
        ),
        SizedBox(
          height: 90.75,
          width: 348,
          child: Column(children: [
            _buildTextBox('各種商品（総合商社等）', 'Various products (general trading company, etc.)'),
            _buildTextBox('繊維・衣服等', 'Textile, clothing, etc.'),
            _buildTextBox('飲食料品', 'Food and beverages'),
            _buildTextBox('建築材料，鉱物・金属材料等', 'Building materials, mineral and metal materials etc.'),
            _buildTextBox('機械器具', 'Machinery and equipment'),
            _buildTextBox('その他', 'Others'),
          ]),
        ),
      ]),
      Row(children: [
        Column(children: [
          _buildNumberBox('22'),
          _buildNumberBox('23'),
          _buildNumberBox('24'),
          _buildNumberBox('25'),
          _buildNumberBox('26'),
        ]),
        _buildBox(
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('小売業', fontSize: 8),
            c.buildText('Retail', fontSize: 7),
          ]),
          height: 75.625,
          width: 118,
        ),
        SizedBox(
          height: 75.625,
          width: 348,
          child: Column(children: [
            _buildTextBox('各種商品', 'Various products'),
            _buildTextBox('織物・衣服・身の回り品', 'Fabric, clothing, personal belongings'),
            _buildTextBox('飲食料品（コンビニエンスストア等）', 'Food and beverages (convenience store, etc.)'),
            _buildTextBox('機械器具', 'Machinery and equipment retailing'),
            _buildTextBox('その他', 'Others'),
          ]),
        ),
      ]),
      Row(children: [
        _buildNumberBox('27'),
        _buildTextBox('金融・保険業', 'Finance / insurance'),
      ]),
      Row(children: [
        _buildNumberBox('28'),
        _buildTextBox('不動産・物品賃貸業', 'Real estate / rental goods'),
      ]),
      Row(children: [
        Column(children: [
          _buildNumberBox('29'),
          _buildNumberBox('30'),
          _buildNumberBox('31'),
          _buildNumberBox('32'),
        ]),
        _buildBox(
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('学術研究，専門・技術サービス業', fontSize: 8),
            c.buildText('Academic research, specialized/technical services', fontSize: 7),
          ]),
          height: 60.5,
          width: 118,
        ),
        SizedBox(
          height: 60.5,
          width: 348,
          child: Column(children: [
            _buildTextBox('学術・開発研究機関', 'Academic research, specialized / technical service industry'),
            _buildTextBox('専門サービス業（他に分類されないもの）', 'Specialized service industry (not categorized elsewhere)',
                fontSize: 7),
            _buildTextBox('広告業', 'Advertising industry'),
            _buildTextBox('技術サービス業（他に分類されないもの）', 'Technical service industry (not categorized elsewhere)', fontSize: 7),
          ]),
        ),
      ]),
      Row(children: [
        _buildNumberBox('33'),
        _buildTextBox('宿泊業', 'Accommodation'),
      ]),
      Row(children: [
        _buildNumberBox('34'),
        _buildTextBox('飲食サービス業', 'Food and beverage service industry'),
      ]),
      Row(children: [
        _buildNumberBox('35', height: 24),
        _buildTextBox(
            '生活関連サービス（理容・美容等）・娯楽業', 'Lifestyle-related services (barber / beauty, etc.) / entertainment industry'),
      ]),
      Row(children: [
        _buildNumberBox('36'),
        _buildTextBox('学校教育', 'School education'),
      ]),
      Row(children: [
        _buildNumberBox('37'),
        _buildTextBox('その他の教育，学習支援業', 'Other education, learning support industry'),
      ]),
      Row(children: [
        Column(children: [
          _buildNumberBox('38'),
          _buildNumberBox('39'),
          _buildNumberBox('40'),
        ]),
        _buildBox(
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('医療・福祉業', fontSize: 8),
            c.buildText('Medical / welfare services', fontSize: 7),
          ]),
          height: 45.375,
          width: 118,
        ),
        SizedBox(
          height: 45.375,
          width: 348,
          child: Column(children: [
            _buildTextBox('医療業', 'Medical industry'),
            _buildTextBox('保健衛生', 'Health and hygiene'),
            _buildTextBox('社会保険・社会福祉・介護事業', 'Social insurance / social welfare / nursing care'),
          ]),
        ),
      ]),
      Row(children: [
        _buildNumberBox('41', height: 34.75),
        _buildBox(
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('複合サービス事業（郵便局，農林水産業協同組合，事業協同組合（他に分類されないもの））', fontSize: 8),
            c.buildText(
                'Combined services (post office, agriculture, forestry and fisheries cooperative association, business cooperative (not categorized elsewhere))',
                fontSize: 7),
          ]),
          width: 466,
        ),
      ]),
      Row(children: [
        _buildNumberBox('42'),
        _buildTextBox('職業紹介・労働者派遣業', 'Employment placement / worker dispatch industry'),
      ]),
      Row(children: [
        _buildNumberBox('43', height: 25),
        _buildBox(
          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('その他の事業サービス業（速記・ワープロ入力・複写業，建物サービス業，警備業等）', fontSize: 8),
            c.buildText(
                'Other business services (shorthand / word processing / copying, building services, security business, etc.)',
                fontSize: 7),
          ]),
          width: 466,
        ),
      ]),
      Row(children: [
        _buildNumberBox('44'),
        _buildTextBox('その他のサービス業（他に分類されないもの）', 'Other service industries'),
      ]),
      Row(children: [
        _buildNumberBox('45'),
        _buildTextBox('宗教', 'Religion'),
      ]),
      Row(children: [
        _buildNumberBox('46'),
        _buildTextBox('公務（他に分類されるものを除く）', 'Public service (not categorized elsewhere)'),
      ]),
      Row(children: [
        _buildNumberBox('47'),
        _buildTextBox('分類不能の産業', 'Unclassifiable industry'),
      ]),
    ]);
  }

  static Widget _buildNumberBox(String text, {double? width, double? height}) {
    return _buildBox(Center(child: c.buildText(text, fontSize: 8)), width: width ?? 16, height: height);
  }

  static Widget _buildTextBox(String leftText, String rightText, {double fontSize = 8}) {
    return Expanded(
      child: _buildBox(
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          c.buildText(leftText, fontSize: fontSize),
          Expanded(child: Container()),
          Container(width: 208, child: c.buildText(rightText, fontSize: fontSize - 1)),
        ]),
      ),
    );
  }

  static Widget _buildBox(Widget child, {double? width, double? height}) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      padding: const EdgeInsets.all(2),
      width: width,
      height: height,
      child: child,
    );
  }
}

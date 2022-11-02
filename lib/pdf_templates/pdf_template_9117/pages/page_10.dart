import 'package:pdf/widgets.dart';

import 'package:pdf/pdf.dart';

class Page10 {
  static Widget buildPage(List<String> inputs, Font font) {
    inputs = [
      'input 0',
      'input 1',
      'input 2',
      'input 3',
      '2022/11/02',
      'input 5',
      'input 6',
    ];

    String year = inputs[4] == '' ? '' : inputs[4].split('/')[0];
    String month = inputs[4] == '' ? '' : inputs[4].split('/')[1];
    String day = inputs[4] == '' ? '' : inputs[4].split('/')[2];
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText('（注意）', font, fontSize: 11),
        _buildText(
            '１ Ⅰ欄は，支援対象者が複数名いる場合であって支援内容が同一の場合に限り，「１ 氏名に「別紙の名簿のとおり」と記載し，Ⅰ欄の事項が記載された名簿（任意様式）を添付することとして差し支えない。ただし， 申請を同時に行う場合に限る。',
            font,
            fontSize: 11),
        _buildText('２ Ⅱ欄４は，特定技能所属機関自らが１号特定技能外国人支援計画を実施する場合のみ記載すること', font, fontSize: 11),
        _buildText('３ Ⅲ欄は，１号特定技能外国人支援計画の全部の実施を登録支援機関に委託する場合のみ記載すること。', font, fontSize: 11),
        _buildText('４ Ⅳ欄１から９までの「実施予定」欄は，該当するものにチェックをし，実施予定が「有」の場合は実施時期を簡潔に記載し，「無」の場合は当該支援を実施しない理由について括弧内に記載すること', font,
            fontSize: 11),
        _buildText(
            '５ Ⅳ欄１から９までの「委託の有無」欄は，特定技能所属機関が支援の一部を第三者に委託（登録支援機関に委託する場合を除く。）する場合にのみ「有」と記載し，特定技能所属機関が自ら支援を行う場合や  登録支援機関に支援の全部を委託する場合には「無」と記載すること。',
            font,
            fontSize: 11),
        _buildText(
            '６ Ⅳ欄１から８までの「支援担当者又は委託を受けた支援実施者」欄は，特定技能所属機関が自ら支援を行う場合や登録支援機関に 支援の全部を委託する場合に選任することとされている支援担当者 を 支援項目ごとに氏名及び括弧内に役職を記載し，特定技能所属機関から委託の一部を受けた第三者が支援を実施する場合は支援の委託を受けた者の氏名及び所在地を記載すること。',
            font,
            fontSize: 11),
        _buildText(
            '   なお，Ⅳ欄９の「支援責任者又は支援担当者」欄は，特定技能所属機関が自ら支援を行う場合や登録支援機関に支援の全部を委託する場合に選任することとされている支援責任者又は支援担当者の氏名及び括弧内に役職を記載し,このうちｂ欄及び自由記入欄については同欄の支援を,特定技能所属機関から委託の一部を受けた第三者が支援を実施する場合は支援の委託を受けた者の氏名及び所在地を記載すること。',
            font,
            fontSize: 11),
        _buildText('７ Ⅳ欄１から４まで及び９の「実施方法」欄は，該当するものにチェックをすること。「その他」にチェックする場合は，その実施方法について括弧内に記載すること。', font, fontSize: 11),
        _buildText('８ Ⅳ欄３アｄ「居室の広さ」について，該当するものを括弧内のチェックボックスから選択すること。', font, fontSize: 11),
        _buildText('９ Ⅳ欄６イの「対応時間」欄は，対応可能曜日についてその時間帯を記載すること。', font, fontSize: 11),
        Padding(padding: const EdgeInsets.only(top: 20), child: _buildText('上記のとおり支援を実施します。', font, fontSize: 13)),
        Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: _buildText('また，本書面は支援対象者が十分に理解できる言語に翻訳し，支援対象者に交付するとともに，内容について十分に説明しました。', font, fontSize: 13)),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            alignment: Alignment.centerRight,
            width: 300,
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: _buildText('特定技能所属機関の氏名又は名称', font, fontSize: 13),
          ),
          Container(
              alignment: Alignment.center,
              width: 300,
              decoration: _buildBoxUnderLine(width: 1),
              child: _buildText(inputs[0], font, fontSize: 13))
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            alignment: Alignment.centerRight,
            width: 300,
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: _buildText('作    成    責    任    者    の    氏    名', font, fontSize: 13),
          ),
          Container(
              alignment: Alignment.center,
              width: 300,
              decoration: _buildBoxUnderLine(width: 1),
              child: _buildText(inputs[1] + '    ' + inputs[2], font, fontSize: 13)),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Row(children: [
            _buildText('本書面について，', font, fontSize: 13),
            Container(
              width: 150,
              alignment: Alignment.center,
              decoration: _buildBoxUnderLine(width: 1),
              child: _buildText(inputs[3], font, fontSize: 13),
            ),
            _buildText(' 語による翻訳文の交付を受け，その内容について説明を受け十分に理解しました。', font, fontSize: 13),
          ]),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            alignment: Alignment.centerRight,
            width: 300,
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: _buildText('署                   名                   日', font, fontSize: 13),
          ),
          Container(
              alignment: Alignment.center,
              width: 300,
              child: _buildText(year + ' 年  ' + month + ' 月 ' + day + ' 日 ', font, fontSize: 13))
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            alignment: Alignment.centerRight,
            width: 300,
            padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
            child: _buildText('１  号  特  定  技  能  外  国  人  の  署  名', font, fontSize: 13),
          ),
          Container(
              alignment: Alignment.center,
              width: 300,
              decoration: _buildBoxUnderLine(width: 1),
              child: _buildText(inputs[5] + '    ' + inputs[6], font, fontSize: 13)),
        ]),
      ],
    );
  }

  static Widget _buildText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return Text(text, style: TextStyle(font: font));
    } else {
      return Text(text, style: TextStyle(font: font, fontSize: fontSize));
    }
  }

  static BoxDecoration _buildBoxUnderLine({String color = '#000000', double width = 1}) {
    return BoxDecoration(
      border: Border(bottom: BorderSide(color: PdfColor.fromHex(color), width: width)),
    );
  }
}

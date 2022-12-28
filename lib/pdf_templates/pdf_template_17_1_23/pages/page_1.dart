import 'package:pdf/widgets.dart';

import '../common.dart';

class Page1 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      c.buildText('参考様式第１－２３号'),
      SizedBox(height: 16),
      Center(child: c.buildText('特定技能所属機関の役員に関する誓約書', fontSize: 12)),
      SizedBox(height: 16),
      c.buildText('特定技能所属機関の役員のうち、下表に掲げる者は、特定技能外国人の受入れ業務の執行に直接的に関与する役員ではありません。', fontSize: 9),
      SizedBox(height: 6),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _buildBox('（ふりがな）\n 役員の氏名', center: true, width: 64, height: 320),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _buildBox(inputs[0]),
          _buildBox(inputs[1]),
          _buildBox(inputs[2]),
          _buildBox(inputs[3]),
          _buildBox(inputs[4]),
          _buildBox(inputs[5]),
          _buildBox(inputs[6]),
          _buildBox(inputs[7]),
          _buildBox(inputs[8]),
          _buildBox(inputs[9]),
          _buildBox(inputs[10]),
          _buildBox(inputs[11]),
          _buildBox(inputs[12]),
          _buildBox(inputs[13]),
          _buildBox(inputs[14]),
          _buildBox(inputs[15]),
        ]),
      ]),
      SizedBox(height: 6),
      c.buildText(
          ' また、当該役員について、次表に掲げる出入国管理及び難民認定法（昭和26年政令第319号）第２条の５の規定に基づき、特定技能雇用契約及び１号特定技能外国人支援計画の基準等を定める省令（平成３１年法務省令第５号）第２条第１項第４号に定められている欠格事由に該当する者ではないことを確認しました。当該役員に対して、今後、欠格事由に該当するに至ったときは、直ちに出入国在留管理庁に申告するとともに、役員の地位を退く必要があることを説明しています。'),
      SizedBox(height: 16),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        c.buildText(
            '${inputs[16].split('/')[0]}年   ${inputs[16].split('/')[1]}月   ${inputs[16].split('/')[2]}日          作成'),
      ]),
      SizedBox(height: 16),
      Row(children: [
        SizedBox(width: 230),
        Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          c.buildText('特定技能所属機関の氏名又は名称'),
          c.buildText(inputs[17]),
        ])),
      ]),
      SizedBox(height: 16),
      Row(children: [
        SizedBox(width: 230),
        Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          c.buildText('作   成   責   任   者   役職  ・  氏名'),
          c.buildText(inputs[18]),
        ])),
      ]),
    ]);
  }

  static Widget _buildBox(String text, {bool center = false, double? width, double? height, EdgeInsets? padding}) {
    return Container(
      width: width ?? 412,
      height: height ?? 20,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      decoration: BoxDecoration(border: Border.all()),
      child: center ? Center(child: c.buildText(text)) : c.buildText(text),
    );
  }
}

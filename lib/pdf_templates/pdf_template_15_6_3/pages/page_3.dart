import 'package:pdf/widgets.dart';

import '../common.dart';

class Page3 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
        c.buildGText([
          '申請人等作成用 ２　 　V　（「特定技能（１号）」・「特定技能（２号）」）',
          'For applicant, part 2 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ⅱ ) ")'
        ], fontSize: 7),
        c.buildGText(['在留資格認定証明書用', 'For certificate of eligibility'], fontSize: 7),
      ]),
      Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: const EdgeInsets.all(1),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // 22
          Row(children: [
            c.buildText('22 特定技能所属機関', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Organization of affiliation of the specified skilled worker'),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber('(1)', '氏名又は名称', 'Name of person or organization', fontSize: 7),
            c.buildText(inputs[0], fontSize: 11),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber('(2)', '住所（所在地）', 'Address', fontSize: 7),
            c.buildText(inputs[1], fontSize: 11),
            SizedBox(width: 20),
            c.buildNumber('', '電話番号', 'Telephone No.', fontSize: 7),
            c.buildText(inputs[2], fontSize: 11),
          ]),

          // 23
          Row(children: [
            c.buildText('23 技能水準', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Skill level'),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildCheckbox(inputs[3] == '1'),
            c.buildText('分野別運用方針に定める評価方法による証明', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Proof based on the evaluation method specified in the field-specific operational policy'),
          ]),
          Row(children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[4] == '1'),
            c.buildText('試験による証明', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Proof based on the passing of an exam'),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 48),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                c.buildText('合格した試験名', fontSize: 7),
                SizedBox(width: 16),
                c.buildText('Name of passed exam'),
              ]),
              Row(children: [
                SizedBox(width: 16),
                c.buildText(inputs[5], fontSize: 11),
              ]),
              SizedBox(height: 12),
              Row(children: [
                SizedBox(width: 16),
                c.buildText(inputs[6], fontSize: 11),
              ]),
            ]),
            SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                c.buildText('受験地', fontSize: 7),
                SizedBox(width: 16),
                c.buildText('Exam location'),
              ]),
              Row(children: [
                SizedBox(width: 16),
                c.buildCheckbox(inputs[7] == '1'),
                c.buildText('日本国内', fontSize: 7),
              ]),
              Row(children: [
                SizedBox(width: 16),
                c.buildCheckbox(inputs[8] == '1'),
                c.buildText('日本国外（国名：', fontSize: 7),
                c.buildText(inputs[9], fontSize: 11),
                c.buildText(')', fontSize: 7),
              ]),
              SizedBox(height: 4),
              Row(children: [
                SizedBox(width: 16),
                c.buildCheckbox(inputs[10] == '1'),
                c.buildText('日本国内', fontSize: 7),
              ]),
              Row(children: [
                SizedBox(width: 16),
                c.buildCheckbox(inputs[11] == '1'),
                c.buildText('日本国外（国名：', fontSize: 7),
                c.buildText(inputs[12], fontSize: 11),
                c.buildText(')', fontSize: 7),
              ]),
            ]),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[13] == '1'),
            c.buildGText([
              'その他の評価方法による証明',
              'Proof based on some other evaluation method',
            ], fontSize: 7),
            SizedBox(width: 16),
            c.buildText(inputs[14], fontSize: 11),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildCheckbox(inputs[15] == '1'),
            c.buildText('技能実習2号を良好に修了', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Successfully completed Technical Intern Training (ii)'),
          ]),

          // 24
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('24', fontSize: 7),
            c.buildGText([
              ' 日本語能力（「特定技能1号」での入国を希望する場合に記入）',
              ' Japanese language ability  (Fill in this section if you wish to enter Japan with the status of residence of "Specified Skilled Worker (i)")',
            ], fontSize: 7),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildCheckbox(inputs[16] == '1'),
            c.buildText('分野別運用方針に定める評価方法による証明', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Proof based on the evaluation method specified in the field-specific operational policy'),
          ]),
          Row(children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[17] == '1'),
            c.buildText('試験による証明', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Proof based on the passing of an exam'),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 48),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                c.buildText('合格した試験名', fontSize: 7),
                SizedBox(width: 16),
                c.buildText('Name of passed exam'),
              ]),
              Row(children: [
                SizedBox(width: 16),
                c.buildText(inputs[18], fontSize: 11),
              ]),
              SizedBox(height: 12),
              Row(children: [
                SizedBox(width: 16),
                c.buildText(inputs[19], fontSize: 11),
              ]),
            ]),
            SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                c.buildText('受験地', fontSize: 7),
                SizedBox(width: 16),
                c.buildText('Exam location'),
              ]),
              Row(children: [
                SizedBox(width: 16),
                c.buildCheckbox(inputs[20] == '1'),
                c.buildText('日本国内', fontSize: 7),
              ]),
              Row(children: [
                SizedBox(width: 16),
                c.buildCheckbox(inputs[21] == '1'),
                c.buildText('日本国外（国名：', fontSize: 7),
                c.buildText(inputs[22], fontSize: 11),
                c.buildText(')', fontSize: 7),
              ]),
              SizedBox(height: 4),
              Row(children: [
                SizedBox(width: 16),
                c.buildCheckbox(inputs[23] == '1'),
                c.buildText('日本国内', fontSize: 7),
              ]),
              Row(children: [
                SizedBox(width: 16),
                c.buildCheckbox(inputs[24] == '1'),
                c.buildText('日本国外（国名：', fontSize: 7),
                c.buildText(inputs[25], fontSize: 11),
                c.buildText(')', fontSize: 7),
              ]),
            ]),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[26] == '1'),
            c.buildGText([
              'その他の評価方法による証明',
              'Proof based on some other evaluation method',
            ], fontSize: 7),
            SizedBox(width: 16),
            c.buildText(inputs[27], fontSize: 11),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildCheckbox(inputs[28] == '1'),
            c.buildText('技能実習2号を良好に修了', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Successfully completed Technical Intern Training (ii)'),
          ]),

          // 25
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('25', fontSize: 7),
            c.buildGText([
              ' 良好に修了した技能実習2号（上記23，24において技能実習2号を良好に修了を選択した場合に記入）',
              ' Technical Intern Training (ii) that was successfully completed (Fill in this section if you selected "Successfully completed Technical Intern Training (ii)\n in 223 and 234 above)',
            ], fontSize: 7),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildText('(1)職種・作業（技能実習法施行規則別表第2の職種・作業を記入）', fontSize: 7),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildText('   Occupation / Operations'),
            SizedBox(width: 4),
            c.buildText(
                '(Fill in the occupation /operations under Appended Table II of the Ordinance for Enforcement of the Act on Proper Technical\nIntern Training and Protection of Technical Intern Trainees)'),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildGText(['   職種', '   Occupation'], fontSize: 7),
            SizedBox(width: 4),
            c.buildText(inputs[29], fontSize: 11),
            SizedBox(width: 32),
            c.buildGText(['作業', 'Operations'], fontSize: 7),
            SizedBox(width: 4),
            c.buildText(inputs[30], fontSize: 11),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildText('   良好に修了したことの証明', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Proof of successful completion'),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[31] == '1'),
            c.buildGText([
              '3級の技能検定又はこれに相当する技能実習評価試験の実技試験の合格による証明',
              'Proof based on passing Grade 3 of the National Trade Skills Test or the practical test of an equivalent technical intern training evaluation exam',
            ], fontSize: 7),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[32] == '1'),
            c.buildGText([
              '実習状況に関する書面による証明',
              'Proof based on a document relating to the status of the technical intern training',
            ], fontSize: 7),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildText('（複数ある場合には(2)に記入）'),
            SizedBox(width: 16),
            c.buildText('(Fill in (2) if you have several forms of proof)'),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildText('(2)職種・作業（技能実習法施行規則別表第2の職種・作業を記入）', fontSize: 7),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildText('   Occupation / Operations'),
            SizedBox(width: 4),
            c.buildText(
                '(Fill in the occupation /operations under Appended Table II of the Ordinance for Enforcement of the Act on Proper Technical\nIntern Training and Protection of Technical Intern Trainees)'),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildGText(['   職種', '   Occupation'], fontSize: 7),
            SizedBox(width: 4),
            c.buildText(inputs[33], fontSize: 11),
            SizedBox(width: 32),
            c.buildGText(['作業', 'Operations'], fontSize: 7),
            SizedBox(width: 4),
            c.buildText(inputs[34], fontSize: 11),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildText('   良好に修了したことの証明', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Proof of successful completion'),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[35] == '1'),
            c.buildGText([
              '3級の技能検定又はこれに相当する技能実習評価試験の実技試験の合格による証明',
              'Proof based on passing Grade 3 of the National Trade Skills Test or the practical test of an equivalent technical intern training evaluation exam',
            ], fontSize: 7),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[36] == '1'),
            c.buildGText([
              '実習状況に関する書面による証明',
              'Proof based on a document relating to the status of the technical intern training',
            ], fontSize: 7),
          ]),

          // 26
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildText('26', fontSize: 7),
            c.buildGText([
              ' 申請時における特定技能1号での通算在留期間（過去の在留歴を含む。「特定技能1号」での入国を希望する場合に記入）',
              ' Cumulative period of stay with "Specified Skilled Worker (i)" at the time of submitting this application (including past residence history; fill in this section\n if you wish to enter Japan with the status of residence of "Specified Skilled Worker (i)")',
            ], fontSize: 7),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildText(inputs[37], fontSize: 11),
            c.buildGText(['年', 'Year'], fontSize: 7),
            c.buildText(inputs[38], fontSize: 11),
            c.buildGText(['月', 'Month'], fontSize: 7),
          ]),
        ]),
      ),
    ]);
  }
}

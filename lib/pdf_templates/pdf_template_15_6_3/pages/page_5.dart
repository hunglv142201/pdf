import 'package:pdf/widgets.dart';

import '../common.dart';

class Page5 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
        c.buildGText([
          '所属機関等作成用 １　　V　（「特定技能（1号）」・「特定技能（2号）」）',
          'For organization, part 1 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ⅱ ) ")',
        ]),
        c.buildGText([
          '在留資格認定証明書用',
          'For certificate of eligibility',
        ]),
      ]),
      Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // 1
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            c.buildNumber('1', '雇用する外国人の氏名', 'Name of foreign national being offered a contract'),
            c.buildText(inputs[0], fontSize: 10),
          ]),

          // 2
          Row(children: [
            c.buildText('2'),
            SizedBox(width: 4),
            c.buildText('特定技能雇用契約'),
            SizedBox(width: 16),
            c.buildText('Employment contract for a specified skilled worker', fontSize: 5),
          ]),

          // 2.1
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber('(1)', '雇用契約期間', 'Period of employment contract'),
            SizedBox(width: 16),
            c.buildNumber('', 'から', 'from'),
            c.buildText(c.parseDate(inputs[1])[0], fontSize: 10),
            c.buildNumber('', '年', 'Year'),
            c.buildText(c.parseDate(inputs[1])[1], fontSize: 10),
            c.buildNumber('', '月', 'Month'),
            c.buildText(c.parseDate(inputs[1])[2], fontSize: 10),
            c.buildNumber('', '日', 'Day'),
            c.buildNumber('', 'まで', 'to'),
            c.buildText(c.parseDate(inputs[2])[0], fontSize: 10),
            c.buildNumber('', '年', 'Year'),
            c.buildText(c.parseDate(inputs[2])[1], fontSize: 10),
            c.buildNumber('', '月', 'Month'),
            c.buildText(c.parseDate(inputs[2])[2], fontSize: 10),
            c.buildNumber('', '日', 'Day'),
          ]),

          // 2.2
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(2)',
              '従事すべき業務の内容（複数ある場合は全て記入）',
              'Contents of work to be engaged in (if there are several types of work, fill in all of the work)',
            ),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 20),
            c.buildNumber(
              '',
              '   特定産業分野',
              '   Specified industrial field',
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildText(inputs[3], fontSize: 10),
              c.buildText(inputs[4], fontSize: 10),
              c.buildText(inputs[5], fontSize: 10),
            ]),
            SizedBox(width: 32),
            c.buildNumber(
              '',
              '業務区分',
              'Work category',
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildText(inputs[6], fontSize: 10),
              c.buildText(inputs[7], fontSize: 10),
              c.buildText(inputs[8], fontSize: 10),
            ]),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 20),
            c.buildNumber('', '   職種', '   Occupation'),
            SizedBox(width: 26),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber(
                  '',
                  '○主たる職種を別紙「職種一覧」から選択して番号を記入（１つのみ）',
                  'Select the main occupation from the Attachment: "Occupations List", and fill in the number (select only one)',
                ),
                SizedBox(width: 16),
                c.buildText(inputs[9], fontSize: 10),
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber(
                  '',
                  '○他に職種があれば別紙「職種一覧」から選択して番号を記入（複数選択可）',
                  'If there is any other occupation, select from the Attachment: "Occupations List", and fill in the number\n(more than one answer may be selected)',
                ),
                SizedBox(width: 28),
                c.buildText(inputs[10], fontSize: 10),
              ]),
              c.buildNumber(
                '',
                '(注意） Attention\n※別紙「職種一覧」の1～43,45～50,55～81,100～112,999から選択してください。',
                'Please select from 1 to 43,from 45 to 50,from 55 to 81,from 100 to 112 and 999 on the attached "Occupations List."',
              )
            ]),
          ]),

          // 2.3
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(3)',
              '所定労働時間(週平均）',
              'Prescribed working hours (weekly average)',
            ),
            SizedBox(width: 16),
            c.buildText(inputs[11], fontSize: 10),
            c.buildGText(['時間', 'hours']),
            SizedBox(width: 16),
            c.buildNumber(
              '',
              '所定労働時間（月平均）',
              'Prescribed working hours (monthly average)',
            ),
            SizedBox(width: 16),
            c.buildText(inputs[12], fontSize: 10),
            c.buildGText(['時間', 'hours']),
          ]),
          Row(children: [
            SizedBox(width: 20),
            c.buildNumber(
              '',
              '   所定労働時間が通常の労働者の所定労働時間と同等であることの有無',
              '   Are the prescribed working hours equivalent to the prescribed working hours of regular workers?',
            ),
          ]),

          // 2.4
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(4)', '月額報酬', 'Monthly remuneration'),
            SizedBox(width: 8),
            c.buildText(inputs[13], fontSize: 10),
            SizedBox(width: 8),
            c.buildNumber('', '※　各種手当（通勤・住宅・扶養等）・実費弁償の性格を有するものを除く。',
                'Excludes various types of allowances (commuting,housing,dependents,etc.) and personal expenses',
                fontSize: 5),
            SizedBox(width: 8),
            c.buildNumber(
              '',
              '基本給の時間換算額',
              'Time converted amount of basic salary',
            ),
            SizedBox(width: 8),
            c.buildText(inputs[14], fontSize: 10),
            c.buildGText(['円', 'Yen']),
          ]),
          Row(children: [
            SizedBox(width: 20),
            c.buildNumber(
              '',
              '   同等の業務に従事する日本人の月額報酬',
              '   Monthly remuneration of Japanese national engaging in the same type of work',
            ),
            SizedBox(width: 16),
            c.buildText(inputs[15], fontSize: 10),
            c.buildGText(['円', 'Yen']),
          ]),
          Row(children: [
            SizedBox(width: 20),
            c.buildNumber(
              '',
              '   報酬の額が日本人が従事する場合の報酬の額と同等以上であることの有無',
              '   Will the foreign national receive an equal or greater amount of remuneration than a Japanese national would receive for comparable work?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[16]),
            SizedBox(width: 16),
          ]),

          // 2.5
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber('(5)', '報酬の支払方法', 'Payment method of remuneration'),
            SizedBox(width: 16),
            c.buildCheckbox(inputs[17] == '1'),
            c.buildNumber('', '通貨払', 'Paid in cash'),
            SizedBox(width: 16),
            c.buildCheckbox(inputs[18] == '1'),
            c.buildNumber('', '口座振込み', 'Paid into a bank account'),
          ]),

          // 2.6
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(6)',
              '外国人であることを理由として日本人と異なった待遇としている事項の有無',
              'Are any matters stipulated related to treatment that differ from that given to a Japanese national due to the applicant being a foreign national?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 20),
            c.buildBooleanInput(inputs[19] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[20], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[19] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 2.7
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(7)',
              '外国人が一時帰国を希望した場合には，必要な有給休暇を取得させるものとしていることの有無',
              'Will the foreign national be given the necessary paid holidays in the event of wanting to return temporarily to his/her home country?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[21]),
            SizedBox(width: 16),
          ]),

          // 2.8
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(8)',
              '雇用関係につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合していることの有無（当該基準が定められている場合\nに記入）',
              'Are the criteria, which are stipulated in a public notice in consideration of circumstances specific to the specified industrial field in terms of the\nemployment relations, being met? (Fill in this section if such criteria are stipulated.)',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[22]),
            SizedBox(width: 16),
          ]),

          // 2.9
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(9)',
              '外国人が特定技能雇用契約終了後の帰国に要する旅費を負担することができないときは，当該旅費を負担するとともに，出国が円滑に\nなされるよう必要な措置を講ずることとしていることの有無',
              'If a foreign national cannot afford the travel expenses for return to his/her home country after the end of the employment contract for specified skilled workers,\nwill the organization of affiliation pay for the travel expenses and take necessary measures to ensure smooth departure?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[23]),
            SizedBox(width: 16),
          ]),

          // 2.10
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(10)',
              '外国人の健康の状況その他の生活の状況を把握するために必要な措置を講ずることとしていることの有無',
              'Is the organization of affiliation taking the necessary measures to check the state of the foreign national’s health and other living conditions?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[24]),
            SizedBox(width: 16),
          ]),

          // 2.11
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(11)',
              '外国人の適正な在留に資するために必要な事項につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合しているこ\nとの有無（当該基準が定められている場合に記入）',
              'Are the criteria, which are stipulated in a public notice in consideration of circumstances specific to the specified industrial field in terms of the matters\nnecessary to ensure the proper residence of the foreign nationals, being met? (Fill in this section if such criteria are stipulated.)',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[25]),
            SizedBox(width: 16),
          ]),

          // 2.12
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(12)',
              '派遣先（労働者派遣の対象とする場合に記入）',
              'Dispatch site (Fill in this section if the foreign national may be sent out for worker dispatch)',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber(
              '',
              '氏名又は名称',
              'Name of person or organization',
            ),
            c.buildText(inputs[26], fontSize: 10),
            SizedBox(width: 16),
            c.buildNumber('', '法人番号（13桁）', 'Corporation no. (combination of 13 numbers and letters)'),
            c.buildText(inputs[27], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 32),
            c.buildText('雇用保険適用事業所番号（11桁）※非該当事業所は記入省略'),
            SizedBox(width: 16),
            c.buildText(
                'Employment insurance application office number (11 digits) *If not applicable, it should be omitted.',
                fontSize: 5),
          ]),
          Row(children: [
            SizedBox(width: 32),
            c.buildText(inputs[27], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber('', '住所（所在地）', 'Address'),
            c.buildText(inputs[28], fontSize: 10),
            SizedBox(width: 16),
            c.buildNumber('', '電話番号', 'Telephone No.'),
            c.buildText(inputs[29], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber('', '代表者の氏名', 'Name of the representative'),
            c.buildText(inputs[30], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber('', '派遣期間', 'Period of dispatch'),
            SizedBox(width: 16),
            c.buildNumber('', 'から', 'from'),
            c.buildText(c.parseDate(inputs[31])[0], fontSize: 10),
            c.buildNumber('', '年', 'Year'),
            c.buildText(c.parseDate(inputs[31])[1], fontSize: 10),
            c.buildNumber('', '月', 'Month'),
            c.buildText(c.parseDate(inputs[31])[2], fontSize: 10),
            c.buildNumber('', '日', 'Day'),
            c.buildNumber('', 'まで', 'to'),
            c.buildText(c.parseDate(inputs[32])[0], fontSize: 10),
            c.buildNumber('', '年', 'Year'),
            c.buildText(c.parseDate(inputs[32])[1], fontSize: 10),
            c.buildNumber('', '月', 'Month'),
            c.buildText(c.parseDate(inputs[32])[2], fontSize: 10),
            c.buildNumber('', '日', 'Day'),
          ]),

          // 2.13
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(13)',
              '職業紹介事業者（特定技能雇用契約の成立をあっせんする職業紹介事業者がある場合に記入）',
              'Employment placement service provider (fill in this section if there is an employment placement service provider that arranges the conclusion of employment contracts for\nspecified skilled workers)',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber(
              '',
              '氏名又は名称',
              'Name of person or organization',
            ),
            c.buildText(inputs[33], fontSize: 10),
            SizedBox(width: 16),
            c.buildNumber('', '法人番号（13桁）', 'Corporation no. (combination of 13 numbers and letters)'),
            c.buildText(inputs[34], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 32),
            c.buildText('雇用保険適用事業所番号（11桁）※非該当事業所は記入省略'),
            SizedBox(width: 16),
            c.buildText(
                'Employment insurance application office number (11 digits) *If not applicable, it should be omitted.',
                fontSize: 5),
          ]),
          Row(children: [
            SizedBox(width: 32),
            c.buildText(inputs[35], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber('', '住所（所在地）', 'Address'),
            c.buildText(inputs[36], fontSize: 10),
            SizedBox(width: 16),
            c.buildNumber('', '電話番号', 'Telephone No.'),
            c.buildText(inputs[37], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber('', '許可・届出番号', 'Permission / notification no'),
            c.buildText(inputs[38], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('', '受理年月日', 'Date of receipt'),
            c.buildText(c.parseDate(inputs[39])[0], fontSize: 10),
            c.buildNumber('', '年', 'Year'),
            c.buildText(c.parseDate(inputs[39])[1], fontSize: 10),
            c.buildNumber('', '月', 'Month'),
            c.buildText(c.parseDate(inputs[39])[2], fontSize: 10),
            c.buildNumber('', '日', 'Day'),
          ]),
        ]),
      ),
    ]);
  }
}

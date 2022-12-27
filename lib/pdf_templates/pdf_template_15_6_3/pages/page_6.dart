import 'package:pdf/widgets.dart';

import '../common.dart';

class Page6 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
        c.buildNumber('', '所属機関等作成用 2　　V　（「特定技能（1号）」・「特定技能（2号）」）',
            'For organization, part 2 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ⅱ ) ")',
            fontSize: 8),
        c.buildNumber('', '在留資格認定証明書用', 'For certificate of eligibility', fontSize: 8),
      ]),
      Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // 2.14
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(14)',
              '取次機関（職業紹介事業者があっせんを行うに際し，情報の取次ぎを行う者がある場合に記入）',
              'Intermediary organization (fill in this section if there is a person who mediates information at the time of an employment placement service provider acting as an agent)',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber('', '氏名又は名称', 'Name of person or organization'),
            SizedBox(width: 16),
            c.buildText(inputs[0], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber('', '住所（所在地）', 'Address'),
            SizedBox(width: 16),
            c.buildText(inputs[1], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('', '電話番号', 'Telephone No.'),
            SizedBox(width: 16),
            c.buildText(inputs[2], fontSize: 10),
          ]),

          // 3
          Row(children: [
            c.buildText('3'),
            SizedBox(width: 4),
            c.buildText('特定技能所属機関'),
            SizedBox(width: 16),
            c.buildText('Organization of affiliation of the specified skilled worker'),
          ]),

          // 3.1
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(1)',
              '氏名又は名称',
              'Name of person or organization',
            ),
            c.buildText(inputs[3], fontSize: 10),
            SizedBox(width: 16),
            c.buildNumber('(2)', '法人番号（13桁）', 'Corporation no. (combination of 13 numbers and letters)'),
            c.buildText(inputs[4], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildText('※本店又は主たる事務所のものを記入 Fill in the name of head office or principal place of business'),
          ]),

          // 3.3
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(3)',
              '雇用保険適用事業所番号（11桁）※非該当事業所は記入省略',
              'Employment insurance application office number (11 digits) *If not applicable, it should be omitted.',
            ),
            SizedBox(width: 16),
            c.buildText(inputs[5], fontSize: 10),
          ]),

          // 3.4
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(4)',
              '業種',
              'Business type',
            ),
            SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber(
                  '',
                  '○主たる業種を別紙「業種一覧」から選択して番号を記入（１つのみ）',
                  'Select the main business type from the attached sheet "a list of business type " and write the corresponding number (select only one)',
                ),
                SizedBox(width: 24),
                c.buildText(inputs[6], fontSize: 10),
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber(
                  '',
                  '○他に業種があれば別紙「業種一覧」から選択して番号を記入（複数選択可）',
                  'If there are another other business types, select from the attached sheet "a list of business type" and write the corresponding number\n(multiple answers possible)',
                ),
                SizedBox(width: 21),
                c.buildText(inputs[7], fontSize: 10),
              ]),
            ]),
          ]),

          // 3.5
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(5)',
              '住所（所在地）　※本店又は主たる事務所のものを記入',
              'Address of person or organization ※Fill in the address of head office or principal place of business',
            ),
          ]),
          Row(children: [
            SizedBox(width: 32),
            c.buildText(inputs[8], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('', '電話番号', 'Telephone No.'),
            SizedBox(width: 8),
            c.buildText(inputs[9], fontSize: 10),
          ]),

          // 3.6
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(6)',
              '資本金',
              'Capital',
            ),
            SizedBox(width: 8),
            c.buildText(inputs[10], fontSize: 10),
            c.buildNumber('', '円', 'Yen'),
            SizedBox(width: 32),
            c.buildNumber(
              '(7)',
              '年間売上金額（直近年度）',
              'Annual sales (latest year)',
            ),
            SizedBox(width: 8),
            c.buildText(inputs[11], fontSize: 10),
            c.buildNumber('', '円', 'Yen'),
          ]),

          // 3.8
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(8)',
              '常勤職員数',
              'Number of full-time employees',
            ),
            SizedBox(width: 8),
            c.buildText(inputs[12], fontSize: 10),
            c.buildNumber('', '名', ''),
          ]),

          // 3.9
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(9)',
              '代表者の氏名',
              'Name of the representative',
            ),
            SizedBox(width: 8),
            c.buildText(inputs[13], fontSize: 10),
          ]),

          // 3.10
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(10)',
              '勤務させる事業所名',
              'Name of place of business where foreign national is to work',
            ),
            SizedBox(width: 8),
            c.buildText(inputs[14], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber(
              '',
              '所在地',
              'Address',
            ),
            SizedBox(width: 8),
            c.buildText(inputs[15], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber(
              '',
              '健康保険及び厚生年金保険の適用事業所であることの有無',
              'Does the place of business apply health insurance and employees pension insurance?',
            ),
            SizedBox(width: 62),
            c.buildYNInput(inputs[16]),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber(
              '',
              '労災保険及び雇用保険の適用事業所であることの有無',
              'Does the place of business apply industrial accident insurance and employment insurance?',
            ),
            SizedBox(width: 48),
            c.buildYNInput(inputs[17]),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber(
              '',
              '労働保険番号',
              'Labor insurance number',
            ),
            SizedBox(width: 16),
            c.buildText(inputs[18], fontSize: 10),
          ]),

          // 3.11
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(11)',
              '労働，社会保険及び租税に関する法令の規定に違反したことの有無',
              'Has the organization ever been in violation of the provisions of laws and regulations concerning labor, social insurance or tax?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[19] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[20], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[19] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.12
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(12)',
              '特定技能雇用契約の締結の日前1年以内又は締結の日以後に，外国人が従事する業務と同種の業務に従事していた労働者を非自発\n的に離職させたことの有無',
              'Has a worker who engaged in work of the same type as that which the foreign national is to engage in ever been forced to leave within one year prior to the date of the foreign\nnational entering into the employment contract for specified skilled workers or after the date of the foreign national entering into such contract?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[21] == '1', '有', 'Yes'),
            c.buildNumber('', '（内容・理由：', '(Details/Reason:'),
            c.buildText(inputs[22], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[21] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.13
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(13)',
              '特定技能雇用契約の締結の日前1年以内又は締結の日以後に，特定技能所属機関の責めに帰すべき事由により外国人の行方不明者',
              'within one year prior to the date of the foreign national entering into the employment contract for specified skilled workers or after the date of the foreign national entering\ninto such contract?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[23] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[24], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[23] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.14
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(14)',
              '特定技能所属機関・その役員・支援責任者・支援担当者が法令に違反して刑に処せられたことの有無',
              'Has the organization of affiliation of the specified skilled worker or its officer, support manager or support staff ever been sentenced to a criminal punishment due\nto a violation of laws and regulations?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[25] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容・該当者名：', '(Details/Name of applicable person:'),
            c.buildText(inputs[26], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[25] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.15
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(15)',
              '特定技能所属機関・その役員・支援責任者・支援担当者が特定技能雇用契約の適正な履行に影響する精神の機能の障害を有するこ\nとの有無',
              'Does the organization of affiliation of the specified skilled worker, its officer, support manager or support staff have a mental disability which will have an impact\non proper performance of the employment contract for specified skilled workers?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[27] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容・該当者名：', '(Details/Name of applicable person:'),
            c.buildText(inputs[28], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[27] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.16
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(16)',
              '特定技能所属機関・その役員・支援責任者・支援担当者が破産手続開始の決定を受けて復権を得ないことの有無',
              'Has the organization of affiliation of the specified skilled worker, its officer, support manager or support staff become subject to the commencement of bankruptcy\nprocedures and yet to have its rights restored?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[29] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容・該当者名：', '(Details/Name of applicable person:'),
            c.buildText(inputs[30], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[29] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.17
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(17)',
              '特定技能所属機関・その役員・支援責任者・支援担当者が技能実習法第16条第1項の規定により実習認定を取り消されたことの有無',
              'Has the organization of affiliation of the specified skilled worker, its officer, support manager or support staff ever had its accreditation of the training revoked\nas provided for in Article 16, paragraph (1) of the Technical Intern Training Act?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[31] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容・該当者名：', '(Details/Name of applicable person:'),
            c.buildText(inputs[32], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[31] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.18
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(18)',
              '特定技能所属機関・その役員・支援責任者・支援担当者が技能実習法第16条第1項の規定により実習認定を取り消された法人の役員\nであったことの有無',
              'Has the organization of affiliation of the specified skilled worker, its officer, support manager or support staff ever been an officer of a corporation that has had its\naccreditation of training revoked as provided for in Article 16, paragraph (1) of the Technical Intern Training Act?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[32] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容・該当者名：', '(Details/Name of applicable person:'),
            c.buildText(inputs[33], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[32] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.19
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(19)',
              '特定技能所属機関・その役員・支援責任者・支援担当者が特定技能雇用契約の締結の日前5年以内又は締結の日以後に，出入国又\nは労働に関する法令に関し不正又は著しく不当な行為をしたことの有無',
              'Has the organization of affiliation of the specified skilled worker, its officer, support manager or support staff ever committed a wrongful or seriously unjust act in\nrelation to immigration or labor-related laws or regulations within five years of the date of entering into the employment contract for specified skilled workers or after\nthe date of entering into such contract?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[34] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容・該当者名：', '(Details/Name of applicable person:'),
            c.buildText(inputs[35], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[34] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.20
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(20)',
              '特定技能所属機関・その役員・支援責任者・支援担当者が暴力団員であること又は5年以内に暴力団員であったことの有無',
              'Is the organization of affiliation of the specified skilled worker, its officer, support manager or support staff currently an organized crime member or was it formerly\nan organized crime member within the past five years?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[36] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容・該当者名：', '(Details/Name of applicable person:'),
            c.buildText(inputs[37], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[36] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.21
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(21)',
              '特定技能所属機関・その役員・支援責任者・支援担当者の法定代理人（法人である場合はその役員）が(14)から(20)に該当することの有\n無（特定技能所属機関・その役員・支援責任者・支援担当者が営業に関し成年者と同一の行為能力を有しない未成年者である場合に記入）',
              'Does the statutory agent (its officer in the case of a corporation) of the organization of affiliation of the specified skilled worker, its officer, support manager or\nsupport staff fall under any of (14) to (20)? (Fill in this section if the organization of affiliation of the specified skilled worker, its officer, support manager or support staff\nis a minor who does not have the same capacity to act as a person who has reached the age of majority in relation to business.)',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[38] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容・該当者名：', '(Details/Name of applicable person:'),
            c.buildText(inputs[39], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[38] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),
        ]),
      ),
    ]);
  }
}

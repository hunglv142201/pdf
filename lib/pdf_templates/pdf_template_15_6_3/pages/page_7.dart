import 'package:pdf/widgets.dart';

import '../common.dart';

class Page7 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
        c.buildNumber('', '所属機関等作成用 3　　V　（「特定技能（1号）」・「特定技能（2号）」）',
            'For organization, part 3 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ⅱ ) ")',
            fontSize: 8),
        c.buildNumber('', '在留資格認定証明書用', ' For certificate of eligibility', fontSize: 8),
      ]),
      Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // 3.22
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(22)',
              '暴力団員又は5年以内に暴力団員であった者がその事業活動を支配する者であることの有無',
              'Is an organized crime member or a person who was formerly an organized crime member within the past five years controlling the business activities of the organization\nof affiliation of specified skilled workers?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[0] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[1], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[0] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.23
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(23)',
              '外国人の活動内容に関する文書を作成し，活動をさせる事務所に特定技能雇用契約終了の日から１年以上備えて置くこととしているこ\nとの有無',
              'Is the organization taking measures to prepare documents on the contents of the activities of the foreign national, and to keep them at the place of business where\nthe foreign national is engaging in the activities for at least one year from the date of termination of the contract?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[2]),
            SizedBox(width: 16),
          ]),

          // 3.24
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(24)',
              '特定技能雇用契約に係る保証金の徴収その他財産管理又は違約金等の支払契約があることを認識して特定技能雇用契約を締結し\nていることの有無',
              'Has the organization entered into an employment contract for specified skilled workers knowing about the existence of an agreement to collect a deposit or to control\nproperty or to demand payment of penalties pertaining to the employment contract for specified skilled workers?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[3] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[4], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[3] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.25
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(25)',
              '特定技能雇用契約の不履行について違約金等の支払契約を締結していることの有無',
              'Has the organization entered into an agreement on the payment of penalties, etc. with regard to non-performance of the employment contract for specified skilled workers?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[5] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[6], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[5] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.26
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(26)',
              '１号特定技能外国人支援に要する費用について，直接又は間接に外国人に負担させないこととしていることの有無（申請人が「特定技能1\n号」での入国を希望する場合に記入）',
              'Has the organization established practical measures to ensure the foreign national is not being made to pay either directly or indirectly for the costs required for\nsupport for Specified Skilled Worker (i)? (Fill in this section if the applicant wishes to enter Japan under the status of residence of "Specified Skilled Worker (i)".)',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[7]),
            SizedBox(width: 16),
          ]),

          // 3.27
          Row(children: [
            SizedBox(width: 16),
            c.buildText('（以下(27)，(28)は外国人を労働者派遣の対象とする場合に記入）'),
            SizedBox(width: 16),
            c.buildText(
                '(Fill in sections (26) and (27) if the foreign national is likely to be sent as a dispatch worker.)',
                fontSize: 5),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildText('(27)'),
            SizedBox(width: 4),
            c.buildText('次のいずれかに該当することの有無'),
            SizedBox(width: 16),
            c.buildText('Whether it falls under any of the following cases:', fontSize: 5),
            Expanded(child: Container()),
            c.buildYNInput(inputs[8]),
            SizedBox(width: 16),
          ]),
          Row(children: [
            SizedBox(width: 32),
            c.buildText('(有の場合は該当するものを選択)'),
            SizedBox(width: 16),
            c.buildText('(If "Yes", choose the corresponding item)', fontSize: 5),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[9] == '1'),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildNumber(
                '',
                '①派遣先において従事する業務の属する特定産業分野に係る業務又はこれに関連する業務を行っていること',
                'A dispatch site conducting work pertaining to a specified industrial field to which the work the foreign national is to engage in at the dispatch site belongs or related work',
              ),
              Row(children: [
                c.buildNumber('', '内容:', 'Details:'),
                c.buildText(inputs[10], fontSize: 10),
              ]),
            ]),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[11] == '1'),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildNumber(
                '',
                '②地方公共団体又は①に該当する者が資本金の過半数を出資していること',
                'A local government or a person who falls under ① who has invested a majority of the stated capital',
              ),
              Row(children: [
                c.buildNumber('', '内容:', 'Details:'),
                c.buildText(inputs[12], fontSize: 10),
              ]),
            ]),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[13] == '1'),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildNumber(
                '',
                '③地方公共団体又は①に該当する者が業務執行に実質的に関与していること',
                'A local government or a person who falls under ① who is substantially involved in execution of the business',
              ),
              Row(children: [
                c.buildNumber('', '内容:', 'Details:'),
                c.buildText(inputs[14], fontSize: 10),
              ]),
            ]),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[15] == '1'),
            c.buildNumber(
              '',
              '④派遣先において従事する業務の属する分野が農業である場合であって国家戦略特別区域法第16条の5第1項に規定する特定機\n関であること',
              'The field of work the foreign national is to engage in at the dispatch site is agriculture, and the organization is the specified organization prescribed in\nArticle 16-5, paragraph (1) of the National Strategy Special Zone Act.',
            ),
          ]),

          // 3.28
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(28)',
              '労働者派遣をすることとしている派遣先が(11)から(22)に該当していることの有無',
              'Will the organization be sending dispatch workers to a dispatch site that comes under (11) to (22) above?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[16] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[17], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[16] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.29
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(29)',
              '労災保険加入等の措置の有無',
              'Have measures been taken for coverage of industrial accident insurance, etc.?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[18] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[19], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[18] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.30
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(30)',
              '特定技能雇用契約を継続して履行する体制が適切に整備されていることの有無',
              'Is there an appropriate structure in place to ensure continuous implementation of the employment contract for specified skilled workers?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[20]),
            SizedBox(width: 16),
          ]),

          // 3.31
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(31)',
              '外国人の報酬を，当該外国人の指定する銀行その他の金融機関に対する振込み又は現実に支払われた額を確認できる方法によって\n支払われることとしており，かつ，後者の場合には，出入国在留管理庁長官に報酬の支払を裏付ける客観的な資料を提出し，その確認\nを受けることとしていることの有無',
              "Will the foreign national's remuneration be paid by wire transfer to the account of a bank or other financial institution specified by the foreign national or using\na method where the actual amount that was paid can be confirmed, and in the latter case, will objective materials proving the payment of remuneration be submitted\nto the Commissioner of the Immigration Services Agency in order to be checked?",
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[21]),
            SizedBox(width: 16),
          ]),

          // 3.32
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(32)',
              '特定技能雇用契約の適正な履行の確保につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合していることの有無\n（当該基準が定められている場合に記入）',
              'Does the organization meet the criteria stipulated in the public notice in consideration of circumstances specific to the specified industrial field in terms of\nsecuring the proper performance of the employment contract for specified skilled workers? (Fill in this section if such criteria are stipulated.)',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[22]),
            SizedBox(width: 16),
          ]),

          // 3.33
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '',
              '（以下(33)から(41)は申請人が「特定技能1号」での入国を希望する場合であって，契約により登録支援機関に1号特定技能外国人支援計画の全部の実\n　施を委託しない場合に記入）',
              ' (Fill in sections (32) to (40) if the applicant wishes to enter Japan with the status of residence of "Specified Skilled Worker (i)", and not all of the support plans for specified\n skilled workers (i) are to be entrusted to a registered support organization based on a contract.)',
            ),
          ]),
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(33)', '支援責任者名', 'Support manager'),
            c.buildText(inputs[23], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('', '所属・役職', 'Title and department'),
            c.buildText(inputs[24], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber('', '役員又は職員の中から支援責任者を選任していることの有無',
                'Has a support manager been appointed from among the officers or employees?'),
            Expanded(child: Container()),
            c.buildYNInput(inputs[25]),
            SizedBox(width: 16),
          ]),

          // 3.34
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(34)', '支援担当者名', 'Support staff'),
            c.buildText(inputs[26], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('', '所属・役職', 'Title and department'),
            c.buildText(inputs[27], fontSize: 10),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildNumber(
              '',
              '役員又は職員の中から，業務に従事させる事業所ごとに1名以上の支援担当者を選任していることの有無',
              'Has at least one support staff member been appointed from among the officers and employees for each place of business where the specified skilled worker is to work?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[28]),
            SizedBox(width: 16),
          ]),

          // 3.35
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(35)',
              '次のいずれかに該当することの有無',
              'Whether it falls under any of the following cases:',
            ),
            SizedBox(width: 16),
            c.buildNumber(
              '',
              '(有の場合は該当するものを選択)',
              '(If "Yes", choose the corresponding item)',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[29]),
            SizedBox(width: 16),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[30] == '1'),
            c.buildNumber(
              '',
              '①過去2年間において法別表第1の1の表，2の表及び5の表の上欄の在留資格（収入を伴う事業を運営する活動又は報酬を受ける\n活動を行うことができる在留資格に限る）をもって在留する中長期在留者の受入れ又は管理を適正に行った実績を有すること',
              'It has a past record of properly accepting or managing mid to long-term residents residing with one of the statuses of residence in the left-hand column of\nAppended Table I (1), (2) or (5) over the past two years (limited to the statuses of residence where the foreign national is permitted to engage in activities\nrelated to the management of business involving income or activities for which he or she receives remuneration).',
            ),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[31] == '1'),
            c.buildNumber(
              '',
              '②支援責任者及び支援担当者が過去2年以内に法別表第1の1の表，2の表及び5の表の上欄の在留資格（収入を伴う事業を運営する活動\n又は報酬を受ける活動を行うことができる在留資格に限る）をもって在留する中長期在留者の生活相談等に従事した経験を有すること',
              'The support manager and support staff have experience of engaging in the work of providing advice on living for mid to long-term residents with a status of\nresidence in the left-hand column of Appended Table I (1), 2 and (5) (limited to the statuses of residence where the foreign national is permitted to engage in\nactivities related to the management of business involving income or activities for which they receive remuneration).',
            ),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 32),
            c.buildCheckbox(inputs[32] == '1'),
            c.buildNumber(
              '',
              '③その他支援業務を適正に実施できる事情を有すること',
              'Other conditions to ensure support is properly implemented',
            ),
            SizedBox(width: 8),
            c.buildNumber('', '内容:', 'Details:'),
            c.buildText(inputs[33], fontSize: 10),
          ]),

          // 3.36
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(36)',
              '1号特定技能外国人支援計画に基づく支援を，外国人が十分に理解することができる言語によって行うことができる体制を有していることの有無',
              'Do you have a structure in place where support based on the support plan for specified skilled workers (i) will be provided in a language that the foreign national\nis able to fully understand?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[34]),
            SizedBox(width: 16),
          ]),

          // 3.37
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(37)',
              '1号特定技能外国人支援の状況に関する文書を作成し，1号特定技能外国人支援を行う事務所に特定技能雇用契約終了の日から1年\n以上備えて置くこととしていることの有無',
              'Has the organization taken measures to prepare documents on the status of support for specified skilled workers (i), and to keep them at the place of business\nwhere the support for specified skilled workers (i) is to be implemented for at least one year from the date of termination of the employment contract for\nspecified skilled workers?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[35]),
            SizedBox(width: 16),
          ]),
        ]),
      ),
    ]);
  }
}

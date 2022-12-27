import 'package:pdf/widgets.dart';

import '../common.dart';

class Page8 {
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
          // 3.38
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(38)',
              '支援責任者及び支援担当者が，1号特定技能外国人支援計画の中立な実施を行うことができる立場の者であることの有無',
              'Are the support manager and support staff in a position where they are able to implement the support plan for specified skilled workers (i) in a neutral manner?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[0]),
            SizedBox(width: 16),
          ]),

          // 3.39
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(39)',
              '特定技能雇用契約締結の日前5年以内又は契約締結の日以後に適合1号特定技能外国人支援計画に基づく1号特定技能外国人支援を怠ったことの有無',
              'Has the organization failed to implement support for specified skilled workers (i) based on a suitable support plan for specified skilled workers (i) within five years\nprior to the date of entering into the employment contract for specfied skilled workers or after the date of entering into such contract?',
            ),
          ]),
          Row(children: [
            SizedBox(width: 28),
            c.buildBooleanInput(inputs[1] == '1', '有', 'Yes'),
            c.buildNumber('', '(内容:', '(Details:'),
            c.buildText(inputs[2], fontSize: 10),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[1] == '2', '無', 'No'),
            SizedBox(width: 16),
          ]),

          // 3.40
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(40)',
              '支援責任者又は支援担当者が外国人及びその監督をする立場にある者と定期的な面談を実施できる体制を有していることの有無',
              'Is there a system in place to ensure the support manager and support staff are able to conduct periodic interviews with the foreign nationals and their supervisors?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[3]),
            SizedBox(width: 16),
          ]),

          // 3.41
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(41)',
              '適合1号特定技能外国人支援計画の適正な実施の確保につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合して\nいることの有無（当該基準が定められている場合に記入）',
              'Does the organization conform to the criteria stipulated in a public notice in consideration of circumstances specific to the specified industrial field in terms of\nensuring proper implementation of the support plan for specified skilled workers (i)? (Fill in this section if such criteria are stipulated.)',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[4]),
            SizedBox(width: 16),
          ]),

          // 4
          c.buildNumber(
            '4',
            '1号特定技能外国人支援計画（申請人が「特定技能1号」での入国を希望する場合に記入）',
            'Support plan for specified skilled workers (i) (fill in this section if the applicant wishes to enter Japan with the status of residence of "Specified Skilled Worker (i)")',
          ),

          // 4.1
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(1)',
              '在留資格認定証明書の交付申請前の，特定技能雇用契約の内容，本邦において行うことができる活動の内容，上陸及び在留のための条件そ\nの他の本邦に上陸し在留するに当たって留意すべき事項に関する，外国人が十分に理解することができる言語による情報提供の実施の有無',
              'Did the organization provide information to the specified skilled worker (i) in a language that can be fully understood by the specified skilled worker (i) before their\napplication for certificate of eligibility the contents of the employment contract for specified skilled workers, the contents of the activities that may be conducted\nin Japan, the conditions for landing and residence, and other points to be noted when landing and staying in Japan?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[5]),
            SizedBox(width: 16),
          ]),

          // 4.2
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(2)',
              '上記(1)について，対面により，又はテレビ電話装置その他の方法により行うこととしていることの有無',
              'With regard to (1) above, will this be conducted face-to-face, using video call equipment or some other method?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[6]),
            SizedBox(width: 16),
          ]),

          // 4.3
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(3)',
              '出入国時に港又は飛行場への送迎をすることとしていることの有無',
              'Will the organization be picking up and dropping off the foreign national at the seaport or airport where he / she will be entering or departing from Japan?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[7]),
            SizedBox(width: 16),
          ]),

          // 4.4
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(4)',
              '適切な住居の確保に係る支援をすることとしていることの有無',
              'Will the organization be providing support to secure suitable accommodation for the foreign national?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[8]),
            SizedBox(width: 16),
          ]),

          // 4.5
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(5)',
              '金融機関における預金口座等の開設及び携帯電話の利用に関する契約その他の生活に必要な契約に係る支援をすることとしていることの有無',
              'Will the organization be providing support related to contracts concerning the opening of bank accounts, etc. or the use of mobile phones and other contracts necessary\nfor living?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[9]),
            SizedBox(width: 16),
          ]),

          // 4.6
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(6)',
              '本邦入国後に，本邦での生活一般に関する事項，国又は地方公共団体の機関への届出その他の手続，相談又は苦情の申出に関する連絡先，十分に理\n解することができる言語で医療を受けることができる医療機関に関する事項，防災・防犯に関する事項，緊急時における対応に必要な事項\n及び外国人の法的保護に必要な事項に関する情報の提供を外国人が十分に理解することができる言語により実施することとしていることの有無',
              'Will the organization be providing information after the specified skilled worker (i) has entered Japan in a language which the specified skilled worker (i) is fully able to\nunderstand on matters concerning general living in Japan, notifications to national or local government agencies and other procedures, contact information for\nconsultations or filing of complaints, matters concerning medical institutions capable of providing medical care in a language that the specified skilled worker (i) is fully\nable to understand, matters on disaster prevention and crime prevention, necessary matters for responses in case of emergency, and necessary matters for legal\nprotection of foreign nationals?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[10]),
            SizedBox(width: 16),
          ]),

          // 4.7
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(7)',
              '外国人が国又は地方公共団体の機関への届出その他の手続を履行するに当たり，必要に応じ，関係機関への同行その他の必要な措\n置を講ずることとしていることの有無',
              'Will the organization take necessary measures to accompany the foreign national,where necessary, to the relevant agency in order to submit a notification to a national\nor local government agency or for other procedures that need to be followed?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[11]),
            SizedBox(width: 16),
          ]),

          // 4.8
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(8)',
              '日本語を学習する機会を提供することとしていることの有無',
              'Will the organization be providing the foreign national with opportunities to learn Japanese?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[12]),
            SizedBox(width: 16),
          ]),

          // 4.9
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(9)',
              '外国人が十分に理解することができる言語により，相談又は苦情の申出に対して，遅滞なく，適切に応じるとともに，必要な措置を講ずる\nこととしていることの有無',
              'Will the organization respond appropriately to requests for consultations or to complaints without delay, and take necessary measures n a language which the specified\nskilled worker (i) is fully able to understand ?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[13]),
            SizedBox(width: 16),
          ]),

          // 4.10
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(10)',
              '外国人と日本人の交流の促進に係る支援をすることとしていることの有無',
              'Will the organization provide support for the promotion of exchanges between foreign nationals and Japanese nationals?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[14]),
            SizedBox(width: 16),
          ]),

          // 4.11
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(11)',
              '外国人が，その責めに帰すべき事由によらずに特定技能雇用契約を解除される場合は，転職支援をすることとしていることの有無',
              'Will the organization provide support to foreign nationals whose employment contract for specified skilled workers has been cancelled due to causes not attributable\nto the fault of the foreignnational so as to enable the foreign national to change jobs?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[15]),
            SizedBox(width: 16),
          ]),

          // 4.12
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(12)',
              '支援責任者又は支援担当者が外国人及びその監督をする立場にある者と定期的な面談（外国人と行う場合には当該外国人が十分に\n理解することができる言語による面談）を実施し，問題の発生を知ったときは，その旨を関係行政機関に通報することとしていることの有無',
              'Will the support manager or support staff conduct periodic interviews with foreign nationals and their supervisors (when conducting an interview with a foreign\nnational, in a language which the foreign national is fully able to understand), and when they learn about a problem, report the problem to the relevant\nadministrative agency?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[16]),
            SizedBox(width: 16),
          ]),

          // 4.13
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(13)',
              '１号特定技能外国人支援計画を日本語及び外国人が十分に理解することができる言語により作成し，当該外国人にその写しを交付す\nることとしていることの有無',
              'Has a support plan for specified skilled workers (i) been prepared in Japanese and in a foreign language that can be fully understood by the foreign national,\nand a copy been given to the foreign national?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[17]),
            SizedBox(width: 16),
          ]),

          // 4.14
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(14)',
              '特定産業分野に特有の事情に鑑みて告示で定められる事項を１号特定技能外国人支援計画に記載していることの有無（当該事項が定\nめられている場合に記入）',
              'Have the matters stipulated in a public notice in consideration of circumstances specific to the specified industrial field been given in the support plan\nfor specified skilled workers (i)? (Fill in this section if such matters are stipulated.)',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[18]),
            SizedBox(width: 16),
          ]),

          // 4.15
          Row(children: [
            SizedBox(width: 15),
            c.buildNumber(
              '(15)',
              '支援の内容が外国人の適正な在留に資するものであって，かつ，支援を実施する者において適切に実施することができるものであることの有無',
              'Will the contents of the support contribute to the proper residence of the foreign nationals, and can they be appropriately implemented by those\nproviding the support?',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[19]),
            SizedBox(width: 16),
          ]),

          // 4.16
          Row(children: [
            SizedBox(width: 15),
            c.buildNumber(
              '(16)',
              '１号特定技能外国人支援計画の内容につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合していることの有無（当\n該基準が定められている場合に記入）',
              'Will the organization conform to the criteria stipulated in a public notice in consideration of the circumstances specific to the specified industrial\nfield in terms of the contents of the support plan for specified skilled workers (i)? (Fill in this section if such criteria are stipulated.)',
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[20]),
            SizedBox(width: 16),
          ]),

          // 5
          c.buildNumber(
            '5',
            '登録支援機関（申請人が「特定技能1号」での入国を希望する場合であって，契約により登録支援機関に1号特定技能外国人支援計画の全部の実施を委託する場合に記入）',
            'Registered support organization (Fill in this section if the applicant wishes to enter Japan with the status of residence of "Specific Skilled Worker (i)",\nand all of the support plans for specified skilled workers (i) are to be entrusted to a registered support organization based on a contract.)',
          ),

          // 5.1
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(1)', '氏名又は名称', 'Name of person or organization'),
            c.buildText(inputs[21], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('(2)', '法人番号（13桁）', 'Corporation no. (combination of 13 numbers and letters)'),
            c.buildText(inputs[22], fontSize: 10),
          ]),

          // 5.3
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(3)',
              '雇用保険適用事業所番号（11桁）※非該当事業所は記入省略',
              'Employment insurance application office number (11 digits) *If not applicable, it should be omitted.',
            ),
            c.buildText(inputs[23], fontSize: 10),
          ]),

          // 5.4
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(4)', '住所（所在地）', 'Address'),
            c.buildText(inputs[24], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('', '電話番号', 'Telephone No.'),
            c.buildText(inputs[25], fontSize: 10),
          ]),

          // 5.5
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '(5)',
              '代表者の氏名',
              'Name of the representative',
            ),
            c.buildText(inputs[26], fontSize: 10),
          ]),

          // 5.6
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(6)', '登録番号', 'Registration no.'),
            c.buildText(inputs[27], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('(7)', '登録年月日', 'Date of Registration'),
            c.buildText(c.parseDate(inputs[28])[0], fontSize: 10),
            c.buildNumber('', '年', 'Year'),
            c.buildText(c.parseDate(inputs[28])[1], fontSize: 10),
            c.buildNumber('', '月', 'Month'),
            c.buildText(c.parseDate(inputs[28])[2], fontSize: 10),
            c.buildNumber('', '日', 'Day'),
          ]),

          // 5.8
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(8)', '支援を行う事業所の名称', 'Name of place of businessimplementing support'),
            c.buildText(inputs[29], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('(9)', '所在地', 'Address'),
            c.buildText(inputs[30], fontSize: 10),
          ]),

          // 5.10
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(10)', '支援責任者名', 'Support manager'),
            c.buildText(inputs[31], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('(11)', '支援担当者名', 'Support staff'),
            c.buildText(inputs[32], fontSize: 10),
          ]),

          // 5.12
          Row(children: [
            SizedBox(width: 16),
            c.buildNumber('(12)', '対応可能言語', 'Available languages'),
            c.buildText(inputs[33], fontSize: 10),
            SizedBox(width: 32),
            c.buildNumber('(13)', '支援委託手数料（月額／人）', 'Support commission fee (person per month)'),
            c.buildText(inputs[34], fontSize: 10),
          ]),

          Row(children: [
            SizedBox(width: 16),
            c.buildText('以上の記載内容は事実と相違ありません。'),
            SizedBox(width: 16),
            c.buildText('I hereby declare that the statement given above is true and correct.'),
          ]),

          Row(children: [
            SizedBox(width: 16),
            c.buildNumber(
              '',
              '特定技能所属機関名，代表者氏名の記名／申請書作成年月日',
              'Name of the organization and representative of the organization 　／　Date of filling in this form',
              fontSize: 7,
            ),
          ]),
          Row(children: [
            SizedBox(width: 22),
            c.buildText(inputs[35], fontSize: 10),
            SizedBox(width: 16),
            c.buildText(c.parseDate(inputs[36])[0], fontSize: 10),
            c.buildNumber('', '年', 'Year'),
            c.buildText(c.parseDate(inputs[36])[1], fontSize: 10),
            c.buildNumber('', '月', 'Month'),
            c.buildText(c.parseDate(inputs[36])[2], fontSize: 10),
            c.buildNumber('', '日', 'Day'),
          ]),
          Divider(height: 2),
          Divider(height: 2),
          Row(children: [
            SizedBox(width: 16),
            c.buildText('注意'),
            SizedBox(width: 16),
            c.buildText('Attention'),
          ]),
          Row(children: [
            SizedBox(width: 12),
            c.buildNumber(
              '',
              '申請書作成後申請までに記載内容に変更が生じた場合，特定技能所属機関が変更箇所を訂正すること。',
              'In cases where descriptions have changed after filling in this application form up until submission of this application, the organization must correct the changed part. ',
              fontSize: 5,
            ),
          ]),
        ]),
      ),
    ]);
  }
}

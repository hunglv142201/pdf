import 'package:pdf/widgets.dart';

import '../common.dart';

class Page4 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
        c.buildGText([
          '申請人等作成用 ３　 　V　（「特定技能（１号）」・「特定技能（２号）」）',
          'For applicant, part 3 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ⅱ ) ")',
        ], fontSize: 8),
        c.buildGText([
          '在留資格認定証明書用',
          'For certificate of eligibility',
        ], fontSize: 8),
      ]),
      Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(border: Border.all()),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // 27
          c.buildNumber(
            '27',
            '特定技能雇用契約に係る保証金の徴収その他財産管理又は違約金等の支払契約の有無',
            'Is there a contract on the collection of a deposit pertaining to the employment contract for a specified skilled worker, or management of other property\nor the payment of penalties, etc.?',
            fontSize: 7,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildBooleanInput(inputs[0] == '1', '有', 'Yes', fontSize: 8),
            SizedBox(width: 4),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                c.buildText('(徴収又は管理機関名：', fontSize: 7),
                c.buildText(inputs[1], fontSize: 11),
              ]),
              c.buildText('(Name of the organization collecting the deposit or managing property:'),
            ]),
            SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                c.buildText('徴収金額又は管理財産：', fontSize: 7),
                c.buildText(inputs[2], fontSize: 11),
                c.buildText(')', fontSize: 7),
              ]),
              c.buildText('Deposit amount or type of property managed: )'),
            ]),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[0] == '2', '無', 'No', fontSize: 8),
            SizedBox(width: 12),
          ]),

          // 28
          c.buildNumber(
            '28',
            '特定技能雇用契約に係る申込みの取次ぎ又は外国における活動準備に関する外国の機関への費用の\n支払について，その額及び内訳を十分に理解して合意していることの有無（当該費用の支払がある場合\nに記入）',
            'Do you fully understand and agree on the amount and breakdown of expenses to be paid to the organization in a foreign country concerning mediation for the\napplication pertaining to the employment contract for specified skilled workers or preparations for activities in the foreign country? (Fill in this section if\nthere are expenses to be paid.)',
            fontSize: 7,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildBooleanInput(inputs[3] == '1', '有', 'Yes', fontSize: 8),
            SizedBox(width: 4),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                c.buildText('(外国の機関名：', fontSize: 7),
                c.buildText(inputs[4], fontSize: 11),
              ]),
              c.buildText('(Name of the organization in a foreign country:'),
            ]),
            SizedBox(width: 16),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                c.buildText('支払額（日本円に換算）：約 ', fontSize: 7),
                c.buildText(inputs[5], fontSize: 11),
                c.buildText('円)', fontSize: 7),
              ]),
              c.buildText('Payment (converted into Japanese yen) : Approximately'),
            ]),
            Expanded(child: Container()),
            c.buildBooleanInput(inputs[3] == '2', '無', 'No', fontSize: 8),
            SizedBox(width: 12),
          ]),

          // 29
          Row(children: [
            c.buildNumber(
              '29',
              '国籍又は住居を有する国又は地域において定められる，本邦で行う活動に関連して遵守すべき手続を\n経ていることの有無（当該手続が定められている場合に記入）',
              'Have you followed the procedures to be complied with in relation to the activities to be conducted in Japan prescribed by the country or\nregion of nationality or residence? (Fill in this section if such procedures are prescribed.)',
              fontSize: 7,
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[6], fontSize: 8),
            SizedBox(width: 12),
          ]),

          // 30
          Row(children: [
            c.buildNumber(
              '30',
              '本邦において定期的に負担する費用について，対価の内容を十分に理解して合意していることの有無\n(当該費用の負担がある場合に記入)',
              'Do you fully understand and have you agreed to the expenses to be paid on a regular basis in Japan?\n(Fill in this section if there are expenses to be paid.)',
              fontSize: 7,
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[7], fontSize: 8),
            SizedBox(width: 12),
          ]),

          // 31
          Row(children: [
            c.buildNumber(
              '31',
              '技能実習によって本邦において修得，習熟又は熟達した技能等の本国への移転に努めることの有無\n(技能実習の在留資格をもって在留していたことがある場合であって，「特定技能2号」での入国を希望す\nる場合に記入)',
              'Will you endeavor to transfer the skills, etc. you acquire, the skills, etc. for which you increase proficiency or attain proficiency in Japan\nthrough the technical intern training?\n(Fill in this section if you have a previous history of residing in Japan with the status of residence of "Technical Intern Training",\nand wish to enter Japan with the status of\nresidence of "Specified Skilled Worker (ii)".)',
              fontSize: 7,
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[8], fontSize: 8),
            SizedBox(width: 12),
          ]),

          // 32
          Row(children: [
            c.buildNumber(
              '32',
              '申請人につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合していることの有無\n(当該基準が定められている場合に記入)',
              'Do you meet the criteria prescribed in the public notice in consideration of circumstances specific to the specified industrial field\npertaining to you? (Fill in this section if such criteria are prescribed.)',
              fontSize: 7,
            ),
            Expanded(child: Container()),
            c.buildYNInput(inputs[9], fontSize: 8),
            SizedBox(width: 12),
          ]),

          // 33
          Row(children: [
            c.buildText('33'),
            SizedBox(width: 4),
            c.buildText('職　歴 （外国におけるものを含む', fontSize: 7),
            SizedBox(width: 16),
            c.buildText('Work experience (including those in a foreign country)'),
          ]),
          Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            columnWidths: {
              0: const FlexColumnWidth(3),
              1: const FlexColumnWidth(3),
              2: const FlexColumnWidth(5),
              3: const FlexColumnWidth(3),
              4: const FlexColumnWidth(3),
              5: const FlexColumnWidth(5),
            },
            children: [
              // Row 0
              TableRow(children: [
                Column(children: [
                  c.buildText('入社', fontSize: 7),
                  c.buildText('Date of joining the company', fontSize: 4),
                  Divider(height: 2),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                    children: [
                      TableRow(children: [
                        Column(children: [c.buildText('年', fontSize: 7), c.buildText('Year')]),
                        Column(children: [c.buildText('月', fontSize: 7), c.buildText('Month')]),
                      ]),
                    ],
                  ),
                ]),
                Column(children: [
                  c.buildText('退社', fontSize: 7),
                  c.buildText('Date of leaving the company', fontSize: 4),
                  Divider(height: 2),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                    children: [
                      TableRow(children: [
                        Column(children: [c.buildText('年', fontSize: 7), c.buildText('Year')]),
                        Column(children: [c.buildText('月', fontSize: 7), c.buildText('Month')]),
                      ]),
                    ],
                  ),
                ]),
                Column(children: [c.buildText('勤務先名称', fontSize: 7), c.buildText('Place of employment')]),
                Column(children: [
                  c.buildText('入社', fontSize: 7),
                  c.buildText('Date of joining the company', fontSize: 4),
                  Divider(height: 2),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                    children: [
                      TableRow(children: [
                        Column(children: [c.buildText('年', fontSize: 7), c.buildText('Year')]),
                        Column(children: [c.buildText('月', fontSize: 7), c.buildText('Month')]),
                      ]),
                    ],
                  ),
                ]),
                Column(children: [
                  c.buildText('退社', fontSize: 7),
                  c.buildText('Date of leaving the company', fontSize: 4),
                  Divider(height: 2),
                  Table(
                    border: TableBorder.all(),
                    columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                    children: [
                      TableRow(children: [
                        Column(children: [c.buildText('年', fontSize: 7), c.buildText('Year')]),
                        Column(children: [c.buildText('月', fontSize: 7), c.buildText('Month')]),
                      ]),
                    ],
                  ),
                ]),
                Column(children: [c.buildText('勤務先名称', fontSize: 7), c.buildText('Place of employment')]),
              ]),

              // Row 1
              TableRow(children: [
                Table(
                  border: TableBorder.all(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.full,
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[10])),
                      Center(child: c.buildText(inputs[11])),
                    ]),
                  ],
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[12])),
                      Center(child: c.buildText(inputs[13])),
                    ]),
                  ],
                ),
                Center(child: c.buildText(inputs[14])),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[25])),
                      Center(child: c.buildText(inputs[26])),
                    ]),
                  ],
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[27])),
                      Center(child: c.buildText(inputs[28])),
                    ]),
                  ],
                ),
                Center(child: c.buildText(inputs[29])),
              ]),

              // Row 2
              TableRow(children: [
                Table(
                  border: TableBorder.all(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.full,
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[15])),
                      Center(child: c.buildText(inputs[16])),
                    ]),
                  ],
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[17])),
                      Center(child: c.buildText(inputs[18])),
                    ]),
                  ],
                ),
                Center(child: c.buildText(inputs[19])),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[30])),
                      Center(child: c.buildText(inputs[31])),
                    ]),
                  ],
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[32])),
                      Center(child: c.buildText(inputs[33])),
                    ]),
                  ],
                ),
                Center(child: c.buildText(inputs[34])),
              ]),

              // Row 3
              TableRow(children: [
                Table(
                  border: TableBorder.all(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.full,
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[20])),
                      Center(child: c.buildText(inputs[21])),
                    ]),
                  ],
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[22])),
                      Center(child: c.buildText(inputs[23])),
                    ]),
                  ],
                ),
                Center(child: c.buildText(inputs[24])),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[35])),
                      Center(child: c.buildText(inputs[36])),
                    ]),
                  ],
                ),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {0: const FlexColumnWidth(1), 1: const FlexColumnWidth(1)},
                  children: [
                    TableRow(children: [
                      Center(child: c.buildText(inputs[37])),
                      Center(child: c.buildText(inputs[38])),
                    ]),
                  ],
                ),
                Center(child: c.buildText(inputs[39])),
              ]),
            ],
          ),

          // 34
          c.buildNumber(
            '34',
            '申請人，法定代理人，法第７条の２第２項に規定する代理人',
            '(Applicant, legal representative or the authorized representative, prescribed in Paragraph 2 of Article 7-2.)',
            fontSize: 7,
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber('(1)', '氏　名', 'Name', fontSize: 7),
            SizedBox(width: 4),
            c.buildText(inputs[40], fontSize: 11),
            SizedBox(width: 16),
            c.buildNumber('(2)', '本人との関係', 'Relationship with the applicant', fontSize: 7),
            SizedBox(width: 4),
            c.buildText(inputs[41], fontSize: 11),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber('(3)', '住　所', 'Address', fontSize: 7),
            SizedBox(width: 4),
            c.buildText(inputs[42], fontSize: 11),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 24),
            c.buildNumber('', '電話番号', 'Telephone No.', fontSize: 7),
            SizedBox(width: 4),
            c.buildText(inputs[44], fontSize: 11),
            SizedBox(width: 16),
            c.buildNumber('', '携帯電話番号', 'Cellular Phone No.', fontSize: 7),
            c.buildText(inputs[45], fontSize: 11),
          ]),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              c.buildText('以上の記載内容は事実と相違ありません。\n申請人（代理人）の署名／申請書作成年月日', fontSize: 8),
              c.buildText(
                  'I hereby declare that the statement given above is true and correct.\nSignature of the applicant (representative) / Date of filling in this form'),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            c.buildGText(['年', 'Year'], fontSize: 7),
            SizedBox(width: 16),
            c.buildGText(['月', 'Month'], fontSize: 7),
            SizedBox(width: 16),
            c.buildGText(['日', 'Day'], fontSize: 7),
            SizedBox(width: 16),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(children: [
              Divider(height: 2),
              Divider(height: 2),
            ]),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 8),
            c.buildText('注 意', fontSize: 7),
            SizedBox(width: 20),
            c.buildText('申請書作成後申請までに記載内容に変更が生じた場合，申請人（代理人）が変更箇所を訂正し，署名すること。\n申請書作成年月日は申請人（代理人）が自署すること。', fontSize: 7),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 8),
            c.buildText('Attention'),
            SizedBox(width: 8),
            c.buildText(
                'In cases where descriptions have changed after filling in this application form up until submission of this application, the applicant (representative)\nmust correct the part concerned and sign their name.\nThe date of preparation of the application form must be written by the applicant (representative).'),
          ]),
          Divider(height: 4),
          c.buildText('※ 取次者         Agent or other authorized person', fontSize: 7),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber('(1)', '氏　名', 'Name'),
            SizedBox(width: 4),
            c.buildText(inputs[46], fontSize: 11),
            SizedBox(width: 32),
            c.buildNumber('(2)', '住　所', 'Address'),
            SizedBox(width: 4),
            c.buildText(inputs[47], fontSize: 11),
          ]),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(width: 16),
            c.buildNumber('(3)', '所属機関等', 'Organization to which the agent belongs'),
            SizedBox(width: 4),
            c.buildText(inputs[48], fontSize: 11),
            SizedBox(width: 32),
            c.buildNumber('', '電話番号', 'Telephone No.'),
            SizedBox(width: 4),
            c.buildText(inputs[49], fontSize: 11),
          ]),
        ]),
      ),
    ]);
  }
}

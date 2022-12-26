import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_15_6_3/common.dart';

class Page1 {
  static late Common c;

  static Widget buildPage(List<String> inputs, Font font) {
    c = Common(font);

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [
        Column(children: [
          c.buildText('別記第六号の三様式（第六条の二関係）', fontSize: 7),
          c.buildText('申請人等作成用 １', fontSize: 7),
          c.buildText('For applicant, part 1'),
        ]),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          c.buildText('日本国政府法務省'),
          c.buildText('Ministry of Justice, Government of Japan'),
        ]),
      ]),
      SizedBox(height: 2),
      Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(border: Border.all()),
        child: Stack(children: [
          Positioned(
            top: 4,
            right: 4,
            child: Container(
              width: 90,
              height: 120,
              decoration: BoxDecoration(border: Border.all()),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                c.buildText('写   真', fontSize: 6),
                c.buildText('Photo', fontSize: 6),
                c.buildText('40mm×30mm', fontSize: 6),
              ]),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
              child: c.buildGText([
                '在　 留　 資　 格　 認　 定　 証　 明　 書　 交　 付　 申　 請　 書',
                'APPLICATION FOR CERTIFICATE OF ELIGIBILITY',
              ], fontSize: 8),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: c.buildGText([
                '法    務    大    臣    殿',
                'To the Minister of Justice',
              ], fontSize: 7),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: 300,
                child: c.buildGText([
                  '出入国管理及び難民認定法第７条の２の規定に基づき，次のとおり同法第７条第１項第２号に掲げる条件に適合している旨の証明書の交付を申請します。',
                  'Pursuant to the provisions of Article 7-2 of the Immigration Control and Refugee Recognition Act, I hereby apply for the certificate showing eligibility for the conditions provided for in 7, Paragraph 1, Item 2 of the said Act',
                ], fontSize: 7),
              ),
            ),
            SizedBox(height: 12),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber('1', '国　籍・地　域', 'Nationality/Region'),
                c.buildText(inputs[0], fontSize: 10),
              ]),
              SizedBox(
                width: 200,
                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.buildNumber('2', '生年月日', 'Date of birth'),
                  c.buildText(c.parseDate(inputs[1])[0], fontSize: 10),
                  c.buildNumber('', '年', 'Year'),
                  c.buildText(c.parseDate(inputs[1])[1], fontSize: 10),
                  c.buildNumber('', '月', 'Month'),
                  c.buildText(c.parseDate(inputs[1])[2], fontSize: 10),
                  c.buildNumber('', '日', 'Day'),
                ]),
              ),
            ]),
            Row(children: [
              c.buildNumber('3', '氏　名', 'Name'),
              c.buildText(inputs[2], fontSize: 10),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Row(children: [
                c.buildNumber('4', '性　別', 'Sex'),
                c.buildBooleanInput(inputs[3] == '1', '男', 'Male'),
                c.buildText(';', fontSize: 12),
                c.buildBooleanInput(inputs[3] == '2', '女', 'Female'),
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber('5', '出生地', 'Place of birth'),
                c.buildText(inputs[4], fontSize: 10),
              ]),
              Row(children: [
                c.buildNumber('6', '配偶者の有無', 'Marital status'),
                c.buildBooleanInput(inputs[5] == '1', '有', 'Married'),
                c.buildText(';', fontSize: 12),
                c.buildBooleanInput(inputs[5] == '2', '無', 'Single'),
              ]),
            ]),
            Row(children: [
              SizedBox(
                width: 196,
                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.buildNumber('7', '職　業', 'Occupation'),
                  c.buildText(inputs[6], fontSize: 10),
                ]),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber('8', '本国における居住地', 'Home town/city'),
                c.buildText(inputs[7], fontSize: 10),
              ]),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildNumber('9', '日本における連絡先', 'Address in Japan'),
              c.buildText(inputs[8], fontSize: 10),
            ]),
            Row(children: [
              SizedBox(
                width: 196,
                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.buildNumber(' ', '電話番号', 'Telephone No'),
                  c.buildText(inputs[9], fontSize: 10),
                ]),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber(' ', '携帯電話番号', 'Cellular phone No'),
                c.buildText(inputs[10], fontSize: 10),
              ]),
            ]),
            Row(children: [
              c.buildNumber('10', '旅券', 'Passport'),
              SizedBox(width: 16),
              SizedBox(
                width: 164,
                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.buildNumber('(1)', '番　号', 'Number'),
                  c.buildText(inputs[11], fontSize: 10),
                ]),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber('(2)', '有効期限', 'Date of expiration'),
                c.buildText(c.parseDate(inputs[12])[0], fontSize: 10),
                c.buildNumber('', '年', 'Year'),
                c.buildText(c.parseDate(inputs[12])[1], fontSize: 10),
                c.buildNumber('', '月', 'Month'),
                c.buildText(c.parseDate(inputs[12])[2], fontSize: 10),
                c.buildNumber('', '日', 'Day'),
              ]),
            ]),
            Row(children: [
              c.buildText('11'),
              SizedBox(width: 4),
              c.buildText('入国目的 （次のいずれか該当するものを選んでください。）'),
              SizedBox(width: 28),
              c.buildText('Purpose of entry: check one of the followings', fontSize: 5),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '0', 'Ｉ「教授」', '"Professor"'),
              _buildCheckbox(inputs[13] == '1', 'Ｉ「教育」', '"Instructor"'),
              _buildCheckbox(inputs[13] == '3', 'Ｊ「芸術」', '"Artist"'),
              _buildCheckbox(inputs[13] == '4', 'Ｊ「文化活動」', '"Cultural Activities"'),
              _buildCheckbox(inputs[13] == '5', 'Ｋ「宗教」', '"Religious Activities"'),
              _buildCheckbox(inputs[13] == '6', 'Ｌ「報道」', '"Journalist"'),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '7', 'Ｌ「企業内転勤」', '"Intra-company Transferee"'),
              _buildCheckbox(inputs[13] == '8', 'Ｌ「研究（転勤）」', '"Researcher (Transferee)"'),
              _buildCheckbox(inputs[13] == '9', 'M「経営・管理」', '"Business Manager"'),
              _buildCheckbox(inputs[13] == '10', 'Ｎ「研究」', '"Researcher"'),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '11', 'Ｎ「技術・人文知識・国際業務」',
                  '"Engineer / Specialist in Humanities / International Services"'),
              _buildCheckbox(inputs[13] == '12', 'Ｎ「介護」', '"Nursing Care"'),
              _buildCheckbox(inputs[13] == '13', 'Ｎ「技能」', '"Skilled Labor"'),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '14', 'Ｎ「特定活動（研究活動等）」',
                  '"Designated Activities ( Researcher or IT engineer of a designated org)"'),
              _buildCheckbox(inputs[13] == '15', 'Ｎ「特定活動（本邦大学卒業者）」',
                  '"Designated Activities (Graduate from a university in Japan)"'),
              _buildCheckbox(inputs[13] == '16', 'Ｖ「特定技能（1号）」 ', '"Specified Skilled Worker ( i )"'),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '17', 'Ｖ「特定技能（2号）」', '"Specified Skilled Worker ( ⅱ )"'),
              _buildCheckbox(inputs[13] == '18', 'Ｏ「興行」', '"Entertainer"'),
              _buildCheckbox(inputs[13] == '19', 'Ｐ「留学」', '"Student"'),
              _buildCheckbox(inputs[13] == '20', 'Ｑ「研修」', '"Trainee"'),
              _buildCheckbox(inputs[13] == '21', 'Y「技能実習（1号）」', '"Technical Intern Training ( i )"'),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '22', 'Y「技能実習（2号）」', '"Technical Intern Training ( ii )"'),
              _buildCheckbox(inputs[13] == '23', 'Y「技能実習（3号）」', '"Technical Intern Training ( iii )"'),
              _buildCheckbox(inputs[13] == '24', 'Ｒ「家族滞在」', '"Dependent"'),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '25', 'Ｒ「特定活動（研究活動等家族）」',
                  '"Designated Activities (Dependent of Researcher or IT engineer of a designated org)"'),
              _buildCheckbox(inputs[13] == '26', 'Ｒ「特定活動（EPA家族）」', '"Designated Activities(Dependent of EPA)"'),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '27', 'Ｒ「特定活動（本邦大卒者家族）」',
                  '"Designated Activities(Dependent of Gradutate from a university in Japan)"'),
              _buildCheckbox(inputs[13] == '28', 'Ｔ「日本人の配偶者等」', '"Spouse or Child of Japanese National"'),
              _buildCheckbox(inputs[13] == '29', 'Ｔ「永住者の配偶者等」', '"Spouse or Child of Permanent Resident"'),
            ]),
            Row(children: [
              _buildCheckbox(inputs[13] == '30', 'Ｔ「定住者」', '"Long Term Resident"'),
              _buildCheckbox(inputs[13] == '31', '「高度専門職（1号イ）」', '"Highly Skilled Professional(i)(a)"'),
              _buildCheckbox(inputs[13] == '32', '「高度専門職（1号ロ）」', '"Highly Skilled Professional(i)(b)"'),
              _buildCheckbox(inputs[13] == '33', '「高度専門職（1号ハ）」', '"Highly Skilled Professional(i)(c)"'),
              _buildCheckbox(inputs[13] == '34', 'Ｕ「その他」', '"Others"'),
            ]),
            Row(children: [
              SizedBox(
                width: 208,
                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.buildNumber('12', '入国予定年月日', 'Date of entry'),
                  c.buildText(c.parseDate(inputs[14])[0], fontSize: 10),
                  c.buildNumber('', '年', 'Year'),
                  c.buildText(c.parseDate(inputs[14])[1], fontSize: 10),
                  c.buildNumber('', '月', 'Month'),
                  c.buildText(c.parseDate(inputs[14])[2], fontSize: 10),
                  c.buildNumber('', '日', 'Day'),
                ]),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber('13', '上陸予定港', 'Port of entry'),
                c.buildText(inputs[15], fontSize: 10),
              ]),
            ]),
            Row(children: [
              SizedBox(
                width: 208,
                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  c.buildNumber('14', '滞在予定期間', 'Intended length of stay'),
                  c.buildText(inputs[16], fontSize: 10),
                ]),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildNumber('15', '同伴者の有無', 'Accompanying persons, if any'),
                c.buildYNInput(inputs[17]),
              ]),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildNumber('16', '査証申請予定地', 'Intended place to apply for visa'),
              c.buildText(inputs[18], fontSize: 10),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildNumber('17', '過去の出入国歴', 'Past entry into / departure from Japan'),
              c.buildYNInput(inputs[19]),
            ]),
            Row(children: [
              SizedBox(width: 16),
              c.buildText('（上記で『有』を選択した場合）　(Fill in the followings when the answer is "Yes")'),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(width: 18),
              c.buildText('回数'),
              c.buildText(inputs[20], fontSize: 10),
              c.buildNumber('', '回', 'time(s)'),
              SizedBox(width: 12),
              c.buildNumber('', '直近の出入国歴', 'The latest entry from'),
              c.buildText(c.parseDate(inputs[21])[0], fontSize: 10),
              c.buildNumber('', '年', 'Year'),
              c.buildText(c.parseDate(inputs[21])[1], fontSize: 10),
              c.buildNumber('', '月', 'Month'),
              c.buildText(c.parseDate(inputs[21])[2], fontSize: 10),
              c.buildNumber('', '日', 'Day'),
              c.buildNumber('', 'から', 'to'),
              c.buildText(c.parseDate(inputs[22])[0], fontSize: 10),
              c.buildNumber('', '年', 'Year'),
              c.buildText(c.parseDate(inputs[22])[1], fontSize: 10),
              c.buildNumber('', '月', 'Month'),
              c.buildText(c.parseDate(inputs[22])[2], fontSize: 10),
              c.buildNumber('', '日', 'Day'),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildNumber('18', '過去の在留資格認定証明書交付申請歴', 'Past history of applying for a certificate of eligibility'),
              c.buildYNInput(inputs[23]),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(width: 32),
              c.buildNumber('', '（上記で『有』を選択した場合）', '(Fill in the followings when the answer is "Yes")'),
              c.buildNumber('', '回数', ''),
              c.buildText(inputs[24], fontSize: 10),
              c.buildNumber('', '回', 'time(s)'),
              c.buildNumber('', '（うち不交付となった回数） ', '（Of these applications, the number of times of non-issuance）'),
              c.buildText(inputs[25], fontSize: 10),
              c.buildNumber('', '回', 'time(s)'),
            ]),
            c.buildNumber('19', '犯罪を理由とする処分を受けたことの有無 （日本国外におけるものを含む。）※交通違反等による処分を含む。',
                'Criminal record (in Japan / overseas)※Including dispositions due to traffic violations, etc.'),
            Row(children: [
              SizedBox(width: 16),
              c.buildBooleanInput(inputs[26] == '1', '有', 'Yes'),
              c.buildNumber('', '(具体的内容', '(Detail'),
              c.buildNumber('', ')', ')'),
              c.buildText(inputs[27], fontSize: 10),
              c.buildBooleanInput(inputs[26] == '2', '無', 'No'),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              c.buildNumber('20', '退去強制又は出国命令による出国の有無', 'Departure by deportation/departure order'),
              SizedBox(width: 16),
              c.buildYNInput(inputs[28]),
            ]),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(width: 16),
              c.buildNumber('', '（上記で『有』を選択した場合）', '(Fill in the followings when the answer is "Yes")'),
              SizedBox(width: 12),
              c.buildNumber('', '回数', ''),
              c.buildText(inputs[29], fontSize: 10),
              c.buildNumber('', '回', 'time(s)'),
              SizedBox(width: 4),
              c.buildNumber('', '直近の送還歴', 'The latest departure by deportation'),
              c.buildText(c.parseDate(inputs[30])[0], fontSize: 10),
              c.buildNumber('', '年', 'Year'),
              c.buildText(c.parseDate(inputs[30])[1], fontSize: 10),
              c.buildNumber('', '月', 'Month'),
              c.buildText(c.parseDate(inputs[30])[2], fontSize: 10),
              c.buildNumber('', '日', 'Day'),
            ]),
            c.buildNumber('21', '在日親族（父・母・配偶者・子・兄弟姉妹・祖父母・叔(伯)父・叔(伯)母など）及び同居者',
                'Family in Japan (father, mother, spouse, children, siblings,grandparents, uncle, aunt or others) and cohabitants'),
            Row(children: [
              SizedBox(width: 16),
              c.buildBooleanInput(inputs[31] == '1', '有', 'Yes'),
              c.buildNumber('', '（「有」の場合は，以下の欄に在日親族及び同居者を記入してください。）',
                  '(If yes, please fill in your family members in Japan and co-residents in the following columns)'),
              c.buildBooleanInput(inputs[31] == '2', '無', 'No'),
            ]),
            Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(children: [
                  Column(children: [
                    c.buildText('続　柄'),
                    c.buildText('Relationship', fontSize: 5),
                  ]),
                  Column(children: [
                    c.buildText('氏　名'),
                    c.buildText('Name', fontSize: 5),
                  ]),
                  Column(children: [
                    c.buildText('生年月日'),
                    c.buildText('Date of birth', fontSize: 5),
                  ]),
                  Column(children: [
                    c.buildText('国　籍・地　域'),
                    c.buildText('Nationality/Region', fontSize: 5),
                  ]),
                  Column(children: [
                    c.buildText('同居予定の有無'),
                    c.buildText('Intended to reside', fontSize: 5),
                    c.buildText('with applicant or not', fontSize: 5),
                  ]),
                  Column(children: [
                    c.buildText('勤務先名称・通学先名称'),
                    c.buildText('Place of employment/school', fontSize: 5),
                  ]),
                  Column(children: [
                    c.buildText('在留カード番号'),
                    c.buildText('特別永住者証明書番号'),
                    c.buildText('Residence card number', fontSize: 5),
                    c.buildText('Special Permanent Resident Certificate number', fontSize: 5),
                  ]),
                ]),
                TableRow(children: [
                  c.buildText(inputs[32], fontSize: 10),
                  c.buildText(inputs[33], fontSize: 10),
                  c.buildText(inputs[34], fontSize: 10),
                  c.buildText(inputs[35], fontSize: 10),
                  c.buildText(inputs[36], fontSize: 10),
                  c.buildText(inputs[37], fontSize: 10),
                  c.buildText(inputs[38], fontSize: 10),
                ]),
                TableRow(children: [
                  c.buildText(inputs[39], fontSize: 10),
                  c.buildText(inputs[40], fontSize: 10),
                  c.buildText(inputs[41], fontSize: 10),
                  c.buildText(inputs[42], fontSize: 10),
                  c.buildText(inputs[43], fontSize: 10),
                  c.buildText(inputs[44], fontSize: 10),
                  c.buildText(inputs[45], fontSize: 10),
                ]),
                TableRow(children: [
                  c.buildText(inputs[46], fontSize: 10),
                  c.buildText(inputs[47], fontSize: 10),
                  c.buildText(inputs[48], fontSize: 10),
                  c.buildText(inputs[49], fontSize: 10),
                  c.buildText(inputs[50], fontSize: 10),
                  c.buildText(inputs[51], fontSize: 10),
                  c.buildText(inputs[52], fontSize: 10),
                ]),
                TableRow(children: [
                  c.buildText(inputs[53], fontSize: 10),
                  c.buildText(inputs[54], fontSize: 10),
                  c.buildText(inputs[55], fontSize: 10),
                  c.buildText(inputs[56], fontSize: 10),
                  c.buildText(inputs[57], fontSize: 10),
                  c.buildText(inputs[58], fontSize: 10),
                  c.buildText(inputs[59], fontSize: 10),
                ]),
              ],
            ),
            Row(children: [
              SizedBox(width: 16),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                c.buildText('3について，有効な旅券を所持する場合は，旅券の身分事項ページのとおりに記載してください。', fontSize: 5),
                c.buildText(
                    'Regarding item 3, if you possess your valid passport, please fill in your name as shown in the passport.',
                    fontSize: 5),
                c.buildText('21については，記載欄が不足する場合は別紙に記入して添付すること。なお,「研修」，「技能実習」に係る申請の場合は，「在日親族」のみ記載してください。', fontSize: 5),
                c.buildText(
                    'Regarding item 21, if there is not enough space in the given columns to write in all of your family in Japan, fill in and attach a separate sheet.',
                    fontSize: 5),
                c.buildText(
                    'In addition, take note that you are only required to fill in your family members in Japan for applications pertaining to “Trainee” or “Technical Intern Training”.',
                    fontSize: 5),
              ]),
            ]),
          ]),
        ]),
      ),
      c.buildText('（注） 裏面参照の上，申請に必要な書類を作成して下さい。', fontSize: 5),
      c.buildText(' Note : Please fill in forms required for application. (See notes on reverse side.)', fontSize: 5),
      c.buildText('（注） 申請書に事実に反する記載をしたことが判明した場合には，不利益な扱いを受けることがあります。', fontSize: 5),
      c.buildText(
          ' Note : In case of to be found that you have misrepresented the facts in an application, you will be unfavorably treated in the process.',
          fontSize: 5),
    ]);
  }

  static Widget _buildCheckbox(bool isChecked, String upperText, String lowerText) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Checkbox(value: isChecked, name: '', width: 8, height: 8),
        c.buildBooleanInput(false, upperText, lowerText),
      ]),
    );
  }
}

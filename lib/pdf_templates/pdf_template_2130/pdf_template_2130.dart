import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class PdfTemplate2130 extends PDFTemplate {
  PdfTemplate2130(this.inputs);

  final List<List<String>> inputs;

  @override
  Future<Uint8List> build() async {
    final font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    final fontMedium = await PdfGoogleFonts.mPLUSRounded1cMedium();
    final fontBold = await PdfGoogleFonts.mPLUSRounded1cBold();
    final pdf = Document();

    List<String> ins1 = inputs[0];
    pdf.addPage(
      Page(
        // pageFormat: PdfPageFormat.a4,
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 0.5 * cm,
            marginBottom: 0.5 * cm,
            marginLeft: 2.0 * cm,
            marginRight: 2.0 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(),
                          child: Row(children: [
                            _buildText('別記第三十号様式', fontMedium, fontSize: 9),
                            _buildText('（第二十条関係）', font, fontSize: 9),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: -46),
                        child:
                            _buildText('申請人等作成用 １ ', fontMedium, fontSize: 9),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: -50),
                        child: _buildText('For applicant, part 1 ', fontMedium,
                            fontSize: 6),
                      ),
                    ]),
                    Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(left: 200, bottom: -16),
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: -56),
                              child: _buildText('日本国政府法務省', font, fontSize: 6)),
                          _buildText('Ministry of Justice, Government of Japan',
                              fontMedium,
                              fontSize: 6),
                        ])),
                  ])),
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    border: Border.all(color: PdfColor.fromHex('#000000'))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 82,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 76),
                                        child: Center(
                                            child: _buildText(
                                                '在     留      資    格    変     更      許     可     申    請      書',
                                                font,
                                                fontSize: 12)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: -3, left: 72),
                                        child: Center(
                                            child: _buildText(
                                                'APPLICATION FOR CHANGE OF STATUS OF RESIDENCE',
                                                fontMedium,
                                                fontSize: 10)),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 14, top: 6),
                                          child: _buildText(
                                              '法     務     大     臣     殿', font,
                                              fontSize: 9.5)),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 24, bottom: 6, top: -2),
                                          child: _buildText(
                                              'To the Minister of Justice',
                                              fontMedium,
                                              fontSize: 6.8)),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 14, top: 6),
                                          child: _buildText(
                                              '出入国管理及び難民認定法第２０条第２項の規定に基づき，次のとおり在留資格の変更を申請します。',
                                              font,
                                              fontSize: 8.2)),
                                      Padding(
                                          padding:
                                              const EdgeInsets.only(left: 14),
                                          child: _buildText(
                                              'Pursuant to the provisions of Paragraph 2 of Article 20 of the Immigration Control and Refugee Recognition Act,\nI hereby apply for a change of status of residence.',
                                              fontMedium,
                                              fontSize: 6.5)),
                                    ])),
                            Expanded(
                                flex: 18,
                                child: Container(
                                    height: 106,
                                    // padding: const EdgeInsets.symmetric(
                                    //     vertical: 2, horizontal: 4),
                                    margin: const EdgeInsets.only(
                                        top: 4, bottom: 4, right: 8),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                PdfColor.fromHex('#000000'))),
                                    child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 36),
                                        child: _buildText('写 真', fontMedium,
                                            fontSize: 9),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: _buildText('Photo', fontMedium,
                                            fontSize: 9),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8),
                                        child: _buildText(
                                            '40mm × 30mm', fontMedium,
                                            fontSize: 9),
                                      ),
                                    ])))
                          ]),
                      // Section 1 and 2
                      SizedBox(height: 10),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText('1   国  籍・地  域', font,
                                '        Nationality/Region', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 130,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child:
                                        _buildText(ins1[0], font, fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 10),
                            _buildDoubleLineText('2   生年月日', font,
                                '        Date of birth', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 190,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins1[1] == ''
                                                      ? ''
                                                      : ins1[1].split('/')[0],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 9),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins1[1] == ''
                                                      ? ''
                                                      : ins1[1].split('/')[1],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 9),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins1[1] == ''
                                                      ? ''
                                                      : ins1[1].split('/')[2],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 9),
                                            ),
                                          ]))),
                            ),
                          ]),
                      // Section 3
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '3   氏　名', font, '        Name', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 38),
                              child: Container(
                                  width: 400,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins1[2], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 80, top: -1.5),
                              child: _buildText(' Family name', fontMedium,
                                  fontSize: 5),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 140, top: -1.5),
                              child: _buildText(' Given name', fontMedium,
                                  fontSize: 5),
                            )
                          ]),
                      // Section 4,5,6
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '4   性 別', font, '        Sex', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  child: Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      // child: _buildDoubleLineText(
                                      //     '男 ・ 女', font, 'Male/Female', fontMedium,
                                      //     fontSize: 9),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Stack(children: [
                                              _buildDoubleLineText(
                                                  '男', font, 'Male', fontMedium,
                                                  fontSize: 9),
                                              _buildText(
                                                  ins1[3] == '1' ? '◯' : '',
                                                  font,
                                                  fontSize: 12)
                                            ]),
                                            _buildDoubleLineText(
                                                '・', font, '/', fontMedium,
                                                fontSize: 9),
                                            Stack(children: [
                                              _buildDoubleLineText('女', font,
                                                  'Female', fontMedium,
                                                  fontSize: 9),
                                              _buildText(
                                                  ins1[3] == '2' ? '◯' : '',
                                                  font,
                                                  fontSize: 12)
                                            ])
                                          ]))),
                            ),
                            SizedBox(width: 20),
                            _buildDoubleLineText('5   出生地', font,
                                '        Place of birth', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 150,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins1[4], font, fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 20),
                            _buildDoubleLineText('6   配偶者の有無', font,
                                '        Marital status', fontMedium,
                                fontSize: 9),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                // child: _buildDoubleLineText('有 ・ 無', font,
                                //     'Married / Single', fontMedium,
                                //     fontSize: 9),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(children: [
                                        _buildDoubleLineText(
                                            '有', font, 'Married', fontMedium,
                                            fontSize: 9),
                                        _buildText(
                                            ins1[5] == '1' ? '◯' : '', font,
                                            fontSize: 12)
                                      ]),
                                      _buildDoubleLineText(
                                          '・', font, '/', fontMedium,
                                          fontSize: 9),
                                      Stack(children: [
                                        _buildDoubleLineText(
                                            '無', font, 'Single', fontMedium,
                                            fontSize: 9),
                                        _buildText(
                                            ins1[5] == '2' ? '◯' : '', font,
                                            fontSize: 12)
                                      ])
                                    ]),
                              )),
                            ),
                          ]),
                      // Section 7, 8
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText('7   職 業', font,
                                '        Occupation', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 100,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins1[6], font, fontSize: 10),
                                  )),
                            ),
                            _buildDoubleLineText('8   本国における居住地', font,
                                '        Home town/city', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 224,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins1[7], font, fontSize: 10),
                                  )),
                            ),
                          ]),
                      // Section 9
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText('9   住居地', font,
                                '        Address in Japan', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                  width: 400,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins1[8], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText('     電話番号', font,
                                '        Telephone No.', fontMedium,
                                fontSize: 9),
                            SizedBox(width: 14),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 150,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins1[9], font, fontSize: 10),
                                  )),
                            ),
                            _buildDoubleLineText('     携帯電話番号', font,
                                '        Cellular phone No.', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 181,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins1[10], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      // Section 10
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '10  旅券', font, '         Passport', fontMedium,
                                fontSize: 9),
                            SizedBox(width: 4),
                            _buildDoubleLineText(
                                '(1)番 号', font, '        Number', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Container(
                                  width: 106,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins1[11], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 2),
                            _buildDoubleLineText('(2)有効期限', font,
                                '        Date of expiration', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 198,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: _buildText(
                                                  ins1[12] == ''
                                                      ? ''
                                                      : ins1[12].split('/')[0],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 9),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins1[12] == ''
                                                      ? ''
                                                      : ins1[12].split('/')[1],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 9),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins1[12] == ''
                                                      ? ''
                                                      : ins1[12].split('/')[2],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 9),
                                            ),
                                          ]))),
                            ),
                          ]),
                      // Section 11
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText('11  現に有する在留資格', font,
                                '         Status of residence', fontMedium,
                                fontSize: 8.5),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 120,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins1[13], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 2),
                            _buildDoubleLineText('       在留期間', font,
                                '        Period of stay', fontMedium,
                                fontSize: 9),
                            SizedBox(width: 15),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 180,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins1[14], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText('在留期間の満了日', font,
                                'Date of expiration', fontMedium,
                                fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 198,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 40),
                                              child: _buildText(
                                                  ins1[15] == ''
                                                      ? ''
                                                      : ins1[15].split('/')[0],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 9),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins1[15] == ''
                                                      ? ''
                                                      : ins1[15].split('/')[1],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 9),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins1[15] == ''
                                                      ? ''
                                                      : ins1[15].split('/')[2],
                                                  font,
                                                  fontSize: 10),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 9),
                                            ),
                                          ]))),
                            ),
                          ]),
                      // Section 12
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText('12 在留カード番号', font,
                                '         Residence card number', fontMedium,
                                fontSize: 9),
                            SizedBox(width: 12),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 200,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins1[16], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      // Section 13
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '13 希望する在留資格',
                                font,
                                '        Desired status of residence',
                                fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 200,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins1[17], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText('     在留期間', font,
                                '        Period of stay', fontMedium,
                                fontSize: 9),
                            SizedBox(width: 38),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 106,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins1[18], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: _buildDoubleLineText(
                                  '(審査の結果によって希望の期間とならない場合があります。)',
                                  font,
                                  '( It may not be as desired after examination.)',
                                  fontMedium,
                                  fontSize: 7),
                            )
                          ]),
                      // Section 14
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '14 変更の理由',
                                font,
                                '        Reason for change of status of residence',
                                fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                  width: 330,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins1[19], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                          ]),
                      // Section 15
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '15  犯罪を理由とする処分を受けたことの有無 (日本国外におけるものを含む。)※交通違反等による処分を含む。',
                                font,
                                '               Criminal record (in Japan / overseas)※Including dispositions due to traffic violations, etc.',
                                fontMedium,
                                fontSize: 9),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 26),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 9),
                              _buildText(ins1[20] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                ' (具体的内容', font, ' ( Detail:', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                  width: 330,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins1[21], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ') ・ ', font, ')    /   ', fontMedium,
                                fontSize: 9),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 9),
                              _buildText(ins1[20] == '2' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                          ]),
                      // Section 16
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '16  在日親族(父・母・配偶者・子・兄弟姉妹・祖父母・叔(伯)父・叔(伯)母など)及び同居者',
                                font,
                                '          Family in Japan (father, mother, spouse, children, siblings,grandparents, uncle, aunt or others) and cohabitants',
                                fontMedium,
                                fontSize: 9),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 26),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 9),
                              _buildText(ins1[22] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                ' (「有」の場合は,以下の欄に在日親族及び同居者を記入してください。)',
                                font,
                                '(If yes, please fill in your family members in Japan and co-residents in the following columns)',
                                fontMedium,
                                fontSize: 9),
                            _buildDoubleLineText(
                                ' ・ ', font, '    /   ', fontMedium,
                                fontSize: 9),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 9),
                              _buildText(ins1[22] == '2' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                          ]),
                      Table(
                          columnWidths: {
                            0: const FractionColumnWidth(0.082),
                            1: const FractionColumnWidth(0.239),
                            2: const FractionColumnWidth(0.107),
                            3: const FractionColumnWidth(0.08),
                            4: const FractionColumnWidth(0.107),
                            5: const FractionColumnWidth(0.188),
                            6: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                height: 30,
                                alignment: Alignment.center,
                                child: _buildTableText(
                                    '   続 柄', font, 'Relationship', fontMedium,
                                    fontSize: 8),
                              ),
                              Container(
                                height: 30,
                                alignment: Alignment.center,
                                child: _buildTableText(
                                    '氏 名', font, ' Name', fontMedium,
                                    fontSize: 8),
                              ),
                              Container(
                                height: 30,
                                alignment: Alignment.center,
                                child: _buildTableText(
                                    '生年月日', font, 'Date of birth', fontMedium,
                                    fontSize: 8),
                              ),
                              Container(
                                height: 30,
                                alignment: Alignment.center,
                                child: _buildTableText(' 国 籍・地 域', font,
                                    'Nationality/Region', fontMedium,
                                    fontSize: 6),
                              ),
                              Container(
                                height: 30,
                                alignment: Alignment.center,
                                child: _buildDoubleLineText(
                                    '同居の有無',
                                    font,
                                    '   Residing with\napplicant or not',
                                    fontMedium,
                                    fontSize: 8),
                              ),
                              Container(
                                height: 30,
                                alignment: Alignment.center,
                                child: _buildTableText(
                                    '勤務先名称・通学先名称',
                                    font,
                                    '   Place of employment/ school',
                                    fontMedium,
                                    fontSize: 8),
                              ),
                              Container(
                                height: 30,
                                alignment: Alignment.center,
                                child: _buildDoubleLineText(
                                    '   在    留    カ   ー   ド    番    号\n\t\t\t\t\t特別永住者証明書番号',
                                    font,
                                    '\t\t\t           Residence card number\nSpecial Permanent Resident Certificate number',
                                    fontMedium,
                                    fontSize: 6.2),
                              ),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[23], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[24], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[25], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[26], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '有', font, 'Yes', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[27] == '1' ? '◯' : '', font,
                                              fontSize: 12)
                                        ]),
                                        _buildDoubleLineText(
                                            '・', font, '/ ', fontMedium,
                                            fontSize: 8),
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '無', font, 'No', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[27] == '2' ? '◯' : '', font,
                                              fontSize: 12)
                                        ])
                                      ])),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[28], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[29], font, fontSize: 6)),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[30], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[31], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[32], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[33], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '有', font, 'Yes', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[34] == '1' ? '◯' : '', font,
                                              fontSize: 12)
                                        ]),
                                        _buildDoubleLineText(
                                            '・', font, '/ ', fontMedium,
                                            fontSize: 8),
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '無', font, 'No', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[34] == '2' ? '◯' : '', font,
                                              fontSize: 12)
                                        ])
                                      ])),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[35], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[36], font, fontSize: 6)),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[37], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[38], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[39], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[40], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '有', font, 'Yes', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[41] == '1' ? '◯' : '', font,
                                              fontSize: 12)
                                        ]),
                                        _buildDoubleLineText(
                                            '・', font, '/ ', fontMedium,
                                            fontSize: 8),
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '無', font, 'No', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[41] == '2' ? '◯' : '', font,
                                              fontSize: 12)
                                        ])
                                      ])),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[42], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[43], font, fontSize: 6)),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[44], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[45], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[46], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[47], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '有', font, 'Yes', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[48] == '1' ? '◯' : '', font,
                                              fontSize: 12)
                                        ]),
                                        _buildDoubleLineText(
                                            '・', font, '/ ', fontMedium,
                                            fontSize: 8),
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '無', font, 'No', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[48] == '2' ? '◯' : '', font,
                                              fontSize: 12)
                                        ])
                                      ])),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[49], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[50], font, fontSize: 6)),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[51], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[52], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[53], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[54], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '有', font, 'Yes', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[55] == '1' ? '◯' : '', font,
                                              fontSize: 12)
                                        ]),
                                        _buildDoubleLineText(
                                            '・', font, '/ ', fontMedium,
                                            fontSize: 8),
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '無', font, 'No', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[55] == '2' ? '◯' : '', font,
                                              fontSize: 12)
                                        ])
                                      ])),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[56], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[57], font, fontSize: 6)),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[58], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[59], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[60], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[61], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '有', font, 'Yes', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[62] == '1' ? '◯' : '', font,
                                              fontSize: 12)
                                        ]),
                                        _buildDoubleLineText(
                                            '・', font, '/ ', fontMedium,
                                            fontSize: 8),
                                        Stack(children: [
                                          _buildDoubleLineText(
                                              '無', font, 'No', fontMedium,
                                              fontSize: 8),
                                          _buildText(
                                              ins1[62] == '2' ? '◯' : '', font,
                                              fontSize: 12)
                                        ])
                                      ])),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[63], font, fontSize: 6)),
                              Container(
                                  height: 20,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins1[64], font, fontSize: 6)),
                            ]),
                          ]),

                      Padding(
                        padding: const EdgeInsets.only(left: 18, top: 2),
                        child: _buildDoubleLineText(
                            '※  3について, 有効な旅券を所持する場合は, 旅券の身分事項ページのとおりに記載してください。',
                            font,
                            '       Regarding item 3, if you possess your valid passport, please fill in your name as shown in the passport.',
                            fontMedium,
                            fontSize: 6,
                            ratio: 0.8),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 18, bottom: 4),
                        child: _buildDoubleLineText(
                            '     16については, 記載欄が不足する場合は別紙に記入して添付すること。なお,「研修」, 「技能実習」に係る申請の場合は,「在日親族」のみ記載してください。',
                            font,
                            '       Regarding item 16, if there is not enough space in the given columns to write in all of your family in Japan, fill in and attach a separate sheet.\n      In addition, take note that you are only required to fill in your family members in Japan for applications pertaining to “Trainee” or “Technical Intern Training”.',
                            fontMedium,
                            fontSize: 6,
                            ratio: 0.8),
                      ),
                    ]),
              ),
              _buildDoubleLineText(
                  ' (注) 裏面参照の上, 申請に必要な書類を作成して下さい。',
                  font,
                  'Note : Please fill in forms required for application. (See notes on reverse side.)',
                  fontMedium,
                  fontSize: 8,
                  ratio: 0.8),
              _buildDoubleLineText(
                  ' (注) 申請書に事実に反する記載をしたことが判明した場合には, 不利益な扱いを受けることがあります。',
                  font,
                  'Note : In case of to be found that you have misrepresented the facts in an application, you will be unfavorably treated in the process.',
                  fontMedium,
                  fontSize: 8,
                  ratio: 0.8),
            ],
          );
        },
      ),
    );

    // ------- Page 2 -------
    pdf.addPage(Page(
      pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
          marginTop: 0.5 * cm,
          marginBottom: 0.5 * cm,
          marginLeft: 2.5 * cm,
          marginRight: 2.5 * cm),
      build: (Context context) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              alignment: Alignment.center,
              child: _buildText(
                  '(このシートは提出する必要はありません。There is no need to submit this sheet.)',
                  fontBold,
                  fontSize: 6)),
          _buildDoubleLineText(
              '申請人等作成用2から4, 所属機関等作成用等1から4は, 在留目的に従って, 次の様式を使用してください。',
              fontMedium,
              ' Select type of form which corresponds to the purpose of residence in Japan.',
              font,
              fontSize: 6),
          Table(
              columnWidths: {
                0: const FractionColumnWidth(0.036),
                1: const FractionColumnWidth(0.391),
                2: const FractionColumnWidth(0.279),
                3: const FlexColumnWidth(),
              },
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(children: [
                  _buildText('', font, fontSize: 6),
                  Container(
                    alignment: Alignment.center,
                    height: 24,
                    child: _buildText('在留目的  Purpose of residence', fontMedium,
                        fontSize: 4.2),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 24,
                    child: _buildText('例  Example', fontMedium, fontSize: 4.2),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 24,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                height: 6,
                                child: _buildText(
                                    '使用する申請書  Type of form', fontMedium,
                                    fontSize: 4.2)),
                            Container(
                              alignment: Alignment.center,
                              height: 12,
                              padding: const EdgeInsets.all(0),
                              margin: const EdgeInsets.all(0),
                              child: Table(
                                  columnWidths: {
                                    0: const FractionColumnWidth(.5),
                                    1: const FlexColumnWidth(),
                                  },
                                  border: TableBorder.all(),
                                  children: [
                                    TableRow(children: [
                                      Container(
                                          alignment: Alignment.center,
                                          height: 12,
                                          child: _buildDoubleLineText(
                                              '申請人等作成用',
                                              fontMedium,
                                              '\t\t\t\tFor applicants',
                                              fontMedium,
                                              fontSize: 4.4,
                                              space: 0,
                                              ratio: 0.8)),
                                      Container(
                                          alignment: Alignment.center,
                                          height: 12,
                                          child: _buildDoubleLineText(
                                              '所属機関等作成用等',
                                              fontMedium,
                                              '\t\t\t\tFor organization',
                                              fontMedium,
                                              fontSize: 4.4,
                                              space: 0,
                                              ratio: 0.8))
                                    ]),
                                  ]),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 6,
                              child: Table(
                                  columnWidths: {
                                    0: const FractionColumnWidth(.125),
                                    1: const FractionColumnWidth(.125),
                                    2: const FractionColumnWidth(.125),
                                    3: const FractionColumnWidth(.125),
                                    4: const FractionColumnWidth(.125),
                                    5: const FractionColumnWidth(.125),
                                    6: const FractionColumnWidth(.125),
                                    7: const FlexColumnWidth(),
                                  },
                                  border: TableBorder.all(),
                                  children: [
                                    TableRow(children: [
                                      Container(
                                          height: 6,
                                          alignment: Alignment.center,
                                          child: _buildText('1', fontMedium,
                                              fontSize: 4)),
                                      Container(
                                          height: 6,
                                          alignment: Alignment.center,
                                          child: _buildText('2', fontMedium,
                                              fontSize: 4)),
                                      Container(
                                          height: 6,
                                          alignment: Alignment.center,
                                          child: _buildText('3', fontMedium,
                                              fontSize: 4)),
                                      Container(
                                          height: 6,
                                          alignment: Alignment.center,
                                          child: _buildText('4', fontMedium,
                                              fontSize: 4)),
                                      Container(
                                          height: 6,
                                          alignment: Alignment.center,
                                          child: _buildText('1', fontMedium,
                                              fontSize: 4)),
                                      Container(
                                          height: 6,
                                          alignment: Alignment.center,
                                          child: _buildText('2', fontMedium,
                                              fontSize: 4)),
                                      Container(
                                          height: 6,
                                          alignment: Alignment.center,
                                          child: _buildText('3', fontMedium,
                                              fontSize: 4)),
                                      Container(
                                          height: 6,
                                          alignment: Alignment.center,
                                          child: _buildText('4', fontMedium,
                                              fontSize: 4)),
                                    ]),
                                  ]),
                            ),
                          ])),
                ]),
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('1', font, fontSize: 4.4)),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 8,
                    child: _buildText('短期滞在   Temporary Visitor', fontMedium,
                        fontSize: 4),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 8,
                    child: _buildText(
                        '親族訪問, 短期商用  Visiting relatives, Temporary business',
                        fontMedium,
                        fontSize: 4),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 8,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('H', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('2', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 46,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              height: 22,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              child: _buildDoubleLineText(
                                  '大学等において高度の専門的な能力を有する人材として研究, 研究の指導\n又は教育に従事すること(※)',
                                  fontMedium,
                                  'Activities of highly skilled professionals who engage in research,research guidance or education\nat colleges (※)',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.8,
                                  space: 0))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 12,
                              child: _buildDoubleLineText(
                                  '大学等における研究の指導又は教育等',
                                  fontMedium,
                                  'Activities for research, research guidance or education at colleges',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.8,
                                  space: 0))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 12,
                              child: _buildDoubleLineText(
                                  '中学校, 高等学校等における語学教育等',
                                  fontMedium,
                                  'Activities to engage in language instruction at junior high schools and high schools, etc.',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.8,
                                  space: 0))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 46,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              height: 34,
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              child: _buildDoubleLineText(
                                  '大学教授', fontMedium, 'Professor', fontMedium,
                                  ratio: 0.8, space: 0, fontSize: 4))
                        ]),
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              height: 12,
                              child: _buildDoubleLineText(
                                  '中学校の語学教師',
                                  fontMedium,
                                  'Junior high school language teacher',
                                  fontMedium,
                                  ratio: 0.8,
                                  space: 0,
                                  fontSize: 4))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      height: 46,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  child: _buildText('I', font, fontSize: 6)),
                              Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  child: _buildText('I', font, fontSize: 6)),
                              Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  child: _buildText('I', font, fontSize: 6)),
                              Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 46,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 3 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('3', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 28,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              height: 8,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              child: _buildText(
                                  '収入を伴う芸術上の活動    Activities for the arts that provide an income',
                                  fontMedium,
                                  fontSize: 4))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 20,
                              child: _buildDoubleLineText(
                                  '収入を伴わない学術・芸術上の活動又は日本特有の文化・技芸の研究・修得',
                                  fontMedium,
                                  'Academic or artistic activities that provide no income, or activities for the purpose of pursuing learning\nand acquiring Japanese culture or arts',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.8,
                                  space: 1))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 28,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              height: 8,
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              child: _buildText(
                                  '作曲家，写真家　　  Composer, Photographer', font,
                                  fontSize: 4))
                        ]),
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              height: 20,
                              child: _buildDoubleLineText('茶道，柔道を修得しようとする者',
                                  fontMedium, 'Study tea ceremony, judo', font,
                                  ratio: 0.8, space: 1, fontSize: 4))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      height: 28,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('J', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('J', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('J', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 4 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('4', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 14,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '外国の宗教団体から派遣されて行う布教活動',
                                  fontMedium,
                                  'Religious activities conducted by foreign religious workers dispatched by foreign religious organizations',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.8,
                                  space: 1))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 14,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              height: 14,
                              child: _buildDoubleLineText('司教, 宣教師', fontMedium,
                                  'Bishop, Missionary', font,
                                  ratio: 0.8, space: 1, fontSize: 4.2))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      height: 14,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('K', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('K', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 5 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('5', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 78,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '外国の報道機関との契約に基づく報道上の活動',
                                  fontMedium,
                                  'Journalistic activities conducted on the basis of a contract with a foreign press organization',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.8,
                                  space: 1))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '日本にある事業所に期間を定めて転勤して研究活動に従事すること',
                                  fontMedium,
                                  'Activities of research who have been transferred to a business office in Japan for a limited period of time',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.8,
                                  space: 1))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 30,
                              child: _buildText(
                                  '日本にある事業所に期間を定めて転勤して高度の専門的な能力を有する人材 \nとして自然科学又は人文科学の分野の専門的技術又は知識を必要とする業務に \n従事すること（※） Activities of highly skilled professionals who have been transferred to\na business office in Japan for a limited period of time and who are to engage in services which\n require knowledge pertinent to the field of natural science or human science　（※）',
                                  fontMedium,
                                  fontSize: 3.8))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 20,
                              child: _buildText(
                                  '日本にある事業所に期間を定めて転勤して専門的技術等を必要とする業務に\n従事すること　　Activities of specialists who have been transferred to a business office\nin Japan for a limited period of time',
                                  fontMedium,
                                  fontSize: 3.8))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 78,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '新聞記者, 報道カメラマン',
                                  fontMedium,
                                  'Journalist, News photographer',
                                  font,
                                  ratio: 0.8,
                                  space: 1,
                                  fontSize: 4.2))
                        ]),
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '外資系企業の研究者',
                                  fontMedium,
                                  'Researcher assigned to a foreign firm',
                                  font,
                                  ratio: 0.8,
                                  space: 1,
                                  fontSize: 4.2))
                        ]),
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              height: 50,
                              alignment: Alignment.topLeft,
                              child: _buildDoubleLineText(
                                  '外資系企業の駐在員',
                                  fontMedium,
                                  'Employee assigned to a foreign firm',
                                  font,
                                  ratio: 0.8,
                                  space: 1,
                                  fontSize: 4.2))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      height: 78,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('L', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('L', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 6 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('6', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 28,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '高度の専門的な能力を有する人材として事業の経営又は管理に従事すること(※）',
                                  fontMedium,
                                  'Activities of highly skilled professionals who operate or manage business （※）',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.8,
                                  space: 1))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '事業の経営又は管理',
                                  fontMedium,
                                  'Operation or Management of business',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.8,
                                  space: 1))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 28,
                      padding: const EdgeInsets.only(left: 2, top: 1),
                      child: _buildDoubleLineText('新聞記者, 報道カメラマン', fontMedium,
                          'Journalist, News photographer', font,
                          ratio: 0.8, space: 1, fontSize: 4.2)),
                  Container(
                      alignment: Alignment.center,
                      height: 28,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('M', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('M', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 7 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('7', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 146,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 22,
                              child: _buildDoubleLineText(
                                  '高度の専門的な能力を有する人材として研究，研究の指導又は教育\nに従事すること（２に該当する場合を除く。）（※）',
                                  fontMedium,
                                  'Activities of highly skilled professionals who engage in research,research guidance or education\nat colleges（Except in cases falling under 2 ）（※）',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.84,
                                  space: 0))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 12,
                              child: _buildDoubleLineText(
                                  '契約に基づき収入を伴う研究を行う活動',
                                  fontMedium,
                                  'Activities to engage in research that provide income',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.84,
                                  space: 0))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 22,
                              child: _buildDoubleLineText(
                                  '高度の専門的な能力を有する人材として自然科学又は人文科学の分野の専門的技術又は\n知識を必要とする業務に従事すること(5に該当する場合を除く。)(※)',
                                  fontMedium,
                                  'Activities of highly skilled professionals who engage in services which require knowledge pertinent to natural\nscience fields or human science fields(Except in cases falling under 5 )(※)',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.78,
                                  space: 0))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 28,
                              child: _buildDoubleLineText(
                                  '自然科学若しくは人文科学の分野の専門的技術若しくは知識を必要とする業務\n又は外国の文化に基盤を有する思考等を必要とする業務に従事すること',
                                  fontMedium,
                                  'Activities to engage in services which require knowledge pertinent to natural science fields or human science fields\nor to engage in services which require specific ways of thinking or sensitivity acquired through experience with\nforeign culture',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.78,
                                  space: 0))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '介護又は介護の指導を行う業務に従事すること',
                                  fontMedium,
                                  'Activities to engage in nursing care or teaching nursing care',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.84,
                                  space: 1))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 12,
                              child: _buildDoubleLineText(
                                  '熟練した技能を要する業務に従事すること',
                                  fontMedium,
                                  'Activities to engage in services which require skills belonging to special fields',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.84,
                                  space: 0))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 18,
                              child: _buildDoubleLineText(
                                  '特定の研究活動, 研究事業活動, 情報処理活動',
                                  fontMedium,
                                  'Designated activities to engage in research, business related to research or information-processing-\nrelatedservices',
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.84,
                                  space: 0))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 18,
                              child: _buildDoubleLineText(
                                  '本邦の大学・大学院で修得した知識及び高い日本語能力を活用した業務に従事すること',
                                  fontMedium,
                                  "Activities to engage in services using knowledge acquired at a university or a master's program in Japan and\nadvanced Japanese language skills",
                                  fontMedium,
                                  fontSize: 4,
                                  ratio: 0.8,
                                  space: 0))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      height: 146,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              height: 34,
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              alignment: Alignment.topLeft,
                              child: _buildDoubleLineText(
                                  '政府関係機関， 企業の研究者',
                                  fontMedium,
                                  'Researcher of a government body or company',
                                  fontMedium,
                                  fontSize: 4,
                                  space: 4,
                                  ratio: 0.8))
                        ]),
                        TableRow(children: [
                          Container(
                              height: 50,
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              alignment: Alignment.topLeft,
                              child: _buildDoubleLineText(
                                  '機械工学等の技術者， マーケティング業務従事者',
                                  fontMedium,
                                  'Engineer of mechanical engineering,Marketing specialist',
                                  fontMedium,
                                  fontSize: 4,
                                  space: 4,
                                  ratio: 0.8))
                        ]),
                        TableRow(children: [
                          Container(
                              height: 14,
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              alignment: Alignment.topLeft,
                              child: _buildDoubleLineText('介護福祉士', fontMedium,
                                  'Certified care worker', fontMedium,
                                  fontSize: 4, space: 1, ratio: 0.8))
                        ]),
                        TableRow(children: [
                          Container(
                              height: 12,
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              alignment: Alignment.topLeft,
                              child: _buildDoubleLineText(
                                  '外国料理の調理師， スポーツ指導者',
                                  fontMedium,
                                  "Foreign cuisine chef, Sport's instructor",
                                  fontMedium,
                                  fontSize: 4,
                                  space: 0,
                                  ratio: 0.8))
                        ]),
                        TableRow(children: [
                          Container(
                              height: 18,
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              alignment: Alignment.topLeft,
                              child: _buildDoubleLineText(
                                  '指定された機関の研究者・情報処理技術者',
                                  fontMedium,
                                  "Researcher or Information-technology engineer of a\n designated organization",
                                  fontMedium,
                                  fontSize: 4,
                                  space: 0,
                                  ratio: 0.8))
                        ]),
                        TableRow(children: [
                          Container(
                              height: 18,
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              alignment: Alignment.topLeft,
                              child: _buildDoubleLineText(
                                  '高い日本語能力を持つ本邦大学卒業者',
                                  fontMedium,
                                  "Gradutate from a university or master's program in Japan who has advanced\nJapanese language skill.",
                                  fontMedium,
                                  fontSize: 4,
                                  space: 0,
                                  ratio: 0.8))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      height: 146,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 146,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 146,
                                  alignment: Alignment.center,
                                  child: _buildText('N', font, fontSize: 6)),
                              Container(
                                  height: 146,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 146,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 146,
                                  alignment: Alignment.center,
                                  child: _buildText('N', font, fontSize: 6)),
                              Container(
                                  height: 146,
                                  alignment: Alignment.center,
                                  child: _buildText('N', font, fontSize: 6)),
                              Container(
                                  height: 146,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 146,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 8 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('8', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 2, top: 1),
                      height: 32,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '特定技能雇用契約に基づいて相当程度の知識又は経験を必要とする技能を要する業務に従事するこ\nと',
                                fontMedium,
                                'Engaging in work requiring skills which need considerable knowledge or experience based on an employment\ncontract for specified skilled workers',
                                fontMedium,
                                fontSize: 4,
                                space: 0,
                                ratio: 0.84),
                            _buildDoubleLineText(
                                '特定技能雇用契約に基づいて熟練した技能を要する業務に従事すること',
                                fontMedium,
                                'Engaging in work requiring proficient skills based on an employment contract for specified skilled workers',
                                fontMedium,
                                fontSize: 4,
                                space: 0,
                                ratio: 0.84),
                          ])),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(left: 2, top: 2),
                    height: 32,
                    child: _buildDoubleLineText('特定技能外国人', fontMedium,
                        'Specified skilled worker', fontMedium,
                        fontSize: 4, space: 6, ratio: 0.9),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 32,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  child: _buildText('V', font, fontSize: 6)),
                              Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  child: _buildText('V', font, fontSize: 6)),
                              Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  child: _buildText('V', font, fontSize: 6)),
                              Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  child: _buildText('V', font, fontSize: 6)),
                              Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  child: _buildText('V', font, fontSize: 6)),
                              Container(
                                  height: 32,
                                  alignment: Alignment.center,
                                  child: _buildText('V', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 9 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('9', font, fontSize: 4.4)),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 8,
                    child: _buildText(
                        '興行             Entertainment', fontMedium,
                        fontSize: 4),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 8,
                    child: _buildText('歌手, モデル    Singer, Model', fontMedium,
                        fontSize: 4),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 8,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 10 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('10', font, fontSize: 4.4)),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 8,
                    child: _buildText(
                        '技能実習     Technical intern training', fontMedium,
                        fontSize: 4),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 8,
                    child: _buildText(
                        '技能実習生     Technical intern trainee', fontMedium,
                        fontSize: 4),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 8,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('Y', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('Y', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 11 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('11', font, fontSize: 4.4)),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 8,
                    child: _buildText('勉学             Study', fontMedium,
                        fontSize: 4),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 8,
                    child: _buildText('留学生       Student', fontMedium,
                        fontSize: 4),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 8,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('P', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('P', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('P', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('P', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 8,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 12 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('12', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 2, top: 1),
                      height: 24,
                      child: _buildDoubleLineText(
                          '研修', fontMedium, 'Training', fontMedium,
                          fontSize: 4.2, space: 1, ratio: 0.84)),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 2),
                    height: 24,
                    child: _buildDoubleLineText(
                        '実務研修を行わない研修生,公的研修を\n行う研修生',
                        fontMedium,
                        'Trainees not including in the on-the-job training, trainees\nwho participate in public training',
                        fontMedium,
                        fontSize: 4.2,
                        space: 1,
                        ratio: 0.84),
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 24,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 24,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 24,
                                  alignment: Alignment.center,
                                  child: _buildText('Q', font, fontSize: 6)),
                              Container(
                                  height: 24,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 24,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 24,
                                  alignment: Alignment.center,
                                  child: _buildText('Q', font, fontSize: 6)),
                              Container(
                                  height: 24,
                                  alignment: Alignment.center,
                                  child: _buildText('Q', font, fontSize: 6)),
                              Container(
                                  height: 24,
                                  alignment: Alignment.center,
                                  child: _buildText('Q', font, fontSize: 6)),
                              Container(
                                  height: 24,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 13 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('13', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 78,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildText(
                                  '商用・就職を目的とする者，文化活動又は留学の在留資格を有する者の扶養を\n受けること　　Dependent who lives together with their supporter',
                                  fontMedium,
                                  fontSize: 4.2))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 24,
                              child: _buildDoubleLineText(
                                  '特定の研究活動等を行う者の扶養を受けること',
                                  fontMedium,
                                  'Dependent living together with their supporter under the status of residence of "Designated Activities" in\norder to engage in research, business related to research or information-processing-related services',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.8,
                                  space: 1))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 20,
                              child: _buildDoubleLineText(
                                  'EPA看護師又は介護福祉士としての活動を行う者の扶養を受けること',
                                  fontMedium,
                                  'Dependent who intends to live together with their supporter whose status is Designated Activities\n(Nurse and Certified Careworker under EPA)',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.84,
                                  space: 1))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 20,
                              child: _buildDoubleLineText(
                                  '本邦大学卒業者としての活動を行う者の扶養を受けること',
                                  fontMedium,
                                  "Dependent who lives together with his/her supporter whose status is Designated Activities\n(Gradutate from a university or master's program in Japan)",
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.84,
                                  space: 1))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 78,
                      child: _buildText('', font)),
                  Container(
                      alignment: Alignment.center,
                      height: 78,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('R', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('R', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 78,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 14 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('14', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 14,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '日本人， 永住者等との婚姻関係， 親子関係等に基づく本邦での居住',
                                  fontMedium,
                                  'Spouse or child of Japanese national, Permanent resident, etc. ',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.84,
                                  space: 1))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 14,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              padding: const EdgeInsets.only(left: 2, top: 1),
                              height: 14,
                              child: _buildDoubleLineText('日本人の配偶者', fontMedium,
                                  'Spouse of Japanese national', fontMedium,
                                  fontSize: 4.2, ratio: 0.84, space: 1))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      height: 14,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('T', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('T', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ])
                          ])),
                ]),
                // ------ Row 15 ------
                TableRow(children: [
                  Container(
                      alignment: Alignment.center,
                      child: _buildText('15', font, fontSize: 4.4)),
                  Container(
                      alignment: Alignment.centerLeft,
                      height: 64,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 50,
                              child: _buildDoubleLineText('上記以外の目的（1）',
                                  fontMedium, 'Other purposes (1)', fontMedium,
                                  fontSize: 4.2, ratio: 0.84, space: 1))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText('上記以外の目的（2） ',
                                  fontMedium, 'Other purposes (2)', fontMedium,
                                  fontSize: 4.2, ratio: 0.84, space: 1))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.topLeft,
                      height: 64,
                      child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 50,
                              child: _buildDoubleLineText(
                                  '外交，公用，弁護士，公認会計士，医師，家事使用人，ﾜｰｷﾝｸﾞ･\nﾎﾘﾃﾞｰ，ｱﾏﾁｭｱｽﾎﾟｰﾂ選手，ｲﾝﾀｰﾝｼｯﾌﾟ，EPA看護師・介護福祉\n士，EPA看護師候補者・介護福祉士候補者，EPA就学介護福祉\n士候補者，日系四世',
                                  fontMedium,
                                  'Diplomat, Official, Lawyer, Public accountant, Doctor, Housekeeper, Working \nholiday, Amateur athlete, Internship, Nurse and Certified Careworker under EPA,\nNurse and Certified Careworker candidates under EPA, Certified Careworker\nCandidates (student) under EPA, Fourth-generation foreign national of Japanese\ndescent',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.76,
                                  space: 1))
                        ]),
                        TableRow(children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.only(top: 1, left: 2),
                              height: 14,
                              child: _buildDoubleLineText(
                                  '医療活動，起業活動 ',
                                  fontMedium,
                                  'Medical activities, entrepreneurial activities ',
                                  fontMedium,
                                  fontSize: 4.2,
                                  ratio: 0.84,
                                  space: 1))
                        ]),
                      ])),
                  Container(
                      alignment: Alignment.center,
                      height: 64,
                      child: Table(
                          columnWidths: {
                            0: const FractionColumnWidth(.125),
                            1: const FractionColumnWidth(.125),
                            2: const FractionColumnWidth(.125),
                            3: const FractionColumnWidth(.125),
                            4: const FractionColumnWidth(.125),
                            5: const FractionColumnWidth(.125),
                            6: const FractionColumnWidth(.125),
                            7: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: _buildText('U', font, fontSize: 6)),
                              Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: _buildText('U', font, fontSize: 6)),
                              Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: _buildText('U', font, fontSize: 6)),
                              Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: _buildText('U', font, fontSize: 6)),
                              Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: _buildText('U', font, fontSize: 6)),
                              Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 50,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ]),
                            TableRow(children: [
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('◯', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('U', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('U', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('U', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                              Container(
                                  height: 14,
                                  alignment: Alignment.center,
                                  child: _buildText('-', font, fontSize: 6)),
                            ]),
                          ])),
                ]),
              ]),
          _buildDoubleLineText(
              '(※)については,申請人が本邦において行おうとする活動に応じて,J,K,O又はUの申請書を使用しても差し支えありません。',
              fontMedium,
              '   For(※),it is also possible to use forms J,K,O and U in accordance with the activities in which the applicant is to engage while residing in Japan.',
              fontMedium,
              fontSize: 4,
              space: 0,
              ratio: 0.8),
          _buildText('(注意事項) Notes', fontMedium, fontSize: 4),
          _buildDoubleLineText(
              '1  所定の欄に記載することができないときは, 別紙に記載の上, これを添付してください。',
              fontMedium,
              '\t\t\t\t\t\t\t\t\t\t\t\t\tWhen the space provided is not sufficient for your answer, write on a separate piece of paper and attach it to the application.',
              fontMedium,
              fontSize: 4,
              space: 0,
              ratio: 0.8),
          _buildDoubleLineText(
              '2  用紙の大きさは, 日本産業規格A4としてください。',
              fontMedium,
              '\t\t\t\t\t\t\t\t\t\t\t\t\tAll parts of this application must be on JIS size A 4 Paper (210mm×297 mm).',
              fontMedium,
              fontSize: 4,
              space: 0,
              ratio: 0.8),
          _buildDoubleLineText(
              '3  公私の機関又は個人との契約に基づかずに在留資格「芸術」の活動を行う場合, フリーランスで在留資格「報道」の活動を行う場合は, 所属機関等作成用は申請人が作成してください。',
              fontMedium,
              '\t\t\t\t\t\t\t\t\t\t\t\t\tWhen engaging in the activities "Artist" not based on a contract with a public or private organization in Japan or engaging in the activities of "Journalist" as a freelancer, applicant him/herself must fill out the application form for the\n\t\t\t\t\t\t\t\t\t\t\t\t\torganization.',
              fontMedium,
              fontSize: 4,
              space: 0,
              ratio: 0.8),
          _buildDoubleLineText(
              '4  次の申請については, 所属機関等作成用の提出を不要とします。',
              fontMedium,
              '\t\t\t\t\t\t\t\t\t\t\t\t\tIn cases of the following applications, there is no need to submit the application form for the organization.',
              fontMedium,
              fontSize: 4,
              space: 0,
              ratio: 0.8),
          Container(
            padding: const EdgeInsets.only(left: 4),
            child: _buildDoubleLineText(
                '(1)  留学生が大学等を卒業後に継続して就職活動を行うための「特定活動」への在留資格変更許可申請及び同在留資格の在留期間更新許可申請',
                fontMedium,
                '\t\t\t\t\t\t\t\t\t\t\t\t\tApplication for changing the status of residence to "Designated Activities" or for extension of the period of stay for a college student to continue job hunting after graduation',
                fontMedium,
                fontSize: 4,
                space: 0,
                ratio: 0.8),
          ),
          Container(
            padding: const EdgeInsets.only(left: 4),
            child: _buildDoubleLineText(
                '(2)  ワーキング・ホリデーを目的とする「特定活動」の在留期間更新許可申請',
                fontMedium,
                '\t\t\t\t\t\t\t\t\t\t\t\t\tApplication for extension of the period of stay of "Designated Activities" for a working holiday',
                fontMedium,
                fontSize: 4,
                space: 0,
                ratio: 0.8),
          ),
          Container(
            padding: const EdgeInsets.only(left: 4),
            child: _buildDoubleLineText(
                '(3)  難民認定申請を行っている者の「特定活動」への在留資格変更許可申請及び同在留資格の在留期間更新許可申請',
                fontMedium,
                '\t\t\t\t\t\t\t\t\t\t\t\t\tApplication for changing the status of residence to "Designated Activities" or extension of the period of stay for a person who is applying for refugee recognition',
                fontMedium,
                fontSize: 4,
                space: 0,
                ratio: 0.8),
          ),
          _buildDoubleLineText(
              '5  法定代理人が本人に代わって申請することができます。',
              fontMedium,
              '\t\t\t\t\t\t\t\t\t\t\t\t\tThe legal representative of the applicant may make an application in lieu of the applicant.',
              fontMedium,
              fontSize: 4,
              space: 0,
              ratio: 0.8),
          _buildDoubleLineText(
              '6  次に掲げる方が本人に代わって申請の手続(旅券等の提示及び申請書等の提出)を行うことができます。',
              fontMedium,
              '\t\t\t\t\t\t\t\t\t\t\t\t\tThe following persons may complete the application procedure (submit the passport, residence card and application form, etc.) in lieu of the applicant.',
              fontMedium,
              fontSize: 4,
              space: 0,
              ratio: 0.8),
          Container(
            padding: const EdgeInsets.only(left: 4),
            child: _buildDoubleLineText(
                '(1)  受入れ機関等の職員又は公益法人の職員で, 地方出入国在留管理局長が適当と認めるもの(本人又は法定代理人の依頼による場合)',
                fontMedium,
                '\t\t\t\t\t\t\t\t\t\tA member of the staff of the accepting institution, etc. or of a public interest corporation whom the director of the regional immigration services bureau deems to be appropriate. (in cases pursuant to a request from the applicant or the legal\n\t\t\t\t\t\t\t\t\t\trepresentative of the applicant)',
                fontMedium,
                fontSize: 4,
                space: 0,
                ratio: 0.8),
          ),
          Container(
            padding: const EdgeInsets.only(left: 4),
            child: _buildDoubleLineText(
                '(2)  弁護士又は行政書士で所属する弁護士会又は行政書士会を経由してその所在地を管轄する地方出入国在留管理局長に届け出たもの(本人又は法定代理人の依頼による場合)',
                fontMedium,
                "\t\t\t\t\t\t\t\t\t\tAn attorney or administrative scrivener who has given notification, via the bar association or administrative scriveners' association to which he or she belongs, to the director of the regional immigration services bureau which has jurisdiction\n\t\t\t\t\t\t\t\t\t\tover the area where such bar association or administrative scriveners' association is located. (in cases pursuant to a request from the applicant or the legal representative of the applicant)",
                fontMedium,
                fontSize: 4,
                space: 0,
                ratio: 0.8),
          ),
          Container(
            padding: const EdgeInsets.only(left: 4),
            child: _buildDoubleLineText(
                '(3)  親族又は同居者若しくはこれに準ずる者で地方出入国在留管理局長が適当と認めるもの(本人が16歳未満又は疾病その他の事由により自ら申請の手続を行うことができない場合)',
                fontMedium,
                "\t\t\t\t\t\t\t\t\t\tA relative of the applicant, a person living together with the applicant or an equivalent person, whom the director of the regional services bureau deems respectively to be appropriate (in cases where the applicant is under the age of 16 years,\n\t\t\t\t\t\t\t\t\t\tsuffers from an illness or owing to other grounds)",
                fontMedium,
                fontSize: 4,
                space: 0,
                ratio: 0.8),
          ),
          Container(
              alignment: Alignment.center,
              child: _buildText(
                  '(このシートは提出する必要はありません。There is no need to submit this sheet.)',
                  fontBold,
                  fontSize: 6)),
        ]);
      },
    ));

    // ------- Page 3 -------
    List<String> ins2 = inputs[1];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 0.5 * cm,
            marginBottom: 0.5 * cm,
            marginLeft: 2.0 * cm,
            marginRight: 2.0 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Row(children: [
                            _buildText('申請人等作成用 2', fontMedium, fontSize: 9),
                            SizedBox(width: 6),
                            _buildText(
                                '（V (「特定技能(1号)」・「特定技能(2号)」)）', fontMedium,
                                fontSize: 9),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: -6),
                        child: _buildText(
                            'For applicant, part 2 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ii ) ") ',
                            fontMedium,
                            fontSize: 6),
                      ),
                    ]),
                    Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(left: 100, bottom: 0),
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: _buildText('在留資格変更用', font, fontSize: 9)),
                          _buildText('For change of status', fontMedium,
                              fontSize: 6),
                        ])),
                  ])),
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    border: Border.all(color: PdfColor.fromHex('#000000'))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Section 17
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText('17   特定技能所属機関', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Organization of affiliation of the specified skilled worker',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '(1)氏名又は名称',
                                font,
                                '\t\t\t\t\t\t\t\tName of person or organization',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 240,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins2[0], font, fontSize: 10),
                                  )),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            _buildDoubleLineText('(2)住所(所在地)', font,
                                '\t\t\t\t\t\t\t\tAddress', fontMedium,
                                fontSize: 9, ratio: 0.6),
                            SizedBox(width: 4),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 180,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins2[1], font, fontSize: 7),
                                  )),
                            ),
                            SizedBox(width: 30),
                            _buildDoubleLineText(
                                '電話番号', font, 'Telephone No.', fontMedium,
                                fontSize: 9, ratio: 0.6),
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 110,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins2[2], font, fontSize: 8),
                                  )),
                            ),
                          ]),
                      // Section 18
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText('18   技能水準', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText('Skill level', fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[3] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 分野別運用方針に定める評価方法による証明', font,
                                fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Proof based on the evaluation method specified in the field-specific operational policy',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[4] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 試験による証明', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Proof based on the passing of an exam',
                                    fontMedium,
                                    fontSize: 7)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 54),
                            _buildText(' 合格した試験名', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Name of passed exam', fontMedium,
                                    fontSize: 7)),
                            SizedBox(width: 30),
                            _buildText(' 受験地', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText('Exam location', fontMedium,
                                    fontSize: 7)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 60),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 160,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins2[5], font, fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 40),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: -1, left: 2),
                                      child: Checkbox(
                                        name: '',
                                        value: ins2[6] == '1' ? true : false,
                                        // value: true,
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: PdfColor.fromHex('#000000'),
                                          width: 1,
                                        )),
                                        activeColor:
                                            PdfColor.fromHex('#000000'),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -2),
                                        child: _buildText(' 日本国内', font,
                                            fontSize: 9)),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -2),
                                        child: _buildText('Japan', font,
                                            fontSize: 6)),
                                  ]),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: -8, left: 2),
                                      child: Checkbox(
                                        name: '',
                                        // value: true,
                                        value: ins2[6] == '2' ? true : false,
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: PdfColor.fromHex('#000000'),
                                          width: 1,
                                        )),
                                        activeColor:
                                            PdfColor.fromHex('#000000'),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -3),
                                        child: _buildDoubleLineText(
                                            ' 日本国外(国名:',
                                            font,
                                            'Foreign country Country name',
                                            fontMedium,
                                            ratio: 0.7,
                                            fontSize: 9)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: -26, top: -18),
                                      child: Container(
                                          width: 100,
                                          height: 18,
                                          decoration: _myUnderLine('#000000',
                                              width: 0.5),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 6),
                                            child: _buildText(ins2[7], font,
                                                fontSize: 9),
                                          )),
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: -10),
                                        child: _buildText(' )', font,
                                            fontSize: 9)),
                                  ]),
                                ])
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 60),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 160,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins2[8], font, fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 40),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: -1, left: 2),
                                      child: Checkbox(
                                        name: '',
                                        value: ins2[9] == '1' ? true : false,
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: PdfColor.fromHex('#000000'),
                                          width: 1,
                                        )),
                                        activeColor:
                                            PdfColor.fromHex('#000000'),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -2),
                                        child: _buildText(' 日本国内', font,
                                            fontSize: 9)),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -2),
                                        child: _buildText('Japan', font,
                                            fontSize: 6)),
                                  ]),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: -8, left: 2),
                                      child: Checkbox(
                                        name: '',
                                        value: ins2[9] == '2' ? true : false,
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: PdfColor.fromHex('#000000'),
                                          width: 1,
                                        )),
                                        activeColor:
                                            PdfColor.fromHex('#000000'),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -3),
                                        child: _buildDoubleLineText(
                                            ' 日本国外(国名:',
                                            font,
                                            'Foreign country Country name',
                                            fontMedium,
                                            ratio: 0.7,
                                            fontSize: 9)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: -26, top: -18),
                                      child: Container(
                                          width: 100,
                                          height: 18,
                                          decoration: _myUnderLine('#000000',
                                              width: 0.5),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 6),
                                            child: _buildText(ins2[10], font,
                                                fontSize: 9),
                                          )),
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: -10),
                                        child: _buildText(' )', font,
                                            fontSize: 9)),
                                  ]),
                                ])
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[4] == '2' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                ' その他の評価方法による証明',
                                font,
                                'Proof based on some other evaluation method',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            SizedBox(width: 6),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins2[11], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      SizedBox(height: 10),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[3] == '2' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 技能実習2号を良好に修了', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Successfully completed Technical Intern Training (ii)',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      // Section 19
                      SizedBox(height: 10),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '19   日本語能力(「特定技能1号」での在留を希望する場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\tJapanese language ability (Fill in this section if you wish to reside in Japan with the status of residence of "Specified Skilled Worker (i)")',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.68),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[12] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 分野別運用方針に定める評価方法による証明', font,
                                fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Proof based on the evaluation method specified in the field-specific operational policy',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[13] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 試験による証明', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Proof based on a Japanese language test',
                                    fontMedium,
                                    fontSize: 7)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 54),
                            _buildText(' 合格した試験名', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Name of passed exam', fontMedium,
                                    fontSize: 7)),
                            SizedBox(width: 30),
                            _buildText(' 受験地', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText('Exam location', fontMedium,
                                    fontSize: 7)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 60),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 160,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins2[14], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 40),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: -1, left: 2),
                                      child: Checkbox(
                                        name: '',
                                        value: ins2[15] == '1' ? true : false,
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: PdfColor.fromHex('#000000'),
                                          width: 1,
                                        )),
                                        activeColor:
                                            PdfColor.fromHex('#000000'),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -2),
                                        child: _buildText(' 日本国内', font,
                                            fontSize: 9)),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -2),
                                        child: _buildText('Japan', font,
                                            fontSize: 6)),
                                  ]),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: -8, left: 2),
                                      child: Checkbox(
                                        name: '',
                                        value: ins2[15] == '2' ? true : false,
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: PdfColor.fromHex('#000000'),
                                          width: 1,
                                        )),
                                        activeColor:
                                            PdfColor.fromHex('#000000'),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -3),
                                        child: _buildDoubleLineText(
                                            ' 日本国外(国名:',
                                            font,
                                            'Foreign country Country name',
                                            fontMedium,
                                            ratio: 0.7,
                                            fontSize: 9)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: -26, top: -18),
                                      child: Container(
                                          width: 100,
                                          height: 18,
                                          decoration: _myUnderLine('#000000',
                                              width: 0.5),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 6),
                                            child: _buildText(ins2[16], font,
                                                fontSize: 9),
                                          )),
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: -10),
                                        child: _buildText(' )', font,
                                            fontSize: 9)),
                                  ]),
                                ])
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 60),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 160,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins2[17], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 40),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: -1, left: 2),
                                      child: Checkbox(
                                        name: '',
                                        value: ins2[18] == '1' ? true : false,
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: PdfColor.fromHex('#000000'),
                                          width: 1,
                                        )),
                                        activeColor:
                                            PdfColor.fromHex('#000000'),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -2),
                                        child: _buildText(' 日本国内', font,
                                            fontSize: 9)),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -2),
                                        child: _buildText('Japan', font,
                                            fontSize: 6)),
                                  ]),
                                  Row(children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: -8, left: 2),
                                      child: Checkbox(
                                        name: '',
                                        value: ins2[18] == '2' ? true : false,
                                        width: 6,
                                        height: 6,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                          color: PdfColor.fromHex('#000000'),
                                          width: 1,
                                        )),
                                        activeColor:
                                            PdfColor.fromHex('#000000'),
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(top: -3),
                                        child: _buildDoubleLineText(
                                            ' 日本国外(国名:',
                                            font,
                                            'Foreign country Country name',
                                            fontMedium,
                                            ratio: 0.7,
                                            fontSize: 9)),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: -26, top: -18),
                                      child: Container(
                                          width: 100,
                                          height: 18,
                                          decoration: _myUnderLine('#000000',
                                              width: 0.5),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 6),
                                            child: _buildText(ins2[19], font,
                                                fontSize: 9),
                                          )),
                                    ),
                                    Padding(
                                        padding:
                                            const EdgeInsets.only(top: -10),
                                        child: _buildText(' )', font,
                                            fontSize: 9)),
                                  ]),
                                ])
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[13] == '2' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                ' その他の評価方法による証明',
                                font,
                                'Proof based on some other evaluation method',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            SizedBox(width: 6),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins2[20], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      SizedBox(height: 10),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(top: 3, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[12] == '2' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 技能実習2号を良好に修了', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Successfully completed Technical Intern Training (ii)',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      SizedBox(height: 10),
                      // Section 20
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '20   良好に修了した技能実習2号 (上記18, 19において技能実習2号を良好に修了を選択した場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\tTechnical Intern Training (ii) that was successfully completed (Fill in this section if you selected "Successfully completed Technical Intern Training (ii) in 18 and 19 above)',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '(1)職種・作業(技能実習法施行規則別表第2の職種・作業を記入)',
                                font,
                                '\t\t\t\t\t\tOccupation / Operations (Fill in the occupation /operations under Appended Table II of the Ordinance for Enforcement of the Act on',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.74),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(left: -34),
                                child: _buildText(
                                    'Proper Technical Intern Training and Protection of Technical Intern Trainees)',
                                    fontMedium,
                                    fontSize: 6.66))
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '職種', font, 'Occupation', fontMedium,
                                fontSize: 9, ratio: 0.8),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 150,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins2[21], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '作業', font, 'Operations', fontMedium,
                                fontSize: 9, ratio: 0.8),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 181,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins2[22], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 18),
                            _buildText(' 良好に修了したことの証明', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Proof of successful completion',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[23] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '3級の技能検定又はこれに相当する技能実習評価試験の実技試験の合格による証明',
                                font,
                                '\tProof based on passing Grade 3 of the National Trade Skills Test or the practical test of an equivalent technical intern training evaluation exam',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[23] == '2' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '実習状況に関する書面による証明',
                                font,
                                '\tProof based on a document relating to the status of the technical intern training',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            _buildText('(複数ある場合には(2)に記入)', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    '(Fill in (2) if you have several forms of proof)',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      // Section 20 - 2
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '(2)職種・作業(技能実習法施行規則別表第2の職種・作業を記入)',
                                font,
                                '\t\t\t\t\t\tOccupation / Operations (Fill in the occupation /operations under Appended Table II of the Ordinance for Enforcement of the Act on',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.74),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                padding: const EdgeInsets.only(left: -34),
                                child: _buildText(
                                    'Proper Technical Intern Training and Protection of Technical Intern Trainees)',
                                    fontMedium,
                                    fontSize: 6.66))
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '職種', font, 'Occupation', fontMedium,
                                fontSize: 9, ratio: 0.8),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 150,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins2[24], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '作業', font, 'Operations', fontMedium,
                                fontSize: 9, ratio: 0.8),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 181,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins2[25], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 18),
                            _buildText(' 良好に修了したことの証明', font, fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Proof of successful completion',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[26] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '3級の技能検定又はこれに相当する技能実習評価試験の実技試験の合格による証明',
                                font,
                                '\tProof based on passing Grade 3 of the National Trade Skills Test or the practical test of an equivalent technical intern training evaluation exam',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Padding(
                              padding: const EdgeInsets.only(top: 2, left: 2),
                              child: Checkbox(
                                name: '',
                                value: ins2[2] == '2' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '実習状況に関する書面による証明',
                                font,
                                '\tProof based on a document relating to the status of the technical intern training',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6)
                          ]),
                      // Section 21
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '21   申請時における特定技能1号での通算在留期間(過去の在留歴を含む。「特定技能1号」での在留を希\n\t\t\t\t\t\t\t\t望する場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tCumulative period of stay with "Specified Skilled Worker (i)" at the time of submitting this application (including past residence history; fill in this section if you wish to\n\t\t\t\t\t\t\t\t\t\t\t\treside in Japan with the status of residence of "Specified Skilled Worker (i)")',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 10),
                        child: Container(
                            width: 140,
                            height: 18,
                            decoration: _myUnderLine('#000000', width: 0.5),
                            child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, top: 3),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: _buildText(ins2[27], font,
                                            fontSize: 10),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: -4, left: 2),
                                        child: _buildDoubleLineText(
                                            '年', font, 'Year', fontMedium,
                                            fontSize: 9),
                                      ),
                                      SizedBox(width: 6),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: _buildText(ins2[28], font,
                                            fontSize: 10),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: -4, left: 2),
                                        child: _buildDoubleLineText(
                                            '月', font, 'Month', fontMedium,
                                            fontSize: 9),
                                      ),
                                    ]))),
                      ),
                    ]),
              ),
            ],
          );
        },
      ),
    );

    // ------- Page 4 -------
    List<String> ins3 = inputs[2];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 0.5 * cm,
            marginBottom: 0.5 * cm,
            marginLeft: 2.0 * cm,
            marginRight: 2.0 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Row(children: [
                            _buildText('申請人等作成用 3', fontMedium, fontSize: 9),
                            SizedBox(width: 6),
                            _buildText('V (「特定技能(1号)」・「特定技能(2号)」)', fontMedium,
                                fontSize: 9),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: -6),
                        child: _buildText(
                            'For applicant, part 3 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ii ) ") ',
                            fontMedium,
                            fontSize: 6),
                      ),
                    ]),
                    Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(left: 100, bottom: 0),
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: _buildText('在留資格変更用', font, fontSize: 9)),
                          _buildText('For change of status', fontMedium,
                              fontSize: 6),
                        ])),
                  ])),
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    border: Border.all(color: PdfColor.fromHex('#000000'))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Section 22
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '22   特定技能雇用契約に係る保証金の徴収その他財産管理又は違約金等の支払契約の有無',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\t\t\tIs there a contract on the collection of a deposit pertaining to the employment contract for a specified skilled worker, or management of other property or the payment of penalties, etc.',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.54)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 9),
                              _buildText(ins3[0] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(徴収又は管理機関名:',
                                font,
                                '(Name of the organization collecting the deposit or managing property:',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: -96, top: -6),
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 120,
                                    height: 18,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    padding: const EdgeInsets.only(top: 6),
                                    child: _buildText(ins3[1], font,
                                        fontSize: 9))),
                            _buildDoubleLineText(
                                '徴収金額又は管理財産:',
                                font,
                                'Deposit amount or type of property managed:',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: -20, top: -6),
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 110,
                                    height: 18,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    padding: const EdgeInsets.only(top: 6),
                                    child: _buildText(ins3[2], font,
                                        fontSize: 9))),
                            _buildDoubleLineText(')', font, ')', fontMedium,
                                fontSize: 9, ratio: 0.6),
                            _buildDoubleLineText('・', font, ' /  ', fontMedium,
                                fontSize: 9),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 9),
                              _buildText(ins3[0] == '2' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                          ]),
                      // Section 23
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '23   特定技能雇用契約に係る申込みの取次ぎ又は外国における活動準備に関する外国の機関への費用の\n\t\t\t\t\t\t\t\t支払について,その額及び内訳を十分に理解して合意していることの有無(当該費用の支払がある場合\n\t\t\t\t\t\t\t\tに記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\t\t\tDo you fully understand and agree on the amount and breakdown of expenses to be paid to the organization in a foreign country concerning mediation\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tfor the application pertaining to the employment contract for specified skilled workers or preparations for activities in the foreign country? (Fill in this\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tsection if there are expenses to be paid.)',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 9),
                              _buildText(ins3[3] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(外国の機関名:',
                                font,
                                '(Name of the organization in a foreign country:',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: -60, top: -6),
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 150,
                                    height: 18,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    padding: const EdgeInsets.only(top: 6),
                                    child: _buildText(ins3[4], font,
                                        fontSize: 9))),
                            _buildDoubleLineText(
                                '支払額(日本円に換算):約',
                                font,
                                'Payment (converted into Japanese yen) : Approximately Yen )',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: -56, top: -6),
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 90,
                                    height: 18,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    padding: const EdgeInsets.only(top: 6),
                                    child: _buildText(ins3[5], font,
                                        fontSize: 9))),
                            _buildDoubleLineText('円)', font, '', fontMedium,
                                fontSize: 9, ratio: 0.6),
                            _buildDoubleLineText('・', font, ' /  ', fontMedium,
                                fontSize: 9),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 9),
                              _buildText(ins3[3] == '2' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                          ]),
                      // Section 24
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '24   国籍又は住居を有する国又は地域において定められる, 本邦で行う活動に関連して遵守すべき手続を\n\t\t\t\t\t\t\t\t経ていることの有無(当該手続が定められている場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\t\t\tHave you followed the procedures to be complied with in relation to the activities to be conducted in Japan prescribed by the country or region of nationality or\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tresidence? (Fill in this section if such procedures are prescribed.)',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            Padding(
                                padding: const EdgeInsets.only(top: 4, left: 2),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 9, space: 0),
                                  _buildText(ins3[6] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '・', font, '/ ', fontMedium,
                                      fontSize: 9, space: 0),
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 9, space: 0),
                                  _buildText(ins3[6] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 25
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '25   本邦において定期的に負担する費用について,対価の内容を十分に理解して合意していることの有無\n\t\t\t\t\t\t\t\t(当該費用の負担がある場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\t\t\tDo you fully understand and have you agreed to the expenses to be paid on a regular basis in Japan? (Fill in this section if there are expenses to be paid.)',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, left: 20),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 9, space: 0),
                                  _buildText(ins3[7] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 9, space: 0),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 9, space: 0),
                                  _buildText(ins3[7] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 26
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '26   技能実習によって本邦において修得, 習熟又は熟達した技能等の本国への移転に努めることの有無\n\t\t\t\t\t\t\t\t(技能実習の在留資格をもって在留していたことがある場合であって,「特定技能2号」での在留を希望す\n\t\t\t\t\t\t\t\tる場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\t\t\tWill you endeavor to transfer the skills, etc. you acquire, the skills, etc. for which you increase proficiency or attain proficiency in Japan through the technical\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tintern training? (Fill in this section if you have a previous history of residing in Japan with the status of residence of "Technical Intern Training", and wish to\n\t\t\t\t\t\t\t\t\t\t\t\t\t\treside in Japan with the status of residence of "Specified Skilled Worker (ii)".)',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            Padding(
                                padding: const EdgeInsets.only(top: 4, left: 2),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 9, space: 0),
                                  _buildText(ins3[8] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 9, space: 0),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 9, space: 0),
                                  _buildText(ins3[8] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 27
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '27   申請人につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合していることの有無\n\t\t\t\t\t\t\t\t(当該基準が定められている場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\t\t\tDo you meet the criteria prescribed in the public notice in consideration of circumstances specific to the specified industrial field pertaining to you? (Fill in this\n\t\t\t\t\t\t\t\t\t\t\t\t\t\tsection if such criteria are prescribed.)',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.6),
                            Padding(
                                padding: const EdgeInsets.only(top: 4, left: 2),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 9, space: 0),
                                  _buildText(ins3[9] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 9, space: 0),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 9, space: 0),
                                  _buildText(ins3[9] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 28
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText('28   職 歴      (外国におけるものを含む)', font,
                                fontSize: 9),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Work experience (including those in a foreign country)',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                flex: 5,
                                child: Table(
                                    columnWidths: {
                                      0: const FractionColumnWidth(0.25),
                                      1: const FractionColumnWidth(0.25),
                                      2: const FlexColumnWidth(),
                                    },
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                  height: 18,
                                                  alignment: Alignment.center,
                                                  child: _buildDoubleLineText(
                                                      '      入社',
                                                      font,
                                                      'Date of joining the company',
                                                      fontMedium,
                                                      ratio: 0.4,
                                                      space: 0,
                                                      fontSize: 9)),
                                              Table(
                                                  columnWidths: {
                                                    0: const FractionColumnWidth(
                                                        0.5),
                                                    1: const FlexColumnWidth(),
                                                  },
                                                  border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              _buildDoubleLineText(
                                                                  '年',
                                                                  font,
                                                                  'Year',
                                                                  fontMedium,
                                                                  ratio: 0.6,
                                                                  space: -3,
                                                                  fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              _buildDoubleLineText(
                                                                  '月',
                                                                  font,
                                                                  'Month',
                                                                  fontMedium,
                                                                  ratio: 0.6,
                                                                  space: -3,
                                                                  fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[10], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[11], font,
                                                              fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[15], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[16], font,
                                                              fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[20], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[21], font,
                                                              fontSize: 9)),
                                                    ]),
                                                  ])
                                            ]),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: 18,
                                                  alignment: Alignment.center,
                                                  child: _buildDoubleLineText(
                                                      '      退社',
                                                      font,
                                                      'Date of leaving the company',
                                                      fontMedium,
                                                      ratio: 0.4,
                                                      space: 0,
                                                      fontSize: 9)),
                                              Table(
                                                  columnWidths: {
                                                    0: const FractionColumnWidth(
                                                        0.5),
                                                    1: const FlexColumnWidth(),
                                                  },
                                                  border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              _buildDoubleLineText(
                                                                  '年',
                                                                  font,
                                                                  'Year',
                                                                  fontMedium,
                                                                  ratio: 0.6,
                                                                  space: -3,
                                                                  fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              _buildDoubleLineText(
                                                                  '月',
                                                                  font,
                                                                  'Month',
                                                                  fontMedium,
                                                                  ratio: 0.6,
                                                                  space: -3,
                                                                  fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[12], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[13], font,
                                                              fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[17], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[18], font,
                                                              fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[22], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[23], font,
                                                              fontSize: 9)),
                                                    ]),
                                                  ])
                                            ]),
                                        Table(
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                Container(
                                                    height: 36,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 4),
                                                    child: _buildDoubleLineText(
                                                        '     勤務先名称',
                                                        font,
                                                        'Place of employment',
                                                        fontMedium,
                                                        ratio: 0.8,
                                                        space: 0,
                                                        fontSize: 9))
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 18,
                                                    alignment: Alignment.center,
                                                    child: _buildText(
                                                        ins3[14], font,
                                                        fontSize: 9))
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 18,
                                                    alignment: Alignment.center,
                                                    child: _buildText(
                                                        ins3[19], font,
                                                        fontSize: 9))
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 18,
                                                    alignment: Alignment.center,
                                                    child: _buildText(
                                                        ins3[24], font,
                                                        fontSize: 9))
                                              ]),
                                            ])
                                      ])
                                    ])),
                            Expanded(
                                flex: 5,
                                child: Table(
                                    columnWidths: {
                                      0: const FractionColumnWidth(0.25),
                                      1: const FractionColumnWidth(0.25),
                                      2: const FlexColumnWidth(),
                                    },
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                  height: 18,
                                                  alignment: Alignment.center,
                                                  child: _buildDoubleLineText(
                                                      '      入社',
                                                      font,
                                                      'Date of joining the company',
                                                      fontMedium,
                                                      ratio: 0.4,
                                                      space: 0,
                                                      fontSize: 9)),
                                              Table(
                                                  columnWidths: {
                                                    0: const FractionColumnWidth(
                                                        0.5),
                                                    1: const FlexColumnWidth(),
                                                  },
                                                  border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              _buildDoubleLineText(
                                                                  '年',
                                                                  font,
                                                                  'Year',
                                                                  fontMedium,
                                                                  ratio: 0.6,
                                                                  space: -3,
                                                                  fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              _buildDoubleLineText(
                                                                  '月',
                                                                  font,
                                                                  'Month',
                                                                  fontMedium,
                                                                  ratio: 0.6,
                                                                  space: -3,
                                                                  fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[25], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[26], font,
                                                              fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[30], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[31], font,
                                                              fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[35], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[36], font,
                                                              fontSize: 9)),
                                                    ]),
                                                  ])
                                            ]),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: 18,
                                                  alignment: Alignment.center,
                                                  child: _buildDoubleLineText(
                                                      '      退社',
                                                      font,
                                                      'Date of leaving the company',
                                                      fontMedium,
                                                      ratio: 0.4,
                                                      space: 0,
                                                      fontSize: 9)),
                                              Table(
                                                  columnWidths: {
                                                    0: const FractionColumnWidth(
                                                        0.5),
                                                    1: const FlexColumnWidth(),
                                                  },
                                                  border: TableBorder.all(),
                                                  children: [
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              _buildDoubleLineText(
                                                                  '年',
                                                                  font,
                                                                  'Year',
                                                                  fontMedium,
                                                                  ratio: 0.6,
                                                                  space: -3,
                                                                  fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child:
                                                              _buildDoubleLineText(
                                                                  '月',
                                                                  font,
                                                                  'Month',
                                                                  fontMedium,
                                                                  ratio: 0.6,
                                                                  space: -3,
                                                                  fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[27], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[28], font,
                                                              fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[32], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[33], font,
                                                              fontSize: 9)),
                                                    ]),
                                                    TableRow(children: [
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[37], font,
                                                              fontSize: 9)),
                                                      Container(
                                                          height: 18,
                                                          alignment:
                                                              Alignment.center,
                                                          child: _buildText(
                                                              ins3[38], font,
                                                              fontSize: 9)),
                                                    ]),
                                                  ])
                                            ]),
                                        Table(
                                            border: TableBorder.all(),
                                            children: [
                                              TableRow(children: [
                                                Container(
                                                    height: 36,
                                                    alignment: Alignment.center,
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 4),
                                                    child: _buildDoubleLineText(
                                                        '     勤務先名称',
                                                        font,
                                                        'Place of employment',
                                                        fontMedium,
                                                        ratio: 0.8,
                                                        space: 0,
                                                        fontSize: 9))
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 18,
                                                    alignment: Alignment.center,
                                                    child: _buildText(
                                                        ins3[29], font,
                                                        fontSize: 9))
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 18,
                                                    alignment: Alignment.center,
                                                    child: _buildText(
                                                        ins3[34], font,
                                                        fontSize: 9))
                                              ]),
                                              TableRow(children: [
                                                Container(
                                                    height: 18,
                                                    alignment: Alignment.center,
                                                    child: _buildText(
                                                        ins3[39], font,
                                                        fontSize: 9))
                                              ]),
                                            ])
                                      ])
                                    ])),
                          ]),
                      // Section 29
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText('29   代理人(法定代理人による申請の場合に記入)', font,
                                fontSize: 9),
                            SizedBox(width: 46),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Legal representative (in case of legal representative)',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '(1)氏 名', font, '        Name', fontMedium,
                                fontSize: 9, ratio: 0.8),
                            SizedBox(width: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 160,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins3[40], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 26),
                            _buildDoubleLineText(
                                '(2)本人との関係',
                                font,
                                '        Relationship with the applicant',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.8),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 92,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 3),
                                      child: _buildText(ins3[41], font,
                                          fontSize: 10))),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '(3)住 所', font, '        Address', fontMedium,
                                fontSize: 9, ratio: 0.8),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 406,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins3[42], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            _buildDoubleLineText(
                                '電話番号', font, 'Telephone No.', fontMedium,
                                fontSize: 9),
                            SizedBox(width: 14),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 150,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins3[43], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 28),
                            _buildDoubleLineText('携帯電話番号', font,
                                'Cellular phone No.', fontMedium,
                                fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 146,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child: _buildText(ins3[44], font,
                                        fontSize: 10),
                                  )),
                            ),
                          ]),
                      SizedBox(height: 30),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            _buildText(
                                '以上の記載内容は事実と相違ありません。\n申請人(法定代理人)の署名/申請書作成年月日',
                                fontMedium,
                                fontSize: 9),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: _buildText(
                                    'I hereby declare that the statement given above is true and correct.\nSignature of the applicant (legal representative) / Date of filling in this form',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: _buildText('', font, fontSize: 9),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: -4, left: 2),
                                    child: _buildDoubleLineText(
                                        '年', font, 'Year', fontMedium,
                                        fontSize: 9),
                                  ),
                                  SizedBox(width: 6),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: _buildText('', font, fontSize: 9),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: -4, left: 2),
                                    child: _buildDoubleLineText(
                                        '月', font, 'Month', fontMedium,
                                        fontSize: 9),
                                  ),
                                  SizedBox(width: 6),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: _buildText('', font, fontSize: 9),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: -4, left: 2),
                                    child: _buildDoubleLineText(
                                        '日', font, 'Day', fontMedium,
                                        fontSize: 9),
                                  ),
                                ])),
                      ),
                      Container(
                          width: 440,
                          margin: const EdgeInsets.only(left: 20),
                          decoration: _myUnderLine('#000000', width: .5),
                          child: _buildText(' ', font, fontSize: 9)),
                      Container(
                          width: 440,
                          margin: const EdgeInsets.only(left: 20, top: 1.2),
                          decoration: _myUnderLine('#000000', width: .5),
                          child: _buildText(' ', font, fontSize: 9)),
                      SizedBox(height: 15),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            _buildText('注    意', fontMedium, fontSize: 8),
                            SizedBox(width: 12),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildText(
                                    '申請書作成後申請までに記載内容に変更が生じた場合, 申請人(法定代理人)が変更箇所を訂正し, 署名すること。\n申請書作成年月日は申請人(法定代理人)が自署すること。',
                                    fontMedium,
                                    fontSize: 8)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 10),
                            _buildText('Attention', fontMedium, fontSize: 6),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildText(
                                    'In cases where descriptions have changed after filling in this application form up until submission of this application, the applicant (legal\nrepresentative) must correct the part concerned and sign their name.\nThe date of preparation of the application form must be written by the applicant (legal representative).',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText(' ※  取次者', font, fontSize: 9),
                            SizedBox(width: 30),
                            Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: _buildText(
                                    'Agent or other authorized person',
                                    fontMedium,
                                    fontSize: 7)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 16),
                            _buildDoubleLineText(
                                '(1)氏 名', font, '        Name', fontMedium,
                                fontSize: 9, ratio: 0.8),
                            SizedBox(width: 6),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 130,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 30, top: 4),
                                    child: _buildText(ins3[45], font,
                                        fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 26),
                            _buildDoubleLineText(
                                '(2)住 所', font, '        Address', fontMedium,
                                fontSize: 9, ratio: 0.8),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 200,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 3),
                                      child: _buildText(ins3[46], font,
                                          fontSize: 10))),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 16),
                            _buildDoubleLineText(
                                '(3)所属機関等(親族等については, 本人との関係)',
                                font,
                                '        Organization to which the agent belongs (in case of a relative, relationship with the applicant)',
                                fontMedium,
                                fontSize: 9,
                                ratio: 0.64),
                            SizedBox(width: 30),
                            _buildDoubleLineText('電話番号', font,
                                '       Telephone No.', fontMedium,
                                fontSize: 9, ratio: 0.8),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 30),
                            Container(
                                width: 260,
                                height: 18,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 4),
                                  child:
                                      _buildText(ins3[47], font, fontSize: 10),
                                )),
                            SizedBox(width: 20),
                            Container(
                                width: 160,
                                height: 18,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 4),
                                  child:
                                      _buildText(ins3[48], font, fontSize: 10),
                                )),
                          ]),
                      SizedBox(height: 10),
                    ]),
              ),
            ],
          );
        },
      ),
    );

    // ------- Page 5 -------
    List<String> ins4 = inputs[3];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 0.5 * cm,
            marginBottom: 0.5 * cm,
            marginLeft: 2.0 * cm,
            marginRight: 2.0 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Row(children: [
                            _buildText('所属機関等作成用 １', fontMedium, fontSize: 9),
                            SizedBox(width: 6),
                            _buildText('V (「特定技能(1号)」・「特定技能(2号)」)', fontMedium,
                                fontSize: 9),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: -6),
                        child: _buildText(
                            'For organization, part 1 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ii ) ") ',
                            fontMedium,
                            fontSize: 6),
                      ),
                    ]),
                    Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(left: 100, bottom: 0),
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: _buildText('在留資格変更用', font, fontSize: 9)),
                          _buildText('For change of status', fontMedium,
                              fontSize: 6),
                        ])),
                  ])),
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    border: Border.all(color: PdfColor.fromHex('#000000'))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Section 1
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '1   雇用している外国人の氏名',
                                font,
                                '\t\t\t\t\t\t\t\tName of foreign national being offered employment',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Container(
                                    width: 240,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins1[2], font,
                                        fontSize: 9))),
                          ]),
                      // Section 2
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText('2   特定技能雇用契約', font, fontSize: 8),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Employment contract for a specified skilled worker',
                                    fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(1)雇用契約期間',
                                font,
                                '\t\t\t\tPeriod of employment contract',
                                fontMedium,
                                fontSize: 8),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 154,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 7),
                                              child: _buildText(
                                                  'from', fontMedium,
                                                  fontSize: 6),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins4[0] == ''
                                                      ? ''
                                                      : ins4[0].split('/')[0],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins4[0] == ''
                                                      ? ''
                                                      : ins4[0].split('/')[1],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins4[0] == ''
                                                      ? ''
                                                      : ins4[0].split('/')[2],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 8),
                                            ),
                                          ]))),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildText('から', font, fontSize: 6)),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 154,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 7),
                                              child: _buildText(
                                                  'to', fontMedium,
                                                  fontSize: 6),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins4[1] == ''
                                                      ? ''
                                                      : ins4[1].split('/')[0],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins4[1] == ''
                                                      ? ''
                                                      : ins4[1].split('/')[1],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins4[1] == ''
                                                      ? ''
                                                      : ins4[1].split('/')[2],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 8),
                                            ),
                                          ]))),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildText('まで', font, fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(2)従事すべき業務の内容(複数ある場合は全て記入)',
                                font,
                                '\t\t\t\tContents of work to be engaged in (if there are several types of work, fill in all of the work)',
                                fontMedium,
                                fontSize: 8),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            _buildDoubleLineText('特定産業分野', font,
                                'Specified industrial field', fontMedium,
                                fontSize: 8),
                            Container(
                                width: 154,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[2], font, fontSize: 9)),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '業務区分', font, 'Work category', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 10),
                            Container(
                                width: 154,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[3], font, fontSize: 9)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 84),
                            Container(
                                width: 154,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[4], font, fontSize: 9)),
                            SizedBox(width: 58),
                            Container(
                                width: 154,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[5], font, fontSize: 9)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 84),
                            Container(
                                width: 154,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[6], font, fontSize: 9)),
                            SizedBox(width: 58),
                            Container(
                                width: 154,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[7], font, fontSize: 9)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '職種', font, 'Occupation', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 34),
                            _buildDoubleLineText(
                                '◯主たる職種を別紙「職種一覧」から選択して番号を記入(1つのみ)',
                                font,
                                'Select the main occupation from the Attachment: "a list of occupation", and fill in the number (select only one)',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 2),
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    height: 14,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(ins4[8], fontMedium,
                                        fontSize: 9)))
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 82),
                            _buildDoubleLineText(
                                '◯他に職種があれば別紙「職種一覧」から選択して番号を記入(複数選択可)',
                                font,
                                'If there is any other occupation, select from the Attachment: "a list of occupation", and fill in the number (more than one answer may be selected)',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.52),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: -2),
                                child: Container(
                                    width: 60,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child:
                                        _buildText(ins4[9], font, fontSize: 9)))
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 82),
                            _buildText('(注意)', font, fontSize: 8),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText('Attention', fontMedium,
                                    fontSize: 6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 82),
                            _buildDoubleLineText(
                                '※別紙「職種一覧」の1~43,45~50,55~81,100~112,999から選択してください。',
                                font,
                                'Please select from 1 to 43,from 45 to 50,from 55 to 81,from 100 to 112 and 999 on the attached "a list of occupation."',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                          ]),
                      // Section 3
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(3)所定労働時間(週平均)',
                                font,
                                '\t\t\t\t\t\t\tPrescribed working hours (weekly average)',
                                fontMedium,
                                fontSize: 8),
                            SizedBox(width: 20),
                            Container(
                                width: 40,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[10], font, fontSize: 9)),
                            _buildDoubleLineText(
                                '時間', font, 'hours', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '所定労働時間(月平均)',
                                font,
                                'Prescribed working hours (monthly average)',
                                fontMedium,
                                fontSize: 8),
                            SizedBox(width: 6),
                            Container(
                                width: 40,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[11], font, fontSize: 9)),
                            _buildDoubleLineText(
                                '時間', font, 'hours', fontMedium,
                                fontSize: 8),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '所定労働時間が通常の労働者の所定労働時間と同等であることの有無',
                                font,
                                'Are the prescribed working hours equivalent to the prescribed working hours of regular workers?',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 152),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[12] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 8, space: 0),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[12] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(4)月額報酬',
                                font,
                                '\t\t\t\t\t\t\tMonthly remuneration',
                                fontMedium,
                                fontSize: 8),
                            SizedBox(width: 4),
                            _buildDoubleLineText(
                                '※ 各種手当(通勤・住宅・扶養等)・実費弁償の性格を有するものを除く。',
                                font,
                                'Excludes various types of allowances (commuting,housing,dependents,etc.) and personal expenses.',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.8,
                                space: -1),
                            SizedBox(width: 16),
                            Container(
                                width: 80,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[13], font, fontSize: 9)),
                            _buildDoubleLineText('円', font, 'Yen', fontMedium,
                                fontSize: 8),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '基本給の時間換算額',
                                font,
                                'Time converted amount of basic salary',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                            SizedBox(width: 10),
                            Container(
                                width: 80,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[14], font, fontSize: 9)),
                            _buildDoubleLineText('円', font, 'Yen', fontMedium,
                                fontSize: 8),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '同等の業務に従事する日本人の月額報酬',
                                font,
                                'Monthly remuneration of Japanese national engaging in the same type of work',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                            SizedBox(width: 10),
                            Container(
                                width: 80,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child: _buildText(ins4[15], font, fontSize: 9)),
                            _buildDoubleLineText('円', font, 'Yen', fontMedium,
                                fontSize: 8),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '報酬の額が日本人が従事する場合の報酬の額と同等以上であることの有無',
                                font,
                                'Will the foreign national receive an equal or greater amount of remuneration than a Japanese national would receive for comparable work?',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 84),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[16] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 8, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[16] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 5
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(5)報酬の支払方法',
                                font,
                                '\t\t\t\t\t\t\tPayment method of remuneration',
                                fontMedium,
                                fontSize: 8),
                            SizedBox(width: 50),
                            Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Checkbox(
                                  name: '',
                                  value: ins4[17] == '1' ? true : false,
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: PdfColor.fromHex('#000000'),
                                    width: 0.5,
                                  )),
                                  activeColor: PdfColor.fromHex('#000000'),
                                )),
                            _buildDoubleLineText(
                                ' 通貨払', font, 'Paid in cash', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 60),
                            Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: Checkbox(
                                  name: '',
                                  value: ins4[17] == '2' ? true : false,
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                    color: PdfColor.fromHex('#000000'),
                                    width: 0.5,
                                  )),
                                  activeColor: PdfColor.fromHex('#000000'),
                                )),
                            _buildDoubleLineText(' 口座振込み', font,
                                'Paid into a bank account', fontMedium,
                                fontSize: 8),
                          ]),
                      // Section 6
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(6)外国人であることを理由として日本人と異なった待遇としている事項の有無',
                                font,
                                '\t\t\t\t\t\t\tAre any matters stipulated related to treatment that differ from that given to a Japanese national due to the applicant being a foreign national?',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins4[18] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 8, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                  width: 364,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins4[19], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ') ・ ', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins4[18] == '2' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                          ]),
                      // Secttion 7
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(7)外国人が一時帰国を希望した場合には, 必要な有給休暇を取得させるものとしていることの有無',
                                font,
                                '\t\t\t\t\t\t\tWill the foreign national be given the necessary paid holidays in the event of wanting to return temporarily to his/her home country?',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 64),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[20] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 8, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[20] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Secttion 8
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(8)雇用関係につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合していることの有無(当該基準が定められている場合\n\t\t\t\tに記入)',
                                font,
                                '\t\t\t\t\t\t\tAre the criteria, which are stipulated in a public notice in consideration of circumstances specific to the specified industrial field in\n\t\t\t\t\t\t\tterms of the employment relations, being met? (Fill in this section if such criteria are stipulated.)',
                                fontMedium,
                                fontSize: 7.3,
                                ratio: 0.7),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: -28),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[21] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, left: -18),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 8, space: 0),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[21] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Secttion 9
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(9)外国人が特定技能雇用契約終了後の帰国に要する旅費を負担することができないときは,当該旅費を負担するとともに,出国が円滑に\n\t\t\t\tなされるよう必要な措置を講ずることとしていることの有無',
                                font,
                                '\t\t\t\t\t\t\tIf a foreign national cannot afford the travel expenses for return to his/her home country after the end of the employment contract for specified skilled workers,\n\t\t\t\t\t\t\twill the organization of affiliation pay for the travel expenses and take necessary measures to ensure smooth departure?',
                                fontMedium,
                                fontSize: 7.3,
                                ratio: 0.7),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: -20),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[22] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, left: -10),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 8, space: 0),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: -6),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[22] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Secttion 10
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(10)外国人の健康の状況その他の生活の状況を把握するために必要な措置を講ずることとしていることの有無',
                                font,
                                '\t\t\t\t\t\t\t\tIs the organization of affiliation taking the necessary measures to check the state of the foreign national’s health and other living conditions?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 68),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[23] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 8, space: 0),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[23] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Secttion 11
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(11)外国人の適正な在留に資するために必要な事項につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合しているこ\n\t\t\t\tとの有無(当該基準が定められている場合に記入)',
                                font,
                                '\t\t\t\t\t\t\tAre the criteria, which are stipulated in a public notice in consideration of circumstances specific to the specified industrial field in terms of the matters\n\t\t\t\t\t\t\tnecessary to ensure the proper residence of the foreign nationals, being met? (Fill in this section if such criteria are stipulated.)',
                                fontMedium,
                                fontSize: 7.3,
                                ratio: 0.7),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: -20),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[24] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 12, left: -10),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 8, space: 0),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: -6),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins4[24] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Secttion 12
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(12)派遣先(労働者派遣の対象とする場合に記入)',
                                font,
                                '\t\t\t\t\t\t\tDispatch site (Fill in this section if the foreign national may be sent out for worker dispatch)',
                                fontMedium,
                                fontSize: 8),
                          ]),
                      SizedBox(height: 2),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText('氏名又は名称', font,
                                'Name of person or\norganization', fontMedium,
                                fontSize: 7),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 154,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins4[25], font,
                                        fontSize: 9))),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '法人番号(13桁)',
                                font,
                                'Corporation no. (combination of\n13 numbers and letters)',
                                fontMedium,
                                fontSize: 7),
                            SizedBox(width: 2),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][0]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][1]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][2]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][3]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][4]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][5]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][6]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][7]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][8]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][9]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][10]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][11]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[26].length == 13
                                            ? ins4[26][12]
                                            : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildText('雇用保険適用事業所番号(11桁)※非該当事業所は記入省略', font,
                                fontSize: 7),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Employment insurance application office number (11 digits) *If not applicable, it should be omitted.',
                                    fontMedium,
                                    fontSize: 4.6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][0]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][1]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][2]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][3]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 3),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText('-', font, fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][4]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][5]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][6]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][7]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][8]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][9]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 3),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText('-', font, fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[27].length == 11
                                            ? ins4[27][10]
                                            : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '住所(所在地)', font, 'Address', fontMedium,
                                fontSize: 8, ratio: 0.7),
                            SizedBox(width: 4),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 180,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins4[28], font, fontSize: 8),
                                  )),
                            ),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '電話番号', font, 'Telephone No.', fontMedium,
                                fontSize: 8, ratio: 0.6),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 110,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins4[29], font, fontSize: 8),
                                  )),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText('代表者の氏名', font,
                                'Name of the representative', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 140,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins4[30], font, fontSize: 8),
                                  )),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '派遣期間', font, 'Period of dispatch', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 154,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 7),
                                              child: _buildText(
                                                  'from', fontMedium,
                                                  fontSize: 6),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[31] == ''
                                                      ? ''
                                                      : ins4[31].split('/')[0],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[31] == ''
                                                      ? ''
                                                      : ins4[31].split('/')[1],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[31] == ''
                                                      ? ''
                                                      : ins4[31].split('/')[2],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 8),
                                            ),
                                          ]))),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: _buildText('から', font, fontSize: 6)),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 154,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 7),
                                              child: _buildText(
                                                  'to', fontMedium,
                                                  fontSize: 6),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[32] == ''
                                                      ? ''
                                                      : ins4[32].split('/')[0],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[32] == ''
                                                      ? ''
                                                      : ins4[32].split('/')[1],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[32] == ''
                                                      ? ''
                                                      : ins4[32].split('/')[2],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 8),
                                            ),
                                          ]))),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 2),
                                child: _buildText('まで', font, fontSize: 6)),
                          ]),
                      // Section 13
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(13)職業紹介事業者(特定技能雇用契約の成立をあっせんする職業紹介事業者がある場合に記入)',
                                font,
                                '\t\t\t\t\t\t\tEmployment placement service provider (fill in this section if there is an employment placement service provider that arranges the conclusion of employment contracts for specified skilled workers)',
                                fontMedium,
                                fontSize: 7),
                          ]),
                      SizedBox(height: 2),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText('氏名又は名称', font,
                                'Name of person or\norganization', fontMedium,
                                fontSize: 7),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 154,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins4[33], font,
                                        fontSize: 9))),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '法人番号(13桁)',
                                font,
                                'Corporation no. (combination of\n13 numbers and letters)',
                                fontMedium,
                                fontSize: 7),
                            SizedBox(width: 2),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][0]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][1]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][2]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][3]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][4]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][5]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][6]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][7]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][8]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][9]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][10]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][11]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[34].length == 13
                                            ? ins4[34][12]
                                            : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildText('雇用保険適用事業所番号(11桁)※非該当事業所は記入省略', font,
                                fontSize: 7),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Employment insurance application office number (11 digits) *If not applicable, it should be omitted.',
                                    fontMedium,
                                    fontSize: 4.6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][0]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][1]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][2]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][3]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 3),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText('-', font, fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][4]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][5]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][6]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][7]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][8]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][9]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 3),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText('-', font, fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins4[35].length == 11
                                            ? ins4[35][10]
                                            : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '住所(所在地)', font, 'Address', fontMedium,
                                fontSize: 8, ratio: 0.7),
                            SizedBox(width: 12),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 180,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins4[36], font, fontSize: 8),
                                  )),
                            ),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '電話番号', font, 'Telephone No.', fontMedium,
                                fontSize: 8, ratio: 0.6),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 110,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins4[37], font, fontSize: 8),
                                  )),
                            ),
                          ]),

                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText('許可・届出番号', font,
                                'Permission / notification no.', fontMedium,
                                fontSize: 8, ratio: 0.54),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Container(
                                  width: 100,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration: _myUnderLine('#000000', width: 1),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: _buildText(ins4[38], font,
                                          fontSize: 7))),
                            ),
                            _buildDoubleLineText(
                                '受理年月日', font, 'Date of receipt', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 14),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 154,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration: _myUnderLine('#000000', width: 1),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[39] == ''
                                                      ? ''
                                                      : ins4[39].split('/')[0],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[39] == ''
                                                      ? ''
                                                      : ins4[39].split('/')[1],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 8),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10, top: 2),
                                              child: _buildText(
                                                  ins4[39] == ''
                                                      ? ''
                                                      : ins4[39].split('/')[2],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -2, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 8),
                                            ),
                                          ]))),
                            ),
                          ]),
                      SizedBox(height: 20),
                    ]),
              ),
            ],
          );
        },
      ),
    );

    // ------- Page 6 -------
    List<String> ins5 = inputs[4];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 0.5 * cm,
            marginBottom: 0.5 * cm,
            marginLeft: 2.0 * cm,
            marginRight: 2.0 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Row(children: [
                            _buildText('所属機関等作成用 2', fontMedium, fontSize: 9),
                            SizedBox(width: 6),
                            _buildText('V (「特定技能(1号)」・「特定技能(2号)」)', fontMedium,
                                fontSize: 9),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: -2),
                        child: _buildText(
                            'For organization, part 2 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ii ) ") ',
                            fontMedium,
                            fontSize: 6),
                      ),
                    ]),
                    Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(left: 100, bottom: 0),
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: _buildText('在留資格変更用', font, fontSize: 9)),
                          _buildText('For change of status', fontMedium,
                              fontSize: 6),
                        ])),
                  ])),
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    border: Border.all(color: PdfColor.fromHex('#000000'))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Section 14
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(14)取次機関(職業紹介事業者があっせんを行うに際し, 情報の取次ぎを行う者がある場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\tIntermediary organization (fill in this section if there is a person who mediates information at the time of an employment placement service provider acting as an agent)',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText('氏名又は名称', font,
                                'Name of person or organization', fontMedium,
                                fontSize: 8, ratio: 0.6),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: Container(
                                    width: 180,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins5[0], font,
                                        fontSize: 9))),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '住所(所在地)', font, 'Address', fontMedium,
                                fontSize: 8, ratio: 0.7),
                            SizedBox(width: 12),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 200,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins5[1], font, fontSize: 8),
                                  )),
                            ),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '電話番号', font, 'Telephone No.', fontMedium,
                                fontSize: 8, ratio: 0.6),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 110,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins5[2], font, fontSize: 8),
                                  )),
                            ),
                          ]),
                      // Section III
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText('3   特定技能所属機関', font, fontSize: 8),
                            SizedBox(width: 20),
                            Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: _buildText(
                                    'Organization of affiliation of the specified skilled worker',
                                    fontMedium,
                                    fontSize: 5.6)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(1)氏名又は名称',
                                font,
                                '\t\t\t\t\t\tName of person or\n\t\t\t\t\t\torganization',
                                fontMedium,
                                fontSize: 7),
                            SizedBox(width: 10),
                            Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 2, right: 2),
                                child: Container(
                                    width: 154,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins5[3], font,
                                        fontSize: 9))),
                            _buildDoubleLineText(
                                '(2)法人番号(13桁)',
                                font,
                                'Corporation no. (combination of 13\nnumbers and letters)',
                                fontMedium,
                                fontSize: 7),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][0] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][1] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][2] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][3] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][4] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][5] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][6] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][7] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][8] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][9] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][10] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][11] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[4].length == 13 ? ins5[4][12] : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            _buildText('※本店又は主たる事務所のものを記入', font, fontSize: 6),
                            SizedBox(width: 2),
                            Padding(
                                padding: const EdgeInsets.only(top: 1),
                                child: _buildText(
                                    'Fill in the name of head office or principal place of business',
                                    fontMedium,
                                    fontSize: 5)),
                          ]),
                      SizedBox(height: 4),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(3)雇用保険適用事業所番号(11桁)',
                                font,
                                '\t\t\t\t\tEmployment insurance application office number (11 digits) *If not applicable, it should be omitted.',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.5,
                                space: 0),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: -64, top: 2),
                                child: _buildDoubleLineText(
                                    '※非該当事業所は記入省略', font, '', fontMedium,
                                    fontSize: 5)),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][0] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][1] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][2] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][3] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 3),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText('-', font, fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][4] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][5] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][6] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][7] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][8] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][9] : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 3),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText('-', font, fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins5[5].length == 11 ? ins5[5][10] : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      SizedBox(height: 4),
                      // Section 3.4
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText('(4)業種', font,
                                '\t\t\t\t\t\tBusiness type', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '◯主たる業種を別紙「業種一覧」から選択して番号を記入(1つのみ)',
                                font,
                                '\t\t\t\t\tSelect the main business type from the attached sheet "a list of business type " and write the corresponding number (select only one)',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.62),
                            SizedBox(width: 30),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 2),
                                child: Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    height: 14,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(ins5[6], fontMedium,
                                        fontSize: 9)))
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 82),
                            _buildDoubleLineText(
                                '◯他に業種があれば別紙「業種一覧」から選択して番号を記入(複数選択可)',
                                font,
                                '\t\t\t\t\tIf there are another other business types, select from the attached sheet "a list of business type "\n\t\t\t\t\tand write the corresponding number (multiple answers possible)',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.62),
                            SizedBox(width: 20),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: -2),
                                child: Container(
                                    width: 60,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child:
                                        _buildText(ins5[7], font, fontSize: 9)))
                          ]),
                      // Section 3.5
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText('(5)住所(所在地)', font, fontSize: 8),
                            SizedBox(width: 6),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: _buildText('※本店又は主たる事務所のものを記入', font,
                                  fontSize: 6),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                '\t\t\t\t\t\tAddress of person or organization',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 6),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: _buildText(
                                  '※Fill in the address of head office or principal place of business',
                                  fontMedium,
                                  fontSize: 5),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 240,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins5[8], font, fontSize: 10),
                                  )),
                            ),
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '電話番号', font, 'Telephone No.', fontMedium,
                                fontSize: 8, ratio: 0.6),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 110,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 4),
                                    child:
                                        _buildText(ins5[9], font, fontSize: 10),
                                  )),
                            ),
                          ]),
                      // Section 3.6 - 3.7
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText('(6)資本金', font,
                                '\t\t\t\t\t\t\tCapital', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 20),
                            Container(
                                width: 100,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child:
                                    _buildText(ins5[10], font, fontSize: 10)),
                            _buildDoubleLineText('円', font, 'Yen', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '(7)年間売上金額(直近年度)',
                                font,
                                '\t\t\t\t\t\t\tAnnual sales (latest year)',
                                fontMedium,
                                fontSize: 8),
                            SizedBox(width: 20),
                            Container(
                                width: 100,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child:
                                    _buildText(ins5[11], font, fontSize: 10)),
                            _buildDoubleLineText('円', font, 'Yen', fontMedium,
                                fontSize: 8),
                          ]),
                      // Section 3.8 - 3.9
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(8)常勤職員数',
                                font,
                                '\t\t\t\t\t\t\tNumber of full-time employees',
                                fontMedium,
                                fontSize: 8),
                            SizedBox(width: 20),
                            Container(
                                width: 60,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child:
                                    _buildText(ins5[12], font, fontSize: 10)),
                            _buildDoubleLineText('名', font, '', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 20),
                            _buildDoubleLineText(
                                '(9)代表者の氏名',
                                font,
                                '\t\t\t\t\t\t\tName of the representative',
                                fontMedium,
                                fontSize: 8),
                            SizedBox(width: 20),
                            Container(
                                width: 158,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child:
                                    _buildText(ins5[13], font, fontSize: 10)),
                          ]),
                      // Section 3.10
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(10)勤務させる事業所名',
                                font,
                                '\t\t\t\t\t\t\tName of place of business where\n\t\t\t\t\t\t\tforeign national is to work',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.6),
                            SizedBox(width: 10),
                            Container(
                                width: 130,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child:
                                    _buildText(ins5[14], font, fontSize: 10)),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '所在地', font, 'Address', fontMedium,
                                fontSize: 8),
                            SizedBox(width: 10),
                            Container(
                                width: 170,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                decoration: _myUnderLine('#000000', width: 0.5),
                                child:
                                    _buildText(ins5[15], font, fontSize: 10)),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '健康保険及び厚生年金保険の適用事業所であることの有無',
                                font,
                                'Does the place of business apply health insurance and employees pension insurance?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.8),
                            SizedBox(width: 30),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 68),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins5[16] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 8, space: 0),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins5[16] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            _buildDoubleLineText(
                                '労災保険及び雇用保険の適用事業所であることの有無',
                                font,
                                'Does the place of business apply industrial accident insurance and employment insurance?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.8),
                            SizedBox(width: 14),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 68),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins5[17] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 8, space: 0),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 8, space: 0),
                                  _buildText(ins5[17] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            _buildDoubleLineText('\t労働保険番号', font,
                                'Labor insurance number', fontMedium,
                                fontSize: 8, ratio: 0.6),
                            SizedBox(width: 20),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][0]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][1]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(),
                                    alignment: Alignment.center,
                                    child:
                                        _buildText('-', font, fontSize: 12))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000'),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][2]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(),
                                    alignment: Alignment.center,
                                    child:
                                        _buildText('-', font, fontSize: 12))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][3]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][4]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(),
                                    alignment: Alignment.center,
                                    child:
                                        _buildText('-', font, fontSize: 12))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][5]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5, leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][6]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5, leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][7]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5, leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][8]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5, leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][9]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][10]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(),
                                    alignment: Alignment.center,
                                    child:
                                        _buildText('-', font, fontSize: 12))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][11]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5, leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][12]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][13]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(),
                                    alignment: Alignment.center,
                                    child:
                                        _buildText('-', font, fontSize: 12))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][14]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5, leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][15]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        rightWidth: 0.5, leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][16]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBoxAllSide('#000000',
                                        leftWidth: 0.5),
                                    child: _buildText(
                                        ins5[18].length == 18
                                            ? ins5[18][17]
                                            : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 26, top: -6),
                          child: _buildDoubleLineText(
                              '(末尾4桁は割り振られている場合のみ記入)',
                              font,
                              '(Enter the last four digits only when they have been allocated.)',
                              fontMedium,
                              fontSize: 6,
                              ratio: 0.7,
                              space: 0),
                        )
                      ]),
                      // Section 3.11
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(11)労働,社会保険及び租税に関する法令の規定に違反したことの有無',
                              font,
                              '\t\t\t\t\t\t\tHas the organization ever been in violation of the provisions of laws and regulations concerning labor, social insurance or tax?',
                              fontMedium,
                              fontSize: 8,
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[19] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 8, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 374,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[20], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[19] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.12
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(12)特定技能雇用契約の締結の日前1年以内又は締結の日以後に,外国人が従事する業務と同種の業務に従事していた労働者を非自発\n\t\t\t\t\t\t\t的に離職させたことの有無',
                                font,
                                '\t\t\t\t\t\t\t\tHas a worker who engaged in work of the same type as that which the foreign national is to engage in ever been forced to leave within one year prior to the date of the foreign national entering into',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.68),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[21] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText('(内容・理由:', font,
                                '(Details / Reason:', fontMedium,
                                fontSize: 8, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 348,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[22], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[21] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.13
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(13)特定技能雇用契約の締結の日前1年以内又は締結の日以後に,特定技能所属機関の責めに帰すべき事由により外国人の行方不明者\n\t\t\t\t\t\tを発生させたことの有無',
                                font,
                                '\t\t\t\t\t\t\t\tHas the organization ever caused a foreign national to disappear due to a cause attributable to the fault of the organization of affiliation of the specified skilled worker within one year\n\t\t\t\t\t\t\t\tprior to the date of the foreign national entering into the employment contract for specified skilled workers or after the date of the foreign national entering into such contract?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.68),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[23] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 8, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 374,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[24], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[23] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.14
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(14)特定技能所属機関・その役員・支援責任者・支援担当者が法令に違反して刑に処せられたことの有無',
                                font,
                                '\t\t\t\t\t\t\t\tHas the organization of affiliation of the specified skilled worker or its officer, support manager or support staff ever been sentenced to a criminal punishment due to a violation of laws and regulations?',
                                fontMedium,
                                fontSize: 8,
                                ratio: 0.56),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[25] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容・該当者名:',
                                font,
                                '(Details/Name of applicable person:',
                                fontMedium,
                                fontSize: 8,
                                space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[26], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[25] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.15
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(15)特定技能所属機関・その役員・支援責任者・支援担当者が特定技能雇用契約の適正な履行に影響する精神の機能の障害を有するこ\n\t\t\t\t\t\tとの有無',
                                font,
                                '\t\t\t\t\t\t\t\tDoes the organization of affiliation of the specified skilled worker, its officer, support manager or support staff have a mental disability which will have an impact on proper performance of the\n\t\t\t\t\t\t\t\temployment contract for specified skilled workers?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.68),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[27] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容・該当者名:',
                                font,
                                '(Details/Name of applicable person:',
                                fontMedium,
                                fontSize: 8,
                                space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[28], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[27] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.16
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(16)特定技能所属機関・その役員・支援責任者・支援担当者が破産手続開始の決定を受けて復権を得ないことの有無',
                                font,
                                '\t\t\t\t\t\t\t\tHas the organization of affiliation of the specified skilled worker, its officer, support manager or support staff become subject to the commencement of bankruptcy procedures and yet to have its rights restored?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.6),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[29] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容・該当者名:',
                                font,
                                '(Details/Name of applicable person:',
                                fontMedium,
                                fontSize: 8,
                                space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[30], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[29] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.17
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(17)特定技能所属機関・その役員・支援責任者・支援担当者が技能実習法第16条第1項の規定により実習認定を取り消されたことの有無',
                                font,
                                '\t\t\t\t\t\t\t\tHas the organization of affiliation of the specified skilled worker, its officer, support manager or support staff ever had its accreditation of the training revoked as provided for in Article 16, paragraph (1) of the Technical Intern\n\t\t\t\t\t\t\t\tTraining Act?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.58),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[31] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容・該当者名:',
                                font,
                                '(Details/Name of applicable person:',
                                fontMedium,
                                fontSize: 8,
                                space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[32], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[31] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.18
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(18)特定技能所属機関・その役員・支援責任者・支援担当者が技能実習法第16条第1項の規定により実習認定を取り消された法人の役員',
                                font,
                                '\t\t\t\t\t\t\t\tHas the organization of affiliation of the specified skilled worker, its officer, support manager or support staff ever been an officer of a corporation that has had its accreditation of training revoked as provided for in Article 16,\n\t\t\t\t\t\t\t\tparagraph (1) of the Technical Intern Training Act?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.58),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[33] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容・該当者名:',
                                font,
                                '(Details/Name of applicable person:',
                                fontMedium,
                                fontSize: 8,
                                space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[34], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[33] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.19
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(19)特定技能所属機関・その役員・支援責任者・支援担当者が特定技能雇用契約の締結の日前5年以内又は締結の日以後に,出入国又\n\t\t\t\t\t\tは労働に関する法令に関し不正又は著しく不当な行為をしたことの有無',
                                font,
                                '\t\t\t\t\t\t\t\tHas the organization of affiliation of the specified skilled worker, its officer, support manager or support staff ever committed a wrongful or seriously unjust act in relation to immigration or labor-related laws or regulations within\n\t\t\t\t\t\t\t\tfive years of the date of entering into the employment contract for specified skilled workers or after the date of entering into such contract?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.58),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[35] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容・該当者名:',
                                font,
                                '(Details/Name of applicable person:',
                                fontMedium,
                                fontSize: 8,
                                space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[36], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[35] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.20
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(20)特定技能所属機関・その役員・支援責任者・支援担当者が暴力団員であること又は5年以内に暴力団員であったことの有無',
                                font,
                                '\t\t\t\t\t\t\t\tIs the organization of affiliation of the specified skilled worker, its officer, support manager or support staff currently an organized crime member or was it formerly an organized crime member within the past five years?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.58),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[37] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容・該当者名:',
                                font,
                                '(Details/Name of applicable person:',
                                fontMedium,
                                fontSize: 8,
                                space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[38], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[37] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.21
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(21)特定技能所属機関・その役員・支援責任者・支援担当者の法定代理人(法人である場合はその役員)が(14)から(20)に該当することの有\n\t\t\t\t\t\t無(特定技能所属機関・その役員・支援責任者・支援担当者が営業に関し成年者と同一の行為能力を有しない未成年者である場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\tDoes the statutory agent (its officer in the case of a corporation) of the organization of affiliation of the specified skilled worker, its officer, support manager or support staff fall under any of (14) to\n\t\t\t\t\t\t\t\t(20)? (Fill in this section if the organization of affiliation of the specified skilled worker, its officer, support manager or support staff is a minor who does not have the same capacity to act as a person\n\t\t\t\t\t\t\t\twho has reached the age of majority in relation to business.)',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.58),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 8, space: 0),
                              _buildText(ins5[39] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容・該当者名:',
                                font,
                                '(Details/Name of applicable person:',
                                fontMedium,
                                fontSize: 8,
                                space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 306,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins5[40], fontMedium,
                                                fontSize: 10),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 8, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 8, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins5[39] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),

                      SizedBox(height: 10),
                    ]),
              ),
            ],
          );
        },
      ),
    );

    // ------- Page 7 -------
    List<String> ins6 = inputs[5];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 0.5 * cm,
            marginBottom: 0.5 * cm,
            marginLeft: 1.5 * cm,
            marginRight: 2.0 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Row(children: [
                            _buildText('所属機関等作成用 3', fontMedium, fontSize: 9),
                            SizedBox(width: 6),
                            _buildText('V (「特定技能(1号)」・「特定技能(2号)」)', fontMedium,
                                fontSize: 9),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(left: -2),
                        child: _buildText(
                            'For organization, part 3 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ii ) ") ',
                            fontMedium,
                            fontSize: 6),
                      ),
                    ]),
                    Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(left: 100, bottom: 0),
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: _buildText('在留資格変更用', font, fontSize: 9)),
                          _buildText('For change of status', fontMedium,
                              fontSize: 6),
                        ])),
                  ])),
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    border: Border.all(color: PdfColor.fromHex('#000000'))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Section 3.22
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(22)暴力団員又は5年以内に暴力団員であった者がその事業活動を支配する者であることの有無',
                                font,
                                '\t\t\t\t\t\t\t\t\tIs an organized crime member or a person who was formerly an organized crime member within the past five years controlling the business activities of the organization of affiliation of specified skilled workers?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.64),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 7, space: 0),
                              _buildText(ins6[0] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 384,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins6[1], fontMedium,
                                                fontSize: 9),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 7, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 7, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins6[0] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.23
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(23)外国人の活動内容に関する文書を作成し,活動をさせる事務所に特定技能雇用契約終了の日から1年以上備えて置くこととしているこ\n\t\t\t\t\tとの有無',
                                font,
                                '\t\t\t\t\t\t\tIs the organization taking measures to prepare documents on the contents of the activities of the foreign national, and to keep them at the place of business where the\n\t\t\t\t\t\t\tforeign national is engaging in the activities for at least one year from the date of termination of the contract?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[2] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 0),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 7, space: 0),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[2] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 3.24
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(24)特定技能雇用契約に係る保証金の徴収その他財産管理又は違約金等の支払契約があることを認識して特定技能雇用契約を締結し\n\t\t\t\t\tていることの有無',
                                font,
                                '\t\t\t\t\t\t\t\t\tHas the organization entered into an employment contract for specified skilled workers knowing about the existence of an agreement to collect a deposit or to control property\n\t\t\t\t\t\t\t\t\tor to demand payment of penalties pertaining to the employment contract for specified skilled workers?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 7, space: 0),
                              _buildText(ins6[3] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 384,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins6[4], fontMedium,
                                                fontSize: 9),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 7, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 7, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins6[3] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.25
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(25)特定技能雇用契約の不履行について違約金等の支払契約を締結していることの有無',
                                font,
                                '\t\t\t\t\t\t\t\t\tHas the organization entered into an agreement on the payment of penalties, etc. with regard to non-performance of the employment contract for specified skilled workers?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 7, space: 0),
                              _buildText(ins6[5] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 384,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins6[6], fontMedium,
                                                fontSize: 9),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 7, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 7, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins6[5] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.26
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(26)1号特定技能外国人支援に要する費用について, 直接又は間接に外国人に負担させないこととしていることの有無(申請人が「特定技能1\n\t\t\t\t\t号」での在留を希望する場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\tHas the organization established practical measures to ensure the foreign national is not being made to pay either directly or indirectly for the costs required for support for Specified\n\t\t\t\t\t\t\t\t\tSkilled Worker (i)? (Fill in this section if the applicant wishes to enter Japan under the status of residence of "Specified Skilled Worker (i)".)',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.64),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[7] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(top: 12, left: 0),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 7, space: 0),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[7] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                '(以下(27), (28)は外国人を労働者派遣の対象とする場合に記入)', font,
                                fontSize: 6),
                            SizedBox(width: 20),
                            Padding(
                                padding: const EdgeInsets.only(top: 1),
                                child: _buildText(
                                    '(Fill in sections (27) and (28) if the foreign national is likely to be sent as a dispatch worker.)',
                                    fontMedium,
                                    fontSize: 5)),
                          ]),
                      // Section 27
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText('(27)次のいずれかに該当することの有無', font,
                                '\t\t\t\t\t\t\t\t\t\t(有の場合は該当するものを選択)', font,
                                fontSize: 7, ratio: 1),
                            SizedBox(width: 30),
                            _buildDoubleLineText(
                                'Whether it falls under any of the following cases:',
                                fontMedium,
                                '(If "Yes", choose the corresponding item)',
                                fontMedium,
                                fontSize: 6,
                                ratio: 1,
                                space: 0),
                            SizedBox(width: 134),
                            Padding(
                                padding: const EdgeInsets.only(left: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[8] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: _buildDoubleLineText(
                                  '・', font, '/ ', fontMedium,
                                  fontSize: 7, space: 0),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[8] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Checkbox(
                                name: '',
                                value: ins6[9] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '①派遣先において従事する業務の属する特定産業分野に係る業務又はこれに関連する業務を行っていること',
                                font,
                                'A dispatch site conducting work pertaining to a specified industrial field to which the work the foreign national is to engage in at the dispatch site belongs or related work',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 42),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 384,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins6[10], fontMedium,
                                                fontSize: 9),
                                          ]))),
                            ),
                            _buildDoubleLineText(')', font, ')', fontMedium,
                                fontSize: 7, space: 0),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Checkbox(
                                name: '',
                                value: ins6[11] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '②地方公共団体又は1に該当する者が資本金の過半数を出資していること',
                                font,
                                'A local government or a person who falls under 1 who has invested a majority of the stated capital',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 42),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 384,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins6[12], fontMedium,
                                                fontSize: 9),
                                          ]))),
                            ),
                            _buildDoubleLineText(')', font, ')', fontMedium,
                                fontSize: 7, space: 0),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Checkbox(
                                name: '',
                                value: ins6[13] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '③地方公共団体又は1に該当する者が業務執行に実質的に関与していること',
                                font,
                                'A local government or a person who falls under 1 who is substantially involved in execution of the business',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 42),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 384,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins6[14], fontMedium,
                                                fontSize: 9),
                                          ]))),
                            ),
                            _buildDoubleLineText(')', font, ')', fontMedium,
                                fontSize: 7, space: 0),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Checkbox(
                                name: '',
                                value: ins6[15] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '④派遣先において従事する業務の属する分野が農業である場合であって国家戦略特別区域法第16条の5第1項に規定する特定機\n関であること',
                                font,
                                'The field of work the foreign national is to engage in at the dispatch site is agriculture, and the organization is the specified organization prescribed in Article 16-5, paragraph (1) of\nthe National Strategy Special Zone Act.',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                          ]),
                      // Section 3.28
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(28)労働者派遣をすることとしている派遣先が(11)から(22)に該当していることの有無',
                                font,
                                '\t\t\t\t\t\t\t\t\tWill the organization be sending dispatch workers to a dispatch site that comes under (11) to (22) above?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.7),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 7, space: 0),
                              _buildText(ins6[16] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 384,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins6[17], fontMedium,
                                                fontSize: 9),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 7, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 7, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins6[16] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.29
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText('(29)労災保険加入等の措置の有無', font, fontSize: 7),
                            SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.only(top: 2),
                              child: _buildText(
                                  'Have measures been taken for coverage of industrial accident insurance, etc.?',
                                  fontMedium,
                                  fontSize: 5),
                            ),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 7, space: 0),
                              _buildText(ins6[18] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 384,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins6[19], fontMedium,
                                                fontSize: 9),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 7, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 7, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins6[18] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Secttion 3.30
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(30)特定技能雇用契約を継続して履行する体制が適切に整備されていることの有無',
                                font,
                                '\t\t\t\t\t\t\tIs there an appropriate structure in place to ensure continuous implementation of the employment contract for specified skilled workers?',
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.6),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 100),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[20] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 7, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[20] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 3.31
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(31)外国人の報酬を, 当該外国人の指定する銀行その他の金融機関に対する振込み又は現実に支払われた額を確認できる方法によって\n\t\t\t\t\t支払われることとしており, かつ, 後者の場合には, 出入国在留管理庁長官に報酬の支払を裏付ける客観的な資料を提出し, その確認\n\t\t\t\t\tを受けることとしていることの有無',
                                font,
                                """\t\t\t\t\t\t\t\t\tWill the foreign national's remuneration be paid by wire transfer to the account of a bank or other financial institution specified by the foreign national or using a method where the actual amount\n\t\t\t\t\t\t\t\t\tthat was paid can be confirmed, and in the latter case, will objective materials proving the payment of remuneration be submitted to the Commissioner of the Immigration Services Agency in order\n\t\t\t\t\t\t\t\t\tto be checked?""",
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.64),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 20, left: 6),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[21] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 7, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[21] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 3.32
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(32)特定技能雇用契約の適正な履行の確保につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合していることの有無\n\t\t\t\t\t(当該基準が定められている場合に記入)',
                                font,
                                """\t\t\t\t\t\t\t\t\tDoes the organization meet the criteria stipulated in the public notice in consideration of circumstances specific to the specified industrial field in terms of securing the proper performance\n\t\t\t\t\t\t\t\t\tof the employment contract for specified skilled workers? (Fill in this section if such criteria are stipulated.)""",
                                fontMedium,
                                fontSize: 7,
                                ratio: 0.64),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 20),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[22] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 7, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[22] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                '(以下(33)から(41)は申請人が「特定技能1号」での在留を希望する場合であって,契約により登録支援機関に1号特定技能外国人支援計画の全部の実\n施を委託しない場合に記入)',
                                font,
                                fontSize: 7)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: -7, left: 100),
                                child: _buildText(
                                    '(Fill in sections (33) to (41) if the applicant wishes to reside in Japan with the status of residence of "Specified Skilled Worker (i)",\nand not all of the support plans for specified skilled workers (i) are to be entrusted to a registered support organization based on a contract.)',
                                    fontMedium,
                                    fontSize: 5))
                          ]),
                      // Section 3.33
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText('(33)支援責任者名', font,
                                '\t\t\t\t\t\t\t\t\tSupport manager', fontMedium,
                                fontSize: 7, ratio: 0.64),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 150,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins6[23], font,
                                        fontSize: 9))),
                            SizedBox(width: 10),
                            _buildDoubleLineText('所属・役職', font,
                                'Title and department', fontMedium,
                                fontSize: 7),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 170,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins6[24], font,
                                        fontSize: 10))),
                          ]),
                      SizedBox(height: 6),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 26),
                            _buildDoubleLineText(
                                '役員又は職員の中から支援責任者を選任していることの有無',
                                font,
                                'Has a support manager been appointed from among the officers or employees?',
                                fontMedium,
                                fontSize: 7),
                            SizedBox(width: 170),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 68),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[25] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 7, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[25] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Secttion 3.34
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText('(34)支援担当者名', font,
                                '\t\t\t\t\t\t\t\t\tSupport staff', fontMedium,
                                fontSize: 7, ratio: 0.64),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 150,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins6[26], font,
                                        fontSize: 9))),
                            SizedBox(width: 10),
                            _buildDoubleLineText('所属・役職', font,
                                'Title and department', fontMedium,
                                fontSize: 7),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 170,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins6[27], font,
                                        fontSize: 10))),
                          ]),
                      SizedBox(height: 6),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 26),
                            _buildDoubleLineText(
                                '役員又は職員の中から, 業務に従事させる事業所ごとに1名以上の支援担当者を選任していることの有無',
                                font,
                                'Has at least one support staff member been appointed from among the officers and employees for each place of business where the specified skilled worker is to work?',
                                fontMedium,
                                fontSize: 7),
                            SizedBox(width: 40),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 0, left: 12),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[28] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 7, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[28] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      SizedBox(height: 6),
                      // Section 3.35
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText('(35)次のいずれかに該当することの有無', font,
                                '\t\t\t\t\t\t\t\t\t\t(有の場合は該当するものを選択)', font,
                                fontSize: 7, ratio: 1),
                            SizedBox(width: 30),
                            _buildDoubleLineText(
                                'Whether it falls under any of the following cases:',
                                fontMedium,
                                '(If "Yes", choose the corresponding item)',
                                fontMedium,
                                fontSize: 6,
                                ratio: 1,
                                space: 0),
                            SizedBox(width: 150),
                            Padding(
                                padding: const EdgeInsets.only(left: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[29] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 7, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[29] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      SizedBox(height: 6),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Checkbox(
                                name: '',
                                value: ins6[30] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '①過去2年間において法別表第1の1の表, 2の表及び5の表の上欄の在留資格(収入を伴う事業を運営する活動又は報酬を受ける\n活動を行うことができる在留資格に限る)をもって在留する中長期在留者の受入れ又は管理を適正に行った実績を有すること',
                                font,
                                'It has a past record of properly accepting or managing mid to long-term residents residing with one of the statuses of residence in the left-hand column of Appended Table I (1), (2) or (5)\nover the past two years (limited to the statuses of residence where the foreign national is permitted to engage in activities related to the management of business involving income or\nactivities for which he or she receives remuneration).',
                                fontMedium,
                                fontSize: 7),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Checkbox(
                                name: '',
                                value: ins6[31] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '②支援責任者及び支援担当者が過去2年以内に法別表第1の1の表, 2の表及び5の表の上欄の在留資格(収入を伴う事業を運営す\nる活動又は報酬を受ける活動を行うことができる在留資格に限る)をもって在留する中長期在留者の生活相談等に従事した経験\nを有すること',
                                font,
                                'The support manager and support staff have experience of engaging in the work of providing advice on living for mid to long-term residents with a status of residence in the left-hand column of \nAppended Table I (1), 2 and (5) (limited to the statuses of residence where the foreign national is permitted to engage in activities related to the management of business involving income or activities\nfor which they receive remuneration).',
                                fontMedium,
                                fontSize: 7),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 34),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Checkbox(
                                name: '',
                                value: ins6[32] == '1' ? true : false,
                                width: 6,
                                height: 6,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: PdfColor.fromHex('#000000'),
                                  width: 1,
                                )),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildDoubleLineText(
                                '③その他支援業務を適正に実施できる事情を有すること',
                                font,
                                'Other conditions to ensure support is properly implemented',
                                fontMedium,
                                fontSize: 7),
                            SizedBox(width: 4),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 7),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 200,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    child: _buildText(ins6[33], font,
                                        fontSize: 8))),
                            _buildDoubleLineText(')', font, ')', fontMedium,
                                fontSize: 7),
                          ]),
                      // Section 3.36
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(36)1号特定技能外国人支援計画に基づく支援を, 外国人が十分に理解することができる言語によって行うことができる体制を有しているこ\n\t\t\t\t\tとの有無',
                              font,
                              """\t\t\t\t\t\t\t\t\tDo you have a structure in place where support based on the support plan for specified skilled workers (i) will be provided in a language that the foreign national is able to fully\n\t\t\t\t\t\t\t\t\tunderstand?""",
                              fontMedium,
                              fontSize: 7,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 14, left: 8),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[34] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 7, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[34] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 3.37
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(37)1号特定技能外国人支援の状況に関する文書を作成し, 1号特定技能外国人支援を行う事務所に特定技能雇用契約終了の日から1年\n\t\t\t\t\t以上備えて置くこととしていることの有無',
                              font,
                              """\t\t\t\t\t\t\t\t\tHas the organization taken measures to prepare documents on the status of support for specified skilled workers (i), and to keep them at the place of business where the support for\n\t\t\t\t\t\t\t\t\tspecified skilled workers (i) is to be implemented for at least one year from the date of termination of the employment contract for specified skilled workers?""",
                              fontMedium,
                              fontSize: 7,
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: 14, left: 24),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[35] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 7, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 14),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 7, space: 0),
                                  _buildText(ins6[35] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),

                      SizedBox(height: 10),
                    ]),
              ),
            ],
          );
        },
      ),
    );

    // ------- Page 8 -------
    List<String> ins7 = inputs[6];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 2.0 * cm,
            marginBottom: 1.5 * cm,
            marginLeft: 0.7 * cm,
            marginRight: 1.2 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(),
                  child: Row(children: [
                    Column(children: [
                      Padding(
                          padding: const EdgeInsets.only(left: -16),
                          child: Row(children: [
                            _buildText('所属機関等作成用 4', fontMedium, fontSize: 7),
                            SizedBox(width: 6),
                            _buildText('V (「特定技能(1号)」・「特定技能(2号)」)', fontMedium,
                                fontSize: 7),
                          ])),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: _buildText(
                            'For organization, part 4 V ("Specified Skilled Worker ( i ) "・"Specified Skilled Worker ( ii ) ") ',
                            fontMedium,
                            fontSize: 5),
                      ),
                    ]),
                    Container(
                        alignment: Alignment.bottomRight,
                        padding: const EdgeInsets.only(left: 160, bottom: 0),
                        child: Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: _buildText('在留資格変更用', font, fontSize: 7)),
                          _buildText('For change of status', fontMedium,
                              fontSize: 5),
                        ])),
                  ])),
              Container(
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                    border: Border.all(color: PdfColor.fromHex('#000000'))),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Section 3.38
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(38)支援責任者及び支援担当者が, 1号特定技能外国人支援計画の中立な実施を行うことができる立場の者であることの有無',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tAre the support manager and support staff in a position where they are able to implement the support plan for specified skilled workers (i) in a neutral manner?',
                                fontMedium,
                                fontSize: 6,
                                ratio: 0.64,
                                space: 2),
                            SizedBox(width: 140),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[0] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[0] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 3.39
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(39)特定技能雇用契約締結の日前5年以内又は契約締結の日以後に適合1号特定技能外国人支援計画に基づく1号特定技能外国人支援を怠\n\t\t\t\t\t\tったことの有無',
                                font,
                                '\t\t\t\t\t\t\t\t\tHas the organization failed to implement support for specified skilled workers (i) based on a suitable support plan for specified skilled workers (i) within five years prior to the date of entering into the employment contract for specfied skilled workers or after the\n\t\t\t\t\t\t\t\t\tdate of entering into such contract?',
                                fontMedium,
                                fontSize: 6,
                                ratio: 0.64),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 24),
                            Stack(children: [
                              _buildDoubleLineText('有', font, 'Yes', fontMedium,
                                  fontSize: 6, space: 0),
                              _buildText(ins7[1] == '1' ? '◯' : '', font,
                                  fontSize: 12)
                            ]),
                            _buildDoubleLineText(
                                '(内容:', font, '(Details:', fontMedium,
                                fontSize: 6, space: 0),
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                  width: 420,
                                  height: 18,
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 4),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            _buildText(ins7[2], fontMedium,
                                                fontSize: 8),
                                          ]))),
                            ),
                            _buildDoubleLineText(
                                ')・', font, ')  /   ', fontMedium,
                                fontSize: 6, space: 0),
                            Stack(children: [
                              _buildDoubleLineText('無', font, 'No', fontMedium,
                                  fontSize: 6, space: 0),
                              Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: _buildText(
                                      ins7[1] == '2' ? '◯' : '', font,
                                      fontSize: 12))
                            ]),
                          ]),
                      // Section 3.40
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(40)支援責任者又は支援担当者が外国人及びその監督をする立場にある者と定期的な面談を実施できる体制を有していることの有無',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tIs there a system in place to ensure the support manager and support staff are able to conduct periodic interviews with the foreign nationals and their supervisors?',
                                fontMedium,
                                fontSize: 6,
                                ratio: 0.64,
                                space: 2),
                            SizedBox(width: 116),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[3] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[3] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 3.41
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(41)適合1号特定技能外国人支援計画の適正な実施の確保につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合して\n\t\t\t\t\t\t\tいることの有無(当該基準が定められている場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tDoes the organization conform to the criteria stipulated in a public notice in consideration of circumstances specific to the specified industrial field in terms of ensuring proper implementation of the support plan for specified skilled\n\t\t\t\t\t\t\t\t\t\t\t\tworkers (i)? (Fill in this section if such criteria are stipulated.)',
                                fontMedium,
                                fontSize: 6,
                                ratio: 0.64),
                            SizedBox(width: 26),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[4] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[4] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      SizedBox(height: 2),
                      // Section IV
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildDoubleLineText(
                                '4   1号特定技能外国人支援計画(申請人が「特定技能1号」での在留を希望する場合に記入)',
                                font,
                                '\t\t\t\t\t\t\t\t\tSupport plan for specified skilled workers (i) (fill in this section if the applicant wishes to reside in Japan with the status of residence of "Specified Skilled Worker (i)")',
                                fontMedium,
                                fontSize: 6),
                          ]),
                      // Section 4.1
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(1)在留資格変更申請前に, 特定技能雇用契約の内容, 本邦において行うことができる活動の内容, 上陸及び在留のための条件その他の\n\t\t\t\t\t\t\t本邦に上陸し在留するに当たって留意すべき事項に関する情報の提供を外国人が十分に理解することができる言語により実施するこ\n\t\t\t\t\t\t\tととしていることの有無',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tWill the organization be providing information to the specified skilled worker (i) in a language that can be fully understood by the specified skilled worker (i) before their application for change of status the contents of the employment\n\t\t\t\t\t\t\t\t\t\t\t\tcontract for specified skilled workers, the contents of the activities that may be conducted in Japan, the conditions for landing and residence, and other points to be noted when landing and staying in Japan?',
                                fontMedium,
                                fontSize: 6,
                                ratio: 0.64,
                                space: 2),
                            SizedBox(width: 20),
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[5] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[5] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.2
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(2)上記(1)について, 対面により, 又はテレビ電話装置その他の方法により行うこととしていることの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWith regard to (1) above, will this be conducted face-to-face, using video call equipment or some other method?',
                              fontMedium,
                              fontSize: 6,
                            ),
                            SizedBox(width: 188),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[6] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[6] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.3
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(3)出入国時に港又は飛行場への送迎をすることとしていることの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the organization be picking up and dropping off the foreign national at the seaport or airport where he / she will be entering or departing from Japan?',
                              fontMedium,
                              fontSize: 6,
                              space: 0,
                            ),
                            SizedBox(width: 156),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[7] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[7] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.4
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(4)適切な住居の確保に係る支援をすることとしていることの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the organization be providing support to secure suitable accommodation for the foreign national?',
                              fontMedium,
                              fontSize: 6,
                              space: 0,
                            ),
                            SizedBox(width: 256),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[8] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[8] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.5
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(5)金融機関における預金口座等の開設及び携帯電話の利用に関する契約その他の生活に必要な契約に係る支援をすることとしているこ\n\t\t\t\t\t\t\tとの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the organization be providing support related to contracts concerning the opening of bank accounts, etc. or the use of mobile phones and other contracts necessary for living?',
                              fontMedium,
                              fontSize: 6,
                            ),
                            SizedBox(width: 108),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[9] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[9] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.6
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(6)在留資格変更後に, 本邦での生活一般に関する事項, 国又は地方公共団体の機関への届出その他の手続, 相談又は苦情の申出に関\n\t\t\t\t\t\t\tする連絡先, 十分に理解することができる言語で医療を受けることができる医療機関に関する事項, 防災・防犯に関する事項, 緊急時\n\t\t\t\t\t\t\tにおける対応に必要な事項及び外国人の法的保護に必要な事項に関する情報の提供を外国人が十分に理解することができる言語に\n\t\t\t\t\t\t\tより実施することとしていることの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the organization be providing information after the change of the status of residence in a language which the specified skilled worker (i) is fully able to understand on matters concerning general living in Japan, notifications to\n\t\t\t\t\t\t\t\t\t\t\t\tnational or local government agencies and other procedures, contact information for consultations or filing of complaints, matters concerning medical institutions capable of providing medical care in a language that the specified\n\t\t\t\t\t\t\t\t\t\t\t\tskilled worker (i) is fully able to understand, matters on disaster prevention and crime prevention, necessary matters for responses in case of emergency, and necessary matters for legal protection of foreign nationals?',
                              fontMedium,
                              fontSize: 6,
                              space: 4,
                            ),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[10] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 24),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[10] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.7
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                '(7)外国人が国又は地方公共団体の機関への届出その他の手続を履行するに当たり, 必要に応じ, 関係機関への同行その他の必要な措\n\t\t\t\t\t\t\t置を講ずることとしていることの有無',
                                font,
                                fontSize: 6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: -7, left: 140),
                                child: _buildText(
                                    'Will the organization take necessary measures to accompany the foreign national,where necessary, to the relevant agency in order to submit a notification\nto a national or local government agency or for other procedures that need to be followed?',
                                    fontMedium,
                                    fontSize: 4)),
                            SizedBox(width: 30),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[11] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[11] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.8
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(8)日本語を学習する機会を提供することとしていることの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the organization be providing the foreign national with opportunities to learn Japanese?',
                              fontMedium,
                              fontSize: 6,
                              space: 0,
                            ),
                            SizedBox(width: 274),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[12] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[12] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.9
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                '(9)外国人が十分に理解することができる言語により, 相談又は苦情の申出に対して, 遅滞なく, 適切に応じるとともに, 必要な措置を講ずる\n\t\t\t\t\t\t\tこととしていることの有無',
                                font,
                                fontSize: 6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: -7, left: 140),
                                child: _buildText(
                                    'Will the organization respond appropriately to requests for consultations or to complaints without delay, and take necessary measures n a language which\nthe specified skilled worker (i) is fully able to understand ?',
                                    fontMedium,
                                    fontSize: 4)),
                            SizedBox(width: 30),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[13] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[13] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.10
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(10)外国人と日本人の交流の促進に係る支援をすることとしていることの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the organization provide support for the promotion of exchanges between foreign nationals and Japanese nationals?',
                              fontMedium,
                              fontSize: 6,
                              space: 0,
                            ),
                            SizedBox(width: 220),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[14] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[14] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.11
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(11)外国人が, その責めに帰すべき事由によらずに特定技能雇用契約を解除される場合は, 転職支援をすることとしていることの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the organization provide support to foreign nationals whose employment contract for specified skilled workers has been cancelled due to causes not attributable to the fault of the foreign national so as to\n\t\t\t\t\t\t\t\t\t\t\t\tenable the foreign national to change jobs?',
                              fontMedium,
                              fontSize: 6,
                              space: 0,
                            ),
                            SizedBox(width: 50),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[15] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[15] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.12
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(12)支援責任者又は支援担当者が外国人及びその監督をする立場にある者と定期的な面談(外国人と行う場合には当該外国人が十分に\n\t\t\t\t\t\t\t理解することができる言語による面談)を実施し, 問題の発生を知ったときは, その旨を関係行政機関に通報することとしていることの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the support manager or support staff conduct periodic interviews with foreign nationals and their supervisors (when conducting an interview with a foreign national, in a language which the foreign national is fully able to\n\t\t\t\t\t\t\t\t\t\t\t\tunderstand), and when they learn about a problem, report the problem to the relevant administrative agency?',
                              fontMedium,
                              fontSize: 6,
                            ),
                            SizedBox(width: 20),
                            Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[16] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[16] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.13
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                '(13)1号特定技能外国人支援計画を日本語及び外国人が十分に理解することができる言語により作成し, 当該外国人にその写しを交付す\n\t\t\t\t\t\t\tることとしていることの有無',
                                font,
                                fontSize: 6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: -7, left: 140),
                                child: _buildText(
                                    'Has a support plan for specified skilled workers (i) been prepared in Japanese and in a foreign language that can be fully understood by the foreign national, and a copy\nbeen given to the foreign national?',
                                    fontMedium,
                                    fontSize: 4)),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[17] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[17] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.14
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                '(14)特定産業分野に特有の事情に鑑みて告示で定められる事項を1号特定技能外国人支援計画に記載していることの有無(当該事項が定\n\t\t\t\t\t\t\tめられている場合に記入)',
                                font,
                                fontSize: 6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: -7, left: 100),
                                child: _buildText(
                                    'Have the matters stipulated in a public notice in consideration of circumstances specific to the specified industrial field been given in the support plan for specified skilled workers (i)?\n(Fill in this section if such matters are stipulated.)',
                                    fontMedium,
                                    fontSize: 4)),
                            SizedBox(width: 12),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[18] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[18] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.15
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                              '(15)支援の内容が外国人の適正な在留に資するものであって, かつ, 支援を実施する者において適切に実施することができるものであるこ\n\t\t\t\t\t\t\tとの有無',
                              font,
                              '\t\t\t\t\t\t\t\t\t\t\t\tWill the contents of the support contribute to the proper residence of the foreign nationals, and can they be appropriately implemented by those providing the support?',
                              fontMedium,
                              fontSize: 6,
                            ),
                            SizedBox(width: 100),
                            Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[19] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[19] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section 4.16
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                '(16)1号特定技能外国人支援計画の内容につき特定産業分野に特有の事情に鑑みて告示で定められる基準に適合していることの有無(当\n\t\t\t\t\t\t\t該基準が定められている場合に記入)',
                                font,
                                fontSize: 6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: -7, left: 140),
                                child: _buildText(
                                    '                                                                        Will the organization conform to the criteria stipulated in a public notice in consideration of the circumstances specific\nto the specified industrial field in terms of the contents of the support plan for specified skilled workers (i)? (Fill in this section if such criteria are stipulated.)',
                                    fontMedium,
                                    fontSize: 4)),
                            SizedBox(width: 16),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '有', font, 'Yes', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[20] == '1' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: _buildDoubleLineText(
                                    '・', font, '/ ', fontMedium,
                                    fontSize: 6, space: 0)),
                            Padding(
                                padding: const EdgeInsets.only(top: -10),
                                child: Stack(children: [
                                  _buildDoubleLineText(
                                      '無', font, 'No', fontMedium,
                                      fontSize: 6, space: 0),
                                  _buildText(ins7[20] == '2' ? '◯' : '', font,
                                      fontSize: 12)
                                ])),
                          ]),
                      // Section V
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildText(
                                '5   登録支援機関(申請人が「特定技能1号」での在留を希望する場合であって,契約により登録支援機関に1号特定技能外国人支援計画の全部の実施\n\t\t\t\t\t\t\tを委託する場合に記入)',
                                font,
                                fontSize: 6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            Padding(
                                padding:
                                    const EdgeInsets.only(top: -7, left: 90),
                                child: _buildText(
                                    'Registered support organization\n(Fill in this section if the applicant wishes to reside in Japan with the status of residence of "Specific Skilled Worker (i)",\nand all of the support plans for specified skilled workers (i) are to be entrusted to a registered support organization based on a contract.)',
                                    fontMedium,
                                    fontSize: 4)),
                          ]),
                      // Section 5.1 - 5.2
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(1)氏名又は名称',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tName of person or organization',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 2),
                            Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 2, right: 2, top: -4),
                                child: Container(
                                    width: 154,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins7[21], font,
                                        fontSize: 8))),
                            _buildDoubleLineText(
                                '(2)法人番号(13桁)',
                                font,
                                'Corporation no. (combination of 13 numbers\nand letters)',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 6),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][0]
                                            : '',
                                        font,
                                        fontSize: 8))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][1]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][2]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][3]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][4]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][5]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][6]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][7]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][8]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][9]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][10]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][11]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[22].length == 13
                                            ? ins7[22][12]
                                            : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      //  Section 5.3
                      SizedBox(height: 2),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(3)雇用保険適用事業所番号(11桁)',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tEmployment insurance application office number (11 digits) *If not applicable, it should be omitted.',
                                fontMedium,
                                fontSize: 6,
                                space: 0),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: -110, top: 2),
                                child: _buildDoubleLineText(
                                    '※非該当事業所は記入省略', font, '', fontMedium,
                                    fontSize: 4)),
                            SizedBox(width: 30),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][0]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][1]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][2]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][3]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 1),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText('-', font, fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][4]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][5]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][6]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][7]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][8]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][9]
                                            : '',
                                        font,
                                        fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 1),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText('-', font, fontSize: 9))),
                            Padding(
                                padding: const EdgeInsets.only(bottom: 6),
                                child: Container(
                                    width: 12,
                                    height: 14,
                                    padding: const EdgeInsets.only(top: 2),
                                    alignment: Alignment.center,
                                    decoration: _buildTextBox('#000000'),
                                    child: _buildText(
                                        ins7[23].length == 11
                                            ? ins7[23][10]
                                            : '',
                                        font,
                                        fontSize: 9))),
                          ]),
                      // Section 5.4
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText('(4)住所(所在地)', font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tAddress', fontMedium,
                                fontSize: 6, space: 4),
                            SizedBox(width: 34),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 180,
                                  height: 18,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins7[24], font, fontSize: 9),
                                  )),
                            ),
                            SizedBox(width: 30),
                            _buildDoubleLineText(
                                '電話番号', font, 'Telephone No.', fontMedium,
                                fontSize: 6, space: 4),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Container(
                                  width: 110,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins7[25], font, fontSize: 9),
                                  )),
                            ),
                          ]),
                      // Section 5.5
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(5)代表者の氏名',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tName of the representative',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4, top: -4),
                              child: Container(
                                  width: 140,
                                  height: 18,
                                  alignment: Alignment.center,
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child:
                                        _buildText(ins7[26], font, fontSize: 8),
                                  )),
                            ),
                          ]),
                      // Section 5.6- 5.7
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(6)登録番号',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tRegistration no.',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 4, top: -4),
                              child: Container(
                                  width: 130,
                                  height: 18,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.only(top: 6),
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child:
                                      _buildText(ins7[27], font, fontSize: 9)),
                            ),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '(7)登録年月日',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tDate of Registration',
                                fontMedium,
                                fontSize: 6),
                            Padding(
                              padding: const EdgeInsets.only(left: 4, top: -4),
                              child: Container(
                                  width: 190,
                                  height: 18,
                                  padding: const EdgeInsets.only(top: 4),
                                  decoration:
                                      _myUnderLine('#000000', width: 0.5),
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, top: 3),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins7[28] == ''
                                                      ? ''
                                                      : ins7[28].split('/')[0],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '年', font, 'Year', fontMedium,
                                                  fontSize: 6),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins7[28] == ''
                                                      ? ''
                                                      : ins7[28].split('/')[1],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText('月',
                                                  font, 'Month', fontMedium,
                                                  fontSize: 6),
                                            ),
                                            SizedBox(width: 6),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: _buildText(
                                                  ins7[28] == ''
                                                      ? ''
                                                      : ins7[28].split('/')[2],
                                                  font,
                                                  fontSize: 9),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: -4, left: 2),
                                              child: _buildDoubleLineText(
                                                  '日', font, 'Day', fontMedium,
                                                  fontSize: 6),
                                            ),
                                          ]))),
                            ),
                          ]),
                      // Secttion 5.8- 5.9
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(8)支援を行う事業所の名称',
                                font,
                                'Name of place of businessimplementing support',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 30),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 130,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins7[29], font,
                                        fontSize: 9))),
                            SizedBox(width: 10),
                            _buildDoubleLineText('(9)所在地', font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tAddress', fontMedium,
                                fontSize: 6),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 170,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins7[30], font,
                                        fontSize: 9))),
                          ]),
                      // Secttion 5.10- 5.11
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(10)支援責任者名',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tSupport manager',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 30),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 130,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins7[31], font,
                                        fontSize: 9))),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '(11) 支援担当者名',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tSupport staff',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 10),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 170,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins7[32], font,
                                        fontSize: 9))),
                          ]),
                      // Secttion 5.12- 5.13
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '(12)対応可能言語',
                                font,
                                '\t\t\t\t\t\t\t\t\t\t\t\tAvailable languages',
                                fontMedium,
                                fontSize: 6),
                            SizedBox(width: 30),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 180,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(
                                        ins7[33] +
                                            ' ' +
                                            ins7[34] +
                                            ' ' +
                                            ins7[35] +
                                            ' ' +
                                            ins7[36] +
                                            ' ' +
                                            ins7[37] +
                                            ' ' +
                                            ins7[38] +
                                            ' ' +
                                            ins7[39] +
                                            ' ' +
                                            ins7[40] +
                                            ' ' +
                                            ins7[41] +
                                            ' ' +
                                            ins7[42],
                                        font,
                                        fontSize: 8))),
                            SizedBox(width: 10),
                            _buildDoubleLineText(
                                '(13)支援委託手数料(月額/人)',
                                font,
                                'Support commission fee (person per month)',
                                fontMedium,
                                fontSize: 6),
                            Padding(
                                padding: const EdgeInsets.only(top: -4),
                                child: Container(
                                    width: 120,
                                    height: 18,
                                    padding: const EdgeInsets.only(top: 4),
                                    alignment: Alignment.center,
                                    decoration:
                                        _myUnderLine('#000000', width: 0.5),
                                    child: _buildText(ins7[43], font,
                                        fontSize: 9))),
                            _buildDoubleLineText('円', font, 'Yen', fontMedium,
                                space: 0, fontSize: 6)
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText('以上の記載内容は事実と相違ありません。', fontBold,
                                fontSize: 6),
                            SizedBox(width: 10),
                            _buildText(
                                'I hereby declare that the statement given above is true and correct.',
                                fontMedium,
                                fontSize: 5),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText('特定技能所属機関名, 代表者氏名の記名/申請書作成年月日', fontBold,
                                fontSize: 6),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText(
                                'Name of the organization and representative of the organization / Date of filling in this form',
                                fontMedium,
                                fontSize: 4),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            Container(
                                width: 280,
                                height: 18,
                                padding: const EdgeInsets.only(top: 4),
                                child: _buildText(ins7[44], font, fontSize: 9)),
                            SizedBox(width: 10),
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 70, top: 4),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: _buildText(
                                            ins7[45] == ''
                                                ? ''
                                                : ins7[45].split('/')[0],
                                            font,
                                            fontSize: 9),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: -4, left: 2),
                                        child: _buildDoubleLineText(
                                            '年', font, 'Year', fontMedium,
                                            fontSize: 6),
                                      ),
                                      SizedBox(width: 6),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: _buildText(
                                            ins7[45] == ''
                                                ? ''
                                                : ins7[45].split('/')[1],
                                            font,
                                            fontSize: 9),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: -4, left: 2),
                                        child: _buildDoubleLineText(
                                            '月', font, 'Month', fontMedium,
                                            fontSize: 6),
                                      ),
                                      SizedBox(width: 6),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: _buildText(
                                            ins7[45] == ''
                                                ? ''
                                                : ins7[45].split('/')[2],
                                            font,
                                            fontSize: 9),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: -4, left: 2),
                                        child: _buildDoubleLineText(
                                            '日', font, 'Day', fontMedium,
                                            fontSize: 6),
                                      ),
                                    ])),
                          ]),
                      Container(
                          width: 480,
                          margin: const EdgeInsets.only(left: 14),
                          decoration: _myUnderLine('#000000', width: .5),
                          child: _buildText(' ', font, fontSize: 9)),
                      Container(
                          width: 480,
                          margin: const EdgeInsets.only(left: 14, top: 1.2),
                          decoration: _myUnderLine('#000000', width: .5),
                          child: _buildText(' ', font, fontSize: 9)),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildText('注意', fontBold, fontSize: 6),
                            SizedBox(width: 40),
                            _buildText('Attention', fontMedium, fontSize: 5),
                          ]),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(width: 14),
                            _buildDoubleLineText(
                                '申請書作成後申請までに記載内容に変更が生じた場合, 特定技能所属機関が変更箇所を訂正すること。',
                                fontBold,
                                'In cases where descriptions have changed after filling in this application form up until submission of this application, the organization must correct the changed part .',
                                fontMedium,
                                fontSize: 6),
                          ]),
                    ]),
              ),
            ],
          );
        },
      ),
    );

    // ------- Page 9 -------
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 2 * cm,
            marginBottom: 2 * cm,
            marginLeft: 2.2 * cm,
            marginRight: 2.0 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                _buildText(' 別紙 業種一覧', fontMedium, fontSize: 10),
                SizedBox(width: 40),
                Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: _buildText(
                        'Attachment: A list of business type', fontMedium,
                        fontSize: 9)),
              ]),
              Table(
                  columnWidths: {
                    0: const FractionColumnWidth(0.04),
                    1: const FlexColumnWidth(),
                  },
                  border: TableBorder.all(),
                  children: [
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('1', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child:
                                        _buildText(' 農林業', font, fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText('Agriculture', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('2', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child:
                                        _buildText(' 漁業', font, fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText('Fishery', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('3', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 鉱業, 採石業, 砂利採取業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Mining, quarrying, gravel extraction',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('4', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child:
                                        _buildText(' 建設業', font, fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Construction', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 5 - 12
                    TableRow(children: [
                      Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Center(child: _buildText('5', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('6', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('7', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('8', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('9', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('10', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('11', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('12', font, fontSize: 9))
                        ]),
                      ]),
                      Table(
                          columnWidths: {
                            0: const FractionColumnWidth(0.233),
                            1: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.only(top: 40),
                                  alignment: Alignment.centerLeft,
                                  child: _buildDoubleLineText(' 製造業', font,
                                      ' Manufacturing', fontMedium,
                                      fontSize: 9, ratio: 0.778, space: 0)),
                              Table(border: TableBorder.all(), children: [
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 建設業', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Food products',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 繊維工業', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Textile industry',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' プラスチック製品', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Plastic products',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 金属製品', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Metal products',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 生産用機械器具', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Industrial machinery and equipment',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 電気機械器具', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Electrical machinery and equipment',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 輸送用機械器具', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Transportation machinery and equipment',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' その他(他に分類されないもの)', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Others', fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                              ])
                            ])
                          ]),
                    ]),
                    // Row 13
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('13', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 電気・ガス・熱供給・水道業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Electricity, gas, heat supply, water supply',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('14', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 情報通信業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Information and communication industry',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('15', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 運輸・信書便事業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Transportation and correspondence',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 16 - 21
                    TableRow(children: [
                      Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Center(child: _buildText('16', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('17', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('18', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('19', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('20', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('21', font, fontSize: 9))
                        ]),
                      ]),
                      Table(
                          columnWidths: {
                            0: const FractionColumnWidth(0.233),
                            1: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.only(top: 28),
                                  alignment: Alignment.centerLeft,
                                  child: _buildDoubleLineText(
                                      ' 卸売業', font, ' Wholesale', fontMedium,
                                      fontSize: 9, ratio: 0.778, space: 0)),
                              Table(border: TableBorder.all(), children: [
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 各種商品(総合商社等)', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Various products (general trading company, etc.)',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 繊維・衣服等', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Textile, clothing, etc.',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 飲食料品', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Food and beverages',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 建築材料, 鉱物・金属材料等', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Building materials, mineral and metal materials etc.',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 機械器具', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Machinery and equipment',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' その他', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Others', fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                              ])
                            ])
                          ]),
                    ]),
                    // Row 22 - 26
                    TableRow(children: [
                      Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Center(child: _buildText('22', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('23', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('24', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('25', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('26', font, fontSize: 9))
                        ]),
                      ]),
                      Table(
                          columnWidths: {
                            0: const FractionColumnWidth(0.233),
                            1: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.only(top: 24),
                                  alignment: Alignment.centerLeft,
                                  child: _buildDoubleLineText(
                                      ' 小売業', font, ' Retail', fontMedium,
                                      fontSize: 9, ratio: 0.778, space: 0)),
                              Table(border: TableBorder.all(), children: [
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 各種商品', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Various products',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 織物・衣服・身の回り品', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Fabric, clothing, personal belongings',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 飲食料品(コンビニエンスストア等)', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Food and beverages (convenience store, etc.)',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 機械器具', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Machinery and equipment retailing',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' その他', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Others', fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                              ])
                            ])
                          ]),
                    ]),
                    // Row 27
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('27', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 金融・保険業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Finance / insurance', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 28
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('28', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 不動産・物品賃貸業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Real estate / rental goods',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 29 - 32
                    TableRow(children: [
                      Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Center(child: _buildText('29', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('30', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('31', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('32', font, fontSize: 9))
                        ]),
                      ]),
                      Table(
                          columnWidths: {
                            0: const FractionColumnWidth(0.233),
                            1: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: _buildDoubleLineText(
                                      ' 学術研究, 専門・技術\n サービス業',
                                      font,
                                      ' Academic research, specialized /\n technical services',
                                      fontMedium,
                                      fontSize: 9,
                                      space: 0)),
                              Table(border: TableBorder.all(), children: [
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 学術・開発研究機関', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Academic research, specialized / technical service industry',
                                                    fontMedium,
                                                    fontSize: 6)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 専門サービス業(他に分類されないもの)',
                                                    font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Specialized service industry (not categorized elsewhere)',
                                                    fontMedium,
                                                    fontSize: 6)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 広告業', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Advertising industry',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 技術サービス業(他に分類されないもの)',
                                                    font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Technical service industry (not categorized elsewhere)',
                                                    fontMedium,
                                                    fontSize: 6)),
                                          ])),
                                ]),
                              ])
                            ])
                          ]),
                    ]),
                    // Row 33
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('33', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child:
                                        _buildText(' 宿泊業', font, fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Accommodation', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 34
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('34', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 飲食サービス業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Food and beverage service industry',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 35
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('35', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(
                                        ' 生活関連サービス(理容・美容等)・娯楽業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Lifestyle-related services (barber / beauty, etc.) / entertainment industry',
                                        fontMedium,
                                        fontSize: 5))
                              ])),
                    ]),
                    // Row 36
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('36', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child:
                                        _buildText(' 学校教育', font, fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'School education', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 37
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('37', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' その他の教育, 学習支援業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Other education, learning support industry',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 38 - 40
                    TableRow(children: [
                      Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Center(child: _buildText('38', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('39', font, fontSize: 9))
                        ]),
                        TableRow(children: [
                          Center(child: _buildText('40', font, fontSize: 9))
                        ]),
                      ]),
                      Table(
                          columnWidths: {
                            0: const FractionColumnWidth(0.233),
                            1: const FlexColumnWidth(),
                          },
                          border: TableBorder.all(),
                          children: [
                            TableRow(children: [
                              Container(
                                  padding: const EdgeInsets.only(top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: _buildDoubleLineText(' 医療・福祉業', font,
                                      ' Medical / welfare services', fontMedium,
                                      fontSize: 9, space: 0)),
                              Table(border: TableBorder.all(), children: [
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 医療業', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Medical industry',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(' 保健衛生', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Health and hygiene',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                                TableRow(children: [
                                  Container(
                                      width: 100,
                                      alignment: Alignment.center,
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 475,
                                                child: _buildText(
                                                    ' 社会保険・社会福祉・介護事業', font,
                                                    fontSize: 9)),
                                            Expanded(
                                                flex: 525,
                                                child: _buildText(
                                                    ' Social insurance / social welfare / nursing care',
                                                    fontMedium,
                                                    fontSize: 7)),
                                          ])),
                                ]),
                              ])
                            ])
                          ]),
                    ]),
                    // Row 41
                    TableRow(children: [
                      Container(
                          padding: const EdgeInsets.only(top: 4),
                          alignment: Alignment.center,
                          child: _buildText('41', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildDoubleLineText(
                                    ' 複合サービス事業(郵便局, 農林水産業協同組合, 事業協同組合(他に分類されないもの))',
                                    font,
                                    ' Combined services (post office, agriculture, forestry and fisheries cooperative association, business cooperative (not categorized elsewhere))',
                                    fontMedium,
                                    space: 2,
                                    fontSize: 9)
                              ])),
                    ]),
                    // Row 42
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('42', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 職業紹介・労働者派遣業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Employment placement / worker dispatch industry',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 43
                    TableRow(children: [
                      Container(
                          padding: const EdgeInsets.only(top: 4),
                          alignment: Alignment.center,
                          child: _buildText('43', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildDoubleLineText(
                                    ' その他の事業サービス業(速記・ワープロ入力・複写業, 建物サービス業, 警備業等)',
                                    font,
                                    ' Other business services (shorthand / word processing / copying, building services, security business, etc.)',
                                    fontMedium,
                                    space: 2,
                                    fontSize: 9)
                              ])),
                    ]),
                    // Row 44
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('44', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(
                                        ' その他のサービス業(他に分類されないもの)', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Other service industries', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 45
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('45', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child:
                                        _buildText(' 宗教', font, fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText('Religion', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 46
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('46', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 公務(他に分類されるものを除く)', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Public service (not categorized elsewhere)',
                                        fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                    // Row 47
                    TableRow(children: [
                      Container(
                          alignment: Alignment.center,
                          child: _buildText('47', font, fontSize: 9)),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.symmetric(vertical: 1),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: _buildText(' 分類不能の産業', font,
                                        fontSize: 9)),
                                Expanded(
                                    flex: 4,
                                    child: _buildText(
                                        'Unclassifiable industry', fontMedium,
                                        fontSize: 7))
                              ])),
                    ]),
                  ])
            ],
          );
        },
      ),
    );

    // ------- Page 10 -------
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 0.5 * cm,
            marginBottom: 0 * cm,
            marginLeft: 2.0 * cm,
            marginRight: 2.0 * cm),
        build: (Context context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                _buildText(' 別紙 職種一覧', fontMedium, fontSize: 10),
                SizedBox(width: 60),
                Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: _buildText(
                        'Attachment: A list of occupation', fontMedium,
                        fontSize: 9)),
              ]),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                // Left Table
                Expanded(
                    flex: 47,
                    child: Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.071),
                          1: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          // Row 1
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('1', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 経営', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Executive', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 2
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('2', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(
                                              ' 管理業務(経営者を除く)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Management work (excluding executives)',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 3
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('3', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 調査研究', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Research', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 4
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('4', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 技術開発(農林水産分野)',
                                          font,
                                          ' Technology development (agriculture, forestry, and fisheries field)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 5
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('5', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 技術開発(食品分野)',
                                          font,
                                          ' Technology development (food products field)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 6
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('6', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 技術開発(機械器具分野)',
                                          font,
                                          ' Technology development (machinery and equipment field)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 7
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('7', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 技術開発(その他製造分野)',
                                          font,
                                          ' Technology development (other manufacturing field)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 8
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('8', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 生産管理(食品分野)',
                                          font,
                                          ' Production management (food products field)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 9
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('9', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 生産管理(機械器具分野)',
                                          font,
                                          ' Production management (machinery and equipment field)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 10
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('10', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 生産管理(その他製造分野)',
                                          font,
                                          ' Production management (other manufacturing field)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 11
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('11', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 建築・土木・測量技術',
                                          font,
                                          ' Architecture, civil engineering, surveying techniques',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 12
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('12', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 情報処理・通信技術',
                                          font,
                                          ' Information processing, communications technology',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 13
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('13', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 法律関係業務', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Legal business', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 14
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('14', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 金融・保険', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Finance / insurance',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 15
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('15', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' コピーライティング', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Copywriting', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 16
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('16', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 報道', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Journalism', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 17
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('17', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 編集', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Editing', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 18
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('18', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' デザイン', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Design', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 19
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('19', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 教育(教員免許を有する者が行う教育)',
                                          font,
                                          ' Education(education taught by a person with a teaching license)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 20
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('20', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 教育(小学校・中学校・高等学校における語学教育)',
                                          font,
                                          ' Education(language education at an elementary school, lower secondary or upper secondary school)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8,
                                          ratio: 0.52)
                                    ])),
                          ]),
                          // Row 21
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('21', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 教育(専修学校)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Education(Advanced vocational school)',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 22
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('22', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 教育(各種学校)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Education(Miscellaneous school)',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 23
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('23', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 教育(インターナショナルスクール)',
                                          font,
                                          ' Education(International school)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 24
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('24', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(
                                              ' 教育(教育機関を除く)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Education (excluding educational institutions)',
                                                  fontMedium,
                                                  fontSize: 4.6)))
                                    ])),
                          ]),
                          // Row 25
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('25', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 翻訳・通訳', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Translation / Interpretation',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 26
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('26', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 海外取引業務', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Overseas trading business',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 27
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('27', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 企画事務(マーケティング,リサーチ)',
                                          font,
                                          ' Planning administration work (marketing, research)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 28
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('28', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 企画事務(広報・宣伝)',
                                          font,
                                          ' Planning administration work (public relations, advertising)',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 29
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('29', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 会計事務', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Accounting business',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 30
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('30', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 法人営業', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Corporate sales', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 31
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('31', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' CADオペレーション', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'CAD operation', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 32
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('32', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 調理', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Cooking', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 33
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('33', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 外国特有の建築技術',
                                          font,
                                          ' Foreign country-specific construction technology',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 34
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('34', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 外国特有の製品製造',
                                          font,
                                          ' Foreign country-specific product manufacturing',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 35
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('35', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(
                                              ' 宝石・貴金属・毛皮加工', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Jewels, precious metal, fur processing',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 36
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('36', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 動物の調教', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Animal training', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 37
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('37', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 石油・地熱等掘削調査',
                                          font,
                                          ' Drilling survey for oil, geothermal energy, etc.',
                                          fontMedium,
                                          space: 2,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 38
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('38', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' パイロット', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Pilot', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 39
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('39', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' スポーツ指導', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Sports instruction',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 40
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('40', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' ソムリエ', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Sommelier', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 41
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('41', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 介護福祉士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Certified care worker',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 42
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('42', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 研究', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Research', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 43
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('43', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 研究の指導', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Research guidance',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 44
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('44', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 教育(大学等)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Education(university,etc.)',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 45
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('45', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 記者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Press', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 46
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('46', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 報道カメラマン', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Press photographer',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 47
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('47', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 医師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Doctor', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 48
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('48', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 歯科医師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Dentist', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 49
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('49', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 薬剤師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Pharmacist', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 50
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('50', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 看護師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Nurse', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 51
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('51', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 接客(販売店)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Service(store)', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 52
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('52', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 接客(飲食店)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Service(restaurant)',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                        ])),
                Expanded(flex: 6, child: _buildText('', font, fontSize: 9)),
                // Right Table
                Expanded(
                    flex: 47,
                    child: Table(
                        columnWidths: {
                          0: const FractionColumnWidth(0.071),
                          1: const FlexColumnWidth(),
                        },
                        border: TableBorder.all(),
                        children: [
                          // Row 53
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('53', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 接客(その他)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Service(others)', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 54
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('54', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 製品製造', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Product manufacturing',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 55
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('55', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 保健師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Public health nurse',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 56
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('56', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 助産師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Midwife', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 57
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('57', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 准看護師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Assistant nurse', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 58
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('58', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 歯科衛生士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Dental hygienist',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 59
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('59', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 診療放射線技師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Radiology technician',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 60
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('60', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 理学療法士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Physical therapist',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 61
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('61', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 作業療法士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Occupational therapist',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 62
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('62', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 視能訓練士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Orthoptist', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 63
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('63', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 臨床工学技士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Clinical engineer',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 64
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('64', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 義肢装具士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Prosthetist', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 65
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('65', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 弁護士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Lawyer', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 66
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('66', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 司法書士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Judicial scrivener',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 67
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('67', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 弁理士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Patent attorney', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 68
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('68', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 土地家屋調査士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Land and building investigator',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 69
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('69', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 外国法事務弁護士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Registered foreign-qualified lawyer',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 70
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('70', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 公認会計士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Public accountant',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 71
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('71', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 外国公認会計士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Foreign-qualified certified public accountant',
                                                  fontMedium,
                                                  fontSize: 4.6)))
                                    ])),
                          ]),
                          // Row 72
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('72', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 税理士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Certified tax accountant',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 73
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('73', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 社会保険労務士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Public consultant on social and labor insurance',
                                                  fontMedium,
                                                  fontSize: 4.6)))
                                    ])),
                          ]),
                          // Row 74
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('74', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 行政書士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Certified administrative procedures legal specialist',
                                                  fontMedium,
                                                  fontSize: 4.2)))
                                    ])),
                          ]),
                          // Row 75
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('75', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 海事代理士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Maritime procedure agent',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 76
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('76', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 著述家', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Author', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 77
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('77', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 美術家・写真家', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Artist/photographer',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 78
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('78', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 音楽家・舞台芸術家', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Musician/stage artist',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 79
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('79', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 宗教家', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Religious worker',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 80
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('80', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 家事使用人', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Housekeeper', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 81
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('81', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' プロスポーツ選手', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Professional sports athlete',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 82
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('82', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(
                                              ' アマチュアスポーツ選手', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Amateur sports athlete',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 83
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('83', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' インターンシップ', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Internship', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 84
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('84', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' ワーキング・ホリデー', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Working holiday', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 85
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('85', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 外国弁護士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Foreign lawyer', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 86
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('86', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' サマージョブ', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Summer job', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 87
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('87', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 国際文化交流', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'International cultural exchange',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 88
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('88', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' EPA看護師', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Nurse under EPA', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 89
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('89', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' EPA介護福祉士', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Certified Careworker under EPA',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 90
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('90', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' EPA看護師候補者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Nurse Candidates under EPA',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 91
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('91', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(
                                              ' EPA介護福祉士候補者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Certified Careworker Candidates under EPA',
                                                  fontMedium,
                                                  fontSize: 4.6)))
                                    ])),
                          ]),
                          // Row 92
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('92', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(
                                              ' EPA就学介護福祉士候補者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Certified Careworker Candidates (student) under EPA',
                                                  fontMedium,
                                                  fontSize: 4.0)))
                                    ])),
                          ]),
                          // Row 93
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('93', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 外国人建設就労者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Foreign construction workers',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 94
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('94', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 外国人造船就労者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Foreign shipbuilding workers',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 95
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('95', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 製造業外国従業員', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Foreign workers in the field of manufacturing',
                                                  fontMedium,
                                                  fontSize: 4.6)))
                                    ])),
                          ]),
                          // Row 96
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('96', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(
                                              ' 家事支援者(国家戦略特区)', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Domestic workers (national strategic zones)',
                                                  fontMedium,
                                                  fontSize: 4.6)))
                                    ])),
                          ]),
                          // Row 97
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('97', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 耕種農業支援者(国家戦略特区)',
                                          font,
                                          ' Crop farming workers (national strategic zones)',
                                          fontMedium,
                                          space: 0,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 98
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('98', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 畜産農業支援者(国家戦略特区)',
                                          font,
                                          ' Livestock farming workers (national strategic zones)',
                                          fontMedium,
                                          space: 0,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 99
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('99', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 起業活動', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Entrepreurial activities',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 100
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('100', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' その他のサービス職業従事者(他に分類されないもの)',
                                          font,
                                          ' Other service worker (not categorized elsewhere)',
                                          fontMedium,
                                          space: 0,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 101
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('101', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 農林漁業従事者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Agriculture, forestry and fishery workers',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 102
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('102', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 製品製造・加工処理従事者(金属製品)',
                                          font,
                                          ' Product manufacturing / processing worker (metal products)',
                                          fontMedium,
                                          space: 0,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 103
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('103', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 製品製造・加工処理従事者(金属製品を除く)',
                                          font,
                                          ' Product manufacturing / processing worker (except metal products)',
                                          fontMedium,
                                          space: 0,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 104
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('104', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 機械組立従事者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Machine assembly worker',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 105
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('105', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 機械整備・修理従事者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Machine maintenance / repair worker',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 106
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('106', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 機械検査従事者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Machine inspection worker',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 107
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('107', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 建設躯体工事従事者', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Construction structure worker',
                                                  fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 108
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('108', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 建設従事者(建設躯体工事従事者を除く)',
                                          font,
                                          ' Construction worker (except for workers engaged in construction structure work)',
                                          fontMedium,
                                          space: 0,
                                          fontSize: 8,
                                          ratio: 0.6)
                                    ])),
                          ]),
                          // Row 109
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('109', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' その他の建設・採掘従事者(他に分類されないもの)',
                                          font,
                                          ' Other construction / mining workers (not categorized elsewhere)',
                                          fontMedium,
                                          space: 0,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 110
                          TableRow(children: [
                            Container(
                                padding: const EdgeInsets.only(top: 4),
                                alignment: Alignment.center,
                                child: _buildText('110', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      _buildDoubleLineText(
                                          ' 運搬・清掃・包装等従事者',
                                          font,
                                          ' Transportation, cleaning, packaging worker',
                                          fontMedium,
                                          space: 0,
                                          fontSize: 8)
                                    ])),
                          ]),
                          // Row 111
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('111', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 外交', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Diplomat', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 112
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('112', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' 公用', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Official', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                          // Row 999
                          TableRow(children: [
                            Container(
                                alignment: Alignment.center,
                                child: _buildText('999', font, fontSize: 8)),
                            Container(
                                alignment: Alignment.centerLeft,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 0.5),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          flex: 5,
                                          child: _buildText(' その他', font,
                                              fontSize: 8)),
                                      Expanded(
                                          flex: 5,
                                          child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 2),
                                              child: _buildText(
                                                  'Others', fontMedium,
                                                  fontSize: 5)))
                                    ])),
                          ]),
                        ])),
              ])
            ],
          );
        },
      ),
    );

    return await pdf.save();
  }

  static Widget _buildOptionInput(
      String text1, String text2, Font font, String value,
      {double fontSize = 10}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Stack(children: [
        _buildText(text1, font, fontSize: fontSize),
        _buildText(value == '1' ? '◯' : '', font, fontSize: fontSize),
      ]),
      _buildText(' ・ ', font, fontSize: fontSize),
      Stack(children: [
        _buildText(text2, font, fontSize: fontSize),
        _buildText(value == '2' ? '◯' : '', font, fontSize: fontSize),
      ]),
    ]);
  }

  static Widget _buildText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return Text(text, style: TextStyle(font: font));
    } else {
      return Text(text, style: TextStyle(font: font, fontSize: fontSize));
    }
  }

  static Widget _buildDoubleLineText(
      String text1, Font font1, String text2, Font font2,
      {double fontSize = 0, double ratio = 2 / 3, double space = -2.0}) {
    if (fontSize == 0) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.only(),
            child: Text(text1, style: TextStyle(font: font1))),
        Padding(
            padding: EdgeInsets.only(top: space),
            child: Text(text2, style: TextStyle(font: font2))),
      ]);
    } else {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.only(),
            child:
                Text(text1, style: TextStyle(font: font1, fontSize: fontSize))),
        Padding(
            padding: EdgeInsets.only(top: space),
            child: Text(text2,
                style: TextStyle(font: font2, fontSize: fontSize * ratio))),
      ]);
    }
  }

  static Widget _buildTableText(
      String text1, Font font1, String text2, Font font2,
      {double fontSize = 0}) {
    return Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: const EdgeInsets.only(),
          child:
              Text(text1, style: TextStyle(font: font1, fontSize: fontSize))),
      Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(text2,
              style: TextStyle(font: font2, fontSize: fontSize * 2 / 3))),
    ]));
  }

  static BoxDecoration _myUnderLine(String color, {double width = 1}) {
    return BoxDecoration(
        border: Border(
      bottom: BorderSide(
        color: PdfColor.fromHex(color),
        width: width,
      ),
    ));
  }

  static BoxDecoration _buildTextBox(String color, {double width = 1}) {
    return BoxDecoration(
        border: Border(
      bottom: BorderSide(
        color: PdfColor.fromHex(color),
        width: width,
      ),
      top: BorderSide(
        color: PdfColor.fromHex(color),
        width: width / 2,
      ),
      left: BorderSide(
        color: PdfColor.fromHex(color),
        width: width / 2,
      ),
      right: BorderSide(
        color: PdfColor.fromHex(color),
        width: width / 2,
      ),
    ));
  }

  static BoxDecoration _buildTextBoxAllSide(String color,
      {double topWidth = 1,
      double rightWidth = 1,
      double bottomWidth = 1,
      double leftWidth = 1}) {
    return BoxDecoration(
        border: Border(
      bottom: BorderSide(
        color: PdfColor.fromHex(color),
        width: bottomWidth,
      ),
      top: BorderSide(
        color: PdfColor.fromHex(color),
        width: topWidth,
      ),
      left: BorderSide(
        color: PdfColor.fromHex(color),
        width: leftWidth,
      ),
      right: BorderSide(
        color: PdfColor.fromHex(color),
        width: rightWidth,
      ),
    ));
  }

  static const double inch = 72.0;
  static const double cm = inch / 2.54;
}

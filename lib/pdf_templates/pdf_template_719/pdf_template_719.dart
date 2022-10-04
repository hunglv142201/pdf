import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class PdfTemplate719 extends PDFTemplate {
  PdfTemplate719(
      this.input1_1,
      this.input1_2,
      this.input1_3,
      this.input1_4,
      this.input1_5,
      this.input1_6,
      this.input1_7,
      this.input1_8,
      this.input1_9,
      this.input1_10,
      this.input2_1,
      this.input2_2,
      this.input2_3,
      this.input2_4,
      this.input2_5,
      this.input2_6,
      this.input2_7,
      this.input2_8,
      this.input2_9,
      this.input2_10,
      this.input2_11,
      this.input2_12,
      this.input2_13,
      this.input2_14,
      this.input2_15,
      this.input2_16,
      this.input2_17,
      this.input2_18,
      this.input2_19);

  final String? input1_1;
  final String? input1_2;
  final String? input1_3;
  final String? input1_4;
  final String? input1_5;
  final String? input1_6;
  final String? input1_7;
  final String? input1_8;
  final String? input1_9;
  final String? input1_10;
  final String? input2_1;
  final String? input2_2;
  final String? input2_3;
  final String? input2_4;
  final String? input2_5;
  final String? input2_6;
  final String? input2_7;
  final String? input2_8;
  final String? input2_9;
  final String? input2_10;
  final String? input2_11;
  final String? input2_12;
  final String? input2_13;
  final String? input2_14;
  final String? input2_15;
  final String? input2_16;
  final String? input2_17;
  final String? input2_18;
  final String? input2_19;

  final pdf = Document();
  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();

    _buildPage1();
    _buildPage2();

    return await pdf.save();
  }

  void _buildPage1() {
    _buildPage(
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildText('参考様式第１－９号'),
          SizedBox(height: 32),
          Center(
              child: _buildText('徴     収     費     用     の     説     明',
                  fontSize: 14)),
          SizedBox(height: 24),

          // -- Section 1 --
          _buildText('１ 特定技能外国人に対する報酬の支払概算額'),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: PdfColor.fromHex('#000000'))),
            child: _buildText('概算額  ' + (input1_1 ?? '') + '  円（１か月当たり）'),
          ),
          SizedBox(height: 8),
          _buildText('（注意）'),
          _buildText('概算額は，社会保険料・税金等を控除する前の金額を記載すること。'),
          SizedBox(height: 20),

          // -- Section 2 --
          _buildText('２ 食費'),
          Table(
            border: TableBorder.all(),
            columnWidths: const {
              0: FractionColumnWidth(1),
              1: FractionColumnWidth(2)
            },
            children: [
              _buildTableRow(
                _buildText('①食費，食材等の提供の有無'),
                Row(
                  children: [
                    Checkbox(
                      name: '',
                      value: input1_2 == '1',
                    ),
                    _buildText('  有         '),
                    Checkbox(name: '', value: input1_2 == '2'),
                    _buildText('  無'),
                  ],
                ),
              ),
              _buildTableRow(_buildText('②食費として徴収する費用'),
                  _buildText('１か月当たり 約  ' + (input1_3 ?? '') + '  円')),
              _buildTableRow(_buildText('③提供する食事，食材等の具体的な内容'),
                  _buildText(input1_4 ?? ' ')),
              _buildTableRow(_buildText('④費用が実費に相当する額その他の適正な額であることの説明'),
                  _buildText(input1_5 ?? ' ')),
            ],
          ),
          SizedBox(height: 8),
          _buildText('１ ②から④までは，①で有にチェックを付した場合にのみ記載すること。'),
          _buildText('２ ④は，例えば以下のような観点から記載し，説明が適切にされなければならない。'),
          _buildText('   ・③が，「食材，宅配弁当等の現物給付」の場合： 購入に要した費用'),
          _buildText('   ・③が，「社員食堂での食事提供」の場合： 特定技能外国人以外の職員から徴収する額'),
          _buildText(
              '   ・③が，「食事の調理・提供」の場合：材料費，水道光熱費，人件費等の費用の総額を，提供を受ける者（特定技能外国人のみに限られない。）の人数で除した額'),
          SizedBox(height: 20),

          // -- Section 3 --
          _buildText('３ 居住費'),
          Table(
            border: TableBorder.all(),
            columnWidths: const {
              0: FractionColumnWidth(1),
              1: FractionColumnWidth(2)
            },
            children: [
              _buildTableRow(
                _buildText('①居住費の徴収の有無'),
                Row(
                  children: [
                    Checkbox(
                      name: '',
                      value: input1_6 == '1',
                    ),
                    _buildText('  有         '),
                    Checkbox(name: '', value: input1_6 == '2'),
                    _buildText('  無'),
                  ],
                ),
              ),
              _buildTableRow(_buildText('②居住費として徴収する費用'),
                  _buildText('１か月当たり 約  ' + (input1_7 ?? '') + '  円')),
              _buildTableRow(_buildText('③提供する宿泊施設の具体的な内容'),
                  _buildText((input1_8 ?? ' ') + '・' + (input1_9 ?? ''))),
              _buildTableRow(_buildText('④費用が実費に相当する額その他の適正な額であることの説明'),
                  _buildText(input1_10 ?? ' ')),
            ],
          ),
          SizedBox(height: 8),
          _buildText('１ ②から④までは，①で有にチェックを付した場合にのみ記載すること。'),
          _buildText('２ ③は，「自己所有物件」，「借上物件」のいずれかに丸印を付すこと。'),
          _buildText('３ ④は，例えば以下のような観点から記載し，説明が適切にされなければならない'),
          _buildText(
              '   ・③が「自己所有物件」の場合：実際に建設・改装等に要した費用，物件の耐用年数，入居する特定技能外国人の人数等を勘案して合理的であると説明可能な額'),
          _buildText(
              '   ・③が「借上物件」の場合：借上げに要する賃料（管理費・共益費等を含み，敷金・礼金・保証金・仲介手数料は含まない。以下同じ。）を，入居する特定技能外国人の人数で除した額'),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  void _buildPage2() {
    _buildPage(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // -- Section 4 --
        _buildText('４ 水道光熱費'),
        Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FractionColumnWidth(1),
            1: FractionColumnWidth(2)
          },
          children: [
            _buildTableRow(
              _buildText('①水道光熱費の徴収の有無'),
              Row(
                children: [
                  Checkbox(
                    name: '',
                    value: input2_1 == '1',
                  ),
                  _buildText('  有         '),
                  Checkbox(name: '', value: input2_1 == '2'),
                  _buildText('  無'),
                ],
              ),
            ),
            _buildTableRow(
              _buildText('②水道光熱費として徴収する費用の内容'),
              _buildText('１か月当たり 約  ' + (input2_2 ?? '') + '  円'),
            ),
          ],
        ),
        SizedBox(height: 8),
        _buildText('１①は，特定技能外国人本人が水道光熱費の提供業者と直接契約をする場合は無にチェックすること。'),
        _buildText(
            '２②は，徴収見込額を記載すること。なお，特定技能外国人から徴収する際には，実際に水道光熱費の提供業者に特定技能所属機関が支払った費用を，水道光熱設備を利用する者（特定技能外国人に限られない。）の人数で除した額以内の金額を徴収するものでなければならない。'),
        SizedBox(height: 20),

        // -- Section 5 --
        _buildText('５ その他特定技能外国人が定期に負担する費用'),
        Table(
          border: TableBorder.all(),
          columnWidths: const {
            0: FractionColumnWidth(1),
            1: FractionColumnWidth(2)
          },
          children: [
            _buildTableRow(
              _buildText('①その他特定技能外国人が定期に負担する費用の有無'),
              Row(
                children: [
                  Checkbox(
                    name: '',
                    value: input2_3 == '1',
                  ),
                  _buildText('  有         '),
                  Checkbox(name: '', value: input2_3 == '2'),
                  _buildText('  無'),
                ],
              ),
            ),
            _buildTableRow(
              _buildText('②特定技能外国人が定期に負担する費用の内容'),
              Table(border: TableBorder.all(), columnWidths: const {
                0: FractionColumnWidth(1),
                1: FractionColumnWidth(2)
              }, children: [
                _buildTableRow(
                  _buildText('Ⅰ ' + (input2_4 ?? '') + ' 費'),
                  _buildText('１か月当たり 約' + (input2_5 ?? '') + '円'),
                ),
                _buildTableRow(
                  _buildText('Ⅱ ' + (input2_6 ?? '') + ' 費'),
                  _buildText('１か月当たり 約' + (input2_7 ?? '') + '円'),
                ),
                _buildTableRow(
                  _buildText('Ⅲ ' + (input2_8 ?? '') + ' 費'),
                  _buildText('１か月当たり 約' + (input2_9 ?? '') + '円'),
                ),
                _buildTableRow(
                  _buildText('Ⅳ ' + (input2_10 ?? '') + ' 費'),
                  _buildText('１か月当たり 約' + (input2_11 ?? '') + '円'),
                ),
                _buildTableRow(
                  _buildText('Ⅴ ' + (input2_12 ?? '') + ' 費'),
                  _buildText('１か月当たり 約' + (input2_13 ?? '') + '円'),
                ),
              ]),
              paddingCol2: false,
            ),
            _buildTableRow(
              _buildText('③特定技能外国人が定期に負担する費用に関し特定技能外国人が受ける具体的な便益の内容'),
              _buildText(input2_14 ?? ''),
            ),
            _buildTableRow(
              _buildText('④ 費用が実費に相当する額その他の適正な額であることの説明'),
              _buildText(input2_15 ?? ''),
            ),
          ],
        ),
        SizedBox(height: 8),
        _buildText('１②から④までは，①で有にチェックを付した場合にのみ記載すること。'),
        _buildText('２②は，食費・居住費・水道光熱費以外に特定技能外国人が定期に負担する費用について，費目ごとに記載すること。'),
        _buildText(
            '３③及び④は，特定技能外国人が定期に負担すること及びその負担額が合理的なものであることについて，説明が適切にされなければならない。'),
        _buildText('上記の記載内容は，事実と相違ありません。'),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: _buildText(
            input2_16 == null || input2_16 == ''
                ? ''
                : (input2_16!.split('/')[0] +
                    '年 ' +
                    input2_16!.split('/')[1] +
                    '月 ' +
                    input2_16!.split('/')[2] +
                    '日   作成'),
          ),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: _buildText('特定技能所属機関の氏名又は名称 ' + (input2_17 ?? '')),
        ),
        SizedBox(height: 20),
        Align(
          alignment: Alignment.centerRight,
          child: _buildText('作 成 責 任 者 役 職 ・ 氏 名    ' +
              (input2_18 ?? '') +
              ' ' +
              (input2_19 ?? '')),
        ),
      ],
    ));
  }

  void _buildPage(Widget widget) {
    pdf.addPage(
      Page(
        pageFormat: PdfPageFormat.a4,
        build: (Context context) {
          return widget;
        },
      ),
    );
  }

  TableRow _buildTableRow(Widget col1, Widget col2,
      {bool paddingCol1 = true, bool paddingCol2 = true}) {
    return TableRow(children: [
      Padding(
        padding: paddingCol1
            ? const EdgeInsets.symmetric(horizontal: 6, vertical: 4)
            : const EdgeInsets.all(0),
        child: col1,
      ),
      Padding(
        padding: paddingCol2
            ? const EdgeInsets.symmetric(horizontal: 6, vertical: 4)
            : const EdgeInsets.all(0),
        child: col2,
      ),
    ]);
  }

  Widget _buildText(String text, {double? fontSize = 10}) {
    return Text(text, style: TextStyle(font: font, fontSize: fontSize));
  }
}

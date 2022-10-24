import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';

class PdfTemplate6116 extends PDFTemplate {
  PdfTemplate6116(this.inputs);

  final List<List<String>> inputs;

  late Font font;
  late Font fontMedium;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    fontMedium = await PdfGoogleFonts.mPLUSRounded1cMedium();
    final pdf = Document();

    List<String> ins1 = inputs[0];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 2 * cm,
            marginBottom: 2 * cm,
            marginLeft: 1.5 * cm,
            marginRight: 1.0 * cm),
        build: (Context context) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildText('参考様式第１－ 1 6 号', font, fontSize: 11),
                SizedBox(height: 26),
                Center(
                    child: _buildText('雇  用  の  経  緯  に  係  る  説  明  書', font,
                        fontSize: 16)),
                SizedBox(height: 26),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildText('  特定技能外国人', font, fontSize: 11),
                  Container(
                      width: 160,
                      height: 14,
                      alignment: Alignment.center,
                      decoration: _myUnderLine('#000000', width: 0.5),
                      child: _buildText(ins1[0], font, fontSize: 11)),
                  _buildText('との間で特定技能雇用契約を締結するに当たっての雇用', font, fontSize: 11),
                ]),
                _buildText('の経緯は以下のとおりです。', font, fontSize: 11),
                SizedBox(height: 20),
                _buildText('１ 職業紹介事業者（国内）', font, fontSize: 11),
                Table(
                    columnWidths: {
                      0: const FractionColumnWidth(0.287),
                      1: const FlexColumnWidth(),
                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(children: [
                        Container(
                            height: 18,
                            alignment: Alignment.centerLeft,
                            child:
                                _buildText('  １  あっせんの有無', font, fontSize: 10)),
                        Container(
                            height: 18,
                            alignment: Alignment.centerLeft,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 3, left: 2),
                                    child: Checkbox(
                                      name: '',
                                      value: ins1[1] == '1' ? true : false,
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
                                  _buildText('  有', font, fontSize: 10),
                                  SizedBox(width: 160),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 3, left: 2),
                                    child: Checkbox(
                                      name: '',
                                      value: ins1[1] == '2' ? true : false,
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
                                  _buildText('  無', font, fontSize: 10),
                                ]))
                      ]),
                      // Row 2
                      TableRow(children: [
                        Container(
                            height: 30,
                            alignment: Alignment.centerLeft,
                            child: _buildDoubleLineText('  ２  許可・届出受理番号', font,
                                '\t\t\t\t\t\t（受理受付年月日）', font,
                                fontSize: 10, space: 0, ratio: 1)),
                        Container(
                            height: 30,
                            alignment: Alignment.centerLeft,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 2),
                                  _buildText(
                                      ins1[2] == ''
                                          ? ''
                                          : ins1[2].split('-')[0],
                                      font,
                                      fontSize: 10),
                                  _buildText(' - ', font, fontSize: 10),
                                  _buildText(
                                      ins1[2] == ''
                                          ? ''
                                          : ins1[2].split('-')[1],
                                      font,
                                      fontSize: 10),
                                  _buildText(' - ', font, fontSize: 10),
                                  _buildText(
                                      ins1[2] == ''
                                          ? ''
                                          : ins1[2].split('-')[2],
                                      font,
                                      fontSize: 10),
                                  SizedBox(width: 80),
                                  _buildText(
                                      '(' +
                                          (ins1[3] == ''
                                              ? ''
                                              : ins1[3].split('/')[0]) +
                                          ' 年' +
                                          (ins1[3] == ''
                                              ? ''
                                              : ins1[3].split('/')[1]) +
                                          ' 月' +
                                          (ins1[3] == ''
                                              ? ''
                                              : ins1[3].split('/')[2]) +
                                          ' 日)',
                                      font,
                                      fontSize: 10),
                                ]))
                      ]),
                      // Row 3
                      TableRow(children: [
                        Container(
                            height: 18,
                            alignment: Alignment.centerLeft,
                            child: _buildText('  3  職業紹介事業者の区分', font,
                                fontSize: 10)),
                        Container(
                            height: 18,
                            alignment: Alignment.centerLeft,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 3, left: 2),
                                    child: Checkbox(
                                      name: '',
                                      value: ins1[4] == '1' ? true : false,
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
                                  _buildText('  有料職業紹介事業者 ', font,
                                      fontSize: 10),
                                  SizedBox(width: 80),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 3, left: 2),
                                    child: Checkbox(
                                      name: '',
                                      value: ins1[4] == '2' ? true : false,
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
                                  _buildText('  無料職業紹介事業者', font, fontSize: 10),
                                ]))
                      ]),
                      // Row 4
                      TableRow(children: [
                        Container(
                            height: 30,
                            alignment: Alignment.centerLeft,
                            child: _buildText('  4  職業紹介事業者の氏名', font,
                                fontSize: 10)),
                        Container(
                            height: 30,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 2),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildText(ins1[5], font, fontSize: 10),
                                  _buildText(ins1[6], font, fontSize: 10)
                                ]))
                      ]),
                      // Row 5
                      TableRow(children: [
                        Container(
                            height: 46,
                            alignment: Alignment.centerLeft,
                            child: _buildDoubleLineText('  5  職業紹介事業者の住所', font,
                                '\t\t\t\t\t\t(電話番号)', font,
                                fontSize: 10, space: 0, ratio: 1)),
                        Container(
                            height: 46,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 2),
                            child: Table(columnWidths: {
                              0: const FractionColumnWidth(0.3),
                              1: const FlexColumnWidth(),
                            }, children: [
                              TableRow(children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      _buildText('〒  ', font, fontSize: 10),
                                      _buildText(ins1[7], font, fontSize: 10),
                                      _buildText(' - ', font, fontSize: 10),
                                      _buildText(ins1[8], font, fontSize: 10),
                                    ]),
                                _buildText(ins1[9], font, fontSize: 10),
                              ]),
                              TableRow(children: [
                                _buildText('', font, fontSize: 10),
                                _buildText(ins1[10], font, fontSize: 10),
                              ]),
                              TableRow(children: [
                                _buildText('', font, fontSize: 10),
                                Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: _buildText(
                                        '(電話番号 ' +
                                            ins1[11] +
                                            ' - ' +
                                            ins1[12] +
                                            ' - ' +
                                            ins1[13] +
                                            ' )',
                                        font,
                                        fontSize: 10)),
                              ]),
                            ]))
                      ]),
                      // Row 6
                      TableRow(children: [
                        Container(
                            height: 80,
                            alignment: Alignment.centerLeft,
                            child: _buildDoubleLineText(
                                '  6  職業紹介事業者へ支払', font, '\t\t\tった費用', font,
                                fontSize: 10, space: 0, ratio: 1)),
                        Container(
                            height: 80,
                            alignment: Alignment.centerLeft,
                            child: Table(
                                columnWidths: {
                                  0: const FractionColumnWidth(0.3),
                                  1: const FractionColumnWidth(0.143),
                                  2: const FlexColumnWidth(),
                                },
                                border: TableBorder.all(),
                                children: [
                                  TableRow(children: [
                                    Container(
                                      height: 40,
                                      child: Center(
                                          child: _buildDoubleLineText(
                                              '\t求職者', font, '(申請人)', font,
                                              fontSize: 10,
                                              ratio: 1,
                                              space: 0)),
                                    ),
                                    Container(
                                      height: 40,
                                      child: Table(
                                          border: TableBorder.all(
                                              style: BorderStyle.dashed),
                                          children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: _buildText('額', font,
                                                      fontSize: 10)),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: _buildText('名目', font,
                                                      fontSize: 10)),
                                            ]),
                                          ]),
                                    ),
                                    Container(
                                      height: 40,
                                      child: Table(
                                          border: TableBorder.all(
                                              style: BorderStyle.dashed),
                                          children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        _buildText(
                                                            ins1[14], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 4),
                                                        _buildText(
                                                            ins1[15], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 4),
                                                        _buildText(
                                                            '(' +
                                                                '  ' +
                                                                ins1[16] +
                                                                '  円）',
                                                            font,
                                                            fontSize: 10),
                                                      ])),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        _buildText(
                                                            ins1[17], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 10),
                                                        _buildText('として', font,
                                                            fontSize: 10)
                                                      ])),
                                            ]),
                                          ]),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      height: 40,
                                      child: Center(
                                          child: _buildDoubleLineText(
                                              '\t\t\t\t\t\t\t\t\t\t\t\t求人者',
                                              font,
                                              '（特定技能所属機関）',
                                              font,
                                              fontSize: 10,
                                              ratio: 1,
                                              space: 0)),
                                    ),
                                    Container(
                                      height: 40,
                                      child: Table(
                                          border: TableBorder.all(
                                              style: BorderStyle.dashed),
                                          children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: _buildText('額', font,
                                                      fontSize: 10)),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: _buildText('名目', font,
                                                      fontSize: 10)),
                                            ]),
                                          ]),
                                    ),
                                    Container(
                                      height: 40,
                                      child: Table(
                                          border: TableBorder.all(
                                              style: BorderStyle.dashed),
                                          children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        _buildText(
                                                            ins1[18], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 4),
                                                        _buildText(
                                                            ins1[19], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 4),
                                                        _buildText(
                                                            '(' +
                                                                '  ' +
                                                                ins1[20] +
                                                                '  円）',
                                                            font,
                                                            fontSize: 10),
                                                      ])),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        _buildText(
                                                            ins1[21], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 10),
                                                        _buildText('として', font,
                                                            fontSize: 10)
                                                      ])),
                                            ]),
                                          ]),
                                    ),
                                  ]),
                                ]))
                      ]),
                    ]),
                _buildText(' (注意)', font, fontSize: 8.2),
                _buildText('1   １欄で無にチェックを付した場合には、２以下の欄の記載は不要とする。', font,
                    fontSize: 8.2),
                _buildText(
                    '2   ２から５欄までは、厚生労働省職業安定局ホームページの「人材サービス総合サイト」を活用し、当該職業紹介事業者についての該当する\n\t\t\t\t情報を記入すること。また、併せて当該情報が掲載されている画面の写しを添付すること。',
                    font,
                    fontSize: 8.2),
                _buildText(
                    '3   ６欄は、求職者及び求人者が職業紹介事業者に支払った額及び名目について記載すること。なお、求職者が日本円以外で費用を支払った場\n\t\t\t\t  合は、当該通貨で支払った額及び日本円に換算した額を記載すること。',
                    font,
                    fontSize: 8.2),
                _buildText('4   職業紹介事業者との間で交わした契約書があれば、その写しを添付すること。', font,
                    fontSize: 8.2),
                SizedBox(height: 20),
                _buildText('2 取次機関（国外）（１で有にチェックを付した場合のみ記載）', font,
                    fontSize: 11),
                Table(
                    columnWidths: {
                      0: const FractionColumnWidth(0.287),
                      1: const FlexColumnWidth(),
                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(children: [
                        Container(
                            height: 18,
                            alignment: Alignment.centerLeft,
                            child:
                                _buildText('  １  取次ぎの有無', font, fontSize: 10)),
                        Container(
                            height: 18,
                            alignment: Alignment.centerLeft,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 3, left: 2),
                                    child: Checkbox(
                                      name: '',
                                      value: ins1[22] == '1' ? true : false,
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
                                  _buildText('  有', font, fontSize: 10),
                                  SizedBox(width: 160),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 3, left: 2),
                                    child: Checkbox(
                                      name: '',
                                      value: ins1[22] == '2' ? true : false,
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
                                  _buildText('  無', font, fontSize: 10),
                                ]))
                      ]),
                      // Row 2
                      TableRow(children: [
                        Container(
                            height: 30,
                            alignment: Alignment.centerLeft,
                            child:
                                _buildText('  2  氏名又は名称', font, fontSize: 10)),
                        Container(
                            height: 30,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 2),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildText(ins1[23], font, fontSize: 10),
                                  _buildText(ins1[24], font, fontSize: 10)
                                ]))
                      ]),
                      // Row 3
                      TableRow(children: [
                        Container(
                            height: 30,
                            alignment: Alignment.centerLeft,
                            child: _buildText('  3  所在国', font, fontSize: 10)),
                        Container(
                            height: 30,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 2),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildText(ins1[25], font, fontSize: 10),
                                  _buildText(ins1[26], font, fontSize: 10)
                                ]))
                      ]),
                      // Row 4
                      TableRow(children: [
                        Container(
                            height: 46,
                            alignment: Alignment.centerLeft,
                            child: _buildText('  4  所在地', font, fontSize: 10)),
                        Container(
                            height: 46,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 2, right: 6),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildText(ins1[27], font, fontSize: 10),
                                  _buildText(ins1[28], font, fontSize: 10),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: _buildText(
                                        '(電話番号 ' +
                                            ins1[29] +
                                            ' - ' +
                                            ins1[30] +
                                            ' - ' +
                                            ins1[31] +
                                            ' )',
                                        font,
                                        fontSize: 10),
                                  )
                                ]))
                      ]),
                      // Row 5
                      TableRow(children: [
                        Container(
                            height: 80,
                            alignment: Alignment.centerLeft,
                            child: _buildDoubleLineText(
                                '  5  取次機関へ支払った費', font, '\t\t\t用', font,
                                fontSize: 10, space: 0, ratio: 1)),
                        Container(
                            height: 80,
                            alignment: Alignment.centerLeft,
                            child: Table(
                                columnWidths: {
                                  0: const FractionColumnWidth(0.3),
                                  1: const FractionColumnWidth(0.143),
                                  2: const FlexColumnWidth(),
                                },
                                border: TableBorder.all(),
                                children: [
                                  TableRow(children: [
                                    Container(
                                      height: 40,
                                      child: Center(
                                          child: _buildDoubleLineText(
                                              '\t求職者', font, '(申請人)', font,
                                              fontSize: 10,
                                              ratio: 1,
                                              space: 0)),
                                    ),
                                    Container(
                                      height: 40,
                                      child: Table(
                                          border: TableBorder.all(
                                              style: BorderStyle.dashed),
                                          children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: _buildText('額', font,
                                                      fontSize: 10)),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: _buildText('名目', font,
                                                      fontSize: 10)),
                                            ]),
                                          ]),
                                    ),
                                    Container(
                                      height: 40,
                                      child: Table(
                                          border: TableBorder.all(
                                              style: BorderStyle.dashed),
                                          children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        _buildText(
                                                            ins1[32], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 4),
                                                        _buildText(
                                                            ins1[33], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 4),
                                                        _buildText(
                                                            '(' +
                                                                '  ' +
                                                                ins1[34] +
                                                                '  円）',
                                                            font,
                                                            fontSize: 10),
                                                      ])),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        _buildText(
                                                            ins1[35], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 10),
                                                        _buildText('として', font,
                                                            fontSize: 10)
                                                      ])),
                                            ]),
                                          ]),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Container(
                                      height: 40,
                                      child: Center(
                                          child: _buildDoubleLineText(
                                              '\t\t\t\t\t\t\t\t\t\t\t\t求人者',
                                              font,
                                              '（特定技能所属機関）',
                                              font,
                                              fontSize: 10,
                                              ratio: 1,
                                              space: 0)),
                                    ),
                                    Container(
                                      height: 40,
                                      child: Table(
                                          border: TableBorder.all(
                                              style: BorderStyle.dashed),
                                          children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: _buildText('額', font,
                                                      fontSize: 10)),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: _buildText('名目', font,
                                                      fontSize: 10)),
                                            ]),
                                          ]),
                                    ),
                                    Container(
                                      height: 40,
                                      child: Table(
                                          border: TableBorder.all(
                                              style: BorderStyle.dashed),
                                          children: [
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        _buildText(
                                                            ins1[36], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 4),
                                                        _buildText(
                                                            ins1[37], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 4),
                                                        _buildText(
                                                            '(' +
                                                                '  ' +
                                                                ins1[38] +
                                                                '  円）',
                                                            font,
                                                            fontSize: 10),
                                                      ])),
                                            ]),
                                            TableRow(children: [
                                              Container(
                                                  height: 20,
                                                  alignment: Alignment.center,
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 6),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        _buildText(
                                                            ins1[39], font,
                                                            fontSize: 10),
                                                        SizedBox(width: 10),
                                                        _buildText('として', font,
                                                            fontSize: 10)
                                                      ])),
                                            ]),
                                          ]),
                                    ),
                                  ]),
                                ]))
                      ]),
                    ]),
              ]);
        },
      ),
    );

    // Page 2
    List<String> ins2 = inputs[1];
    pdf.addPage(
      Page(
        pageFormat: const PdfPageFormat(21.0 * cm, 29.7 * cm,
            marginTop: 2 * cm,
            marginBottom: 2 * cm,
            marginLeft: 1.5 * cm,
            marginRight: 1.0 * cm),
        build: (Context context) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildText(' (注意)', font, fontSize: 8.2),
                _buildText(
                    '1   取次機関とは、職業紹介事業者が求人者に求職者のあっせんを行うに際し、当該職業紹介事業主に対し求職者等に係る情報の取次ぎを行う\n\t\t\t\t者をいう。',
                    font,
                    fontSize: 8.2),
                _buildText('2   １欄で無にチェックを付した場合には、２以下の欄の記載は不要とする。', font,
                    fontSize: 8.2),
                _buildText(
                    '3   ５欄は、求職者及び求人者が取次機関に支払った額及び名目について記載すること。なお、求職者及び求人者が日本円以外で費用を支払っ\n\t\t\t\tた場合は、当該通貨で支払った額及び日本円に換算した額を記載すること。',
                    font,
                    fontSize: 8.2),
                _buildText('4   取次機関との間で交わした契約書があれば、その写しを添付すること。', font,
                    fontSize: 8.2),
                SizedBox(height: 20),
                _buildText('3 事前ガイダンスの実施', font, fontSize: 11),
                Table(
                    columnWidths: {
                      0: const FractionColumnWidth(0.777),
                      1: const FlexColumnWidth(),
                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(children: [
                        Container(
                            height: 20,
                            alignment: Alignment.centerLeft,
                            child: _buildText(
                                '  第１号特定技能外国人支援計画に定めるとおりに実施していることの有無 ', font,
                                fontSize: 11)),
                        Container(
                            height: 20,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(children: [
                                    _buildText('有', font, fontSize: 11),
                                    _buildText(ins2[0] == '1' ? '◯' : '', font,
                                        fontSize: 12)
                                  ]),
                                  _buildText('   ・   ', font, fontSize: 11),
                                  Stack(children: [
                                    _buildText('無', font, fontSize: 11),
                                    _buildText(ins2[0] == '2' ? '◯' : '', font,
                                        fontSize: 12)
                                  ])
                                ]))
                      ])
                    ]),
                SizedBox(height: 20),
                _buildText(
                    '  以上の１から３までの内容について相違ありません。なお、求職者（申請人）が在留資格「特定技能」の活', font,
                    fontSize: 10.5),
                _buildText(
                    '動を行うことに関連して保証金、違約金の支払等の不適切な費用徴収がされていないことを本人から聞き取', font,
                    fontSize: 10.5),
                _buildText('るなどして確認しています。', font, fontSize: 10.5),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  _buildText('作成年月日： ', font, fontSize: 11),
                  SizedBox(width: 6),
                  _buildText(ins2[7] == '' ? '' : ins2[7].split('/')[0], font,
                      fontSize: 11),
                  _buildText(' 年', font, fontSize: 11),
                  SizedBox(width: 6),
                  _buildText(ins2[7] == '' ? '' : ins2[7].split('/')[1], font,
                      fontSize: 11),
                  _buildText(' 月', font, fontSize: 11),
                  SizedBox(width: 6),
                  _buildText(ins2[7] == '' ? '' : ins2[7].split('/')[2], font,
                      fontSize: 11),
                  _buildText(' 日', font, fontSize: 11),
                ]),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: _buildText('特定技能所属機関の氏名又は名称', font, fontSize: 11)),
                  SizedBox(width: 6),
                  Container(
                      width: 180,
                      height: 24,
                      alignment: Alignment.centerLeft,
                      decoration: _myUnderLine('#000000', width: 0.5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: -8),
                                child: _buildText(ins2[1], font, fontSize: 11)),
                            Padding(
                                padding: const EdgeInsets.only(),
                                child: _buildText(ins2[2], font, fontSize: 11)),
                          ])),
                ]),
                SizedBox(height: 6),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: _buildText('作 成 責 任 者 の 氏 名 及 び 役 職', font,
                          fontSize: 11)),
                  SizedBox(width: 6),
                  Container(
                      width: 180,
                      height: 24,
                      alignment: Alignment.centerLeft,
                      decoration: _myUnderLine('#000000', width: 0.5),
                      padding: const EdgeInsets.only(top: -6),
                      child: Table(columnWidths: {
                        0: const FractionColumnWidth(0.5),
                        1: const FlexColumnWidth(),
                      }, children: [
                        TableRow(children: [
                          Padding(
                              padding: const EdgeInsets.only(top: -2),
                              child: _buildText(ins2[3], font, fontSize: 11)),
                          Padding(
                              padding: const EdgeInsets.only(top: -2),
                              child: _buildText(ins2[4], font, fontSize: 11)),
                        ]),
                        TableRow(children: [
                          _buildText(ins2[5], font, fontSize: 11),
                          _buildText(ins2[6], font, fontSize: 11),
                        ]),
                      ])),
                ]),
                SizedBox(height: 10),
                _buildText('4 求職者（申請人）が自国等の機関に支払った費用', font, fontSize: 11),
                Table(
                    columnWidths: {
                      0: const FractionColumnWidth(0.663),
                      1: const FlexColumnWidth(),
                    },
                    border: TableBorder.all(),
                    children: [
                      TableRow(children: [
                        // Column 1
                        Table(
                            columnWidths: {
                              0: const FractionColumnWidth(0.055),
                              1: const FractionColumnWidth(0.358),
                              2: const FractionColumnWidth(0.294),
                              3: const FlexColumnWidth(),
                            },
                            border: TableBorder.all(),
                            children: [
                              TableRow(children: [
                                _buildText('', font, fontSize: 10),
                                Container(
                                  alignment: Alignment.center,
                                  child: _buildText('支払先機関の名称', font,
                                      fontSize: 10),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: _buildText('名目', font, fontSize: 10),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child:
                                      _buildText('支払年月日', font, fontSize: 10),
                                ),
                              ]),
                              // Row 1
                              TableRow(children: [
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('1', font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[8], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[9], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(right: 2),
                                  child: _buildText(
                                      ins2[10] == ''
                                          ? ''
                                          : ins2[10].split('/')[0] +
                                                      ' 年 ' +
                                                      ins2[10] ==
                                                  ''
                                              ? ''
                                              : ins2[10].split('/')[1] +
                                                          ' 月 ' +
                                                          ins2[10] ==
                                                      ''
                                                  ? ''
                                                  : ins2[10].split('/')[2] +
                                                      ' 日 ',
                                      font,
                                      fontSize: 10),
                                ),
                              ]),
                              // Row 2
                              TableRow(children: [
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('2', font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[14], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[15], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(right: 2),
                                  child: _buildText(
                                      ins2[16] == ''
                                          ? ''
                                          : ins2[16].split('/')[0] +
                                                      ' 年 ' +
                                                      ins2[16] ==
                                                  ''
                                              ? ''
                                              : ins2[16].split('/')[1] +
                                                          ' 月 ' +
                                                          ins2[16] ==
                                                      ''
                                                  ? ''
                                                  : ins2[16].split('/')[2] +
                                                      ' 日 ',
                                      font,
                                      fontSize: 10),
                                ),
                              ]),
                              // Row 3
                              TableRow(children: [
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('3', font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[20], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[21], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(right: 2),
                                  child: _buildText(
                                      ins2[22] == ''
                                          ? ''
                                          : ins2[22].split('/')[0] +
                                                      ' 年 ' +
                                                      ins2[22] ==
                                                  ''
                                              ? ''
                                              : ins2[22].split('/')[1] +
                                                          ' 月 ' +
                                                          ins2[22] ==
                                                      ''
                                                  ? ''
                                                  : ins2[22].split('/')[2] +
                                                      ' 日 ',
                                      font,
                                      fontSize: 10),
                                ),
                              ]),
                              // Row 4
                              TableRow(children: [
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('4', font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[26], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[27], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(right: 2),
                                  child: _buildText(
                                      ins2[28] == ''
                                          ? ''
                                          : ins2[28].split('/')[0] +
                                                      ' 年 ' +
                                                      ins2[28] ==
                                                  ''
                                              ? ''
                                              : ins2[28].split('/')[1] +
                                                          ' 月 ' +
                                                          ins2[28] ==
                                                      ''
                                                  ? ''
                                                  : ins2[28].split('/')[2] +
                                                      ' 日 ',
                                      font,
                                      fontSize: 10),
                                ),
                              ]),
                              // Row 5
                              TableRow(children: [
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child: _buildText('5', font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[32], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.center,
                                  child:
                                      _buildText(ins2[33], font, fontSize: 10),
                                ),
                                Container(
                                  height: 28,
                                  alignment: Alignment.centerRight,
                                  padding: const EdgeInsets.only(right: 2),
                                  child: _buildText(
                                      ins2[34] == ''
                                          ? ''
                                          : ins2[34].split('/')[0] +
                                                      ' 年 ' +
                                                      ins2[34] ==
                                                  ''
                                              ? ''
                                              : ins2[34].split('/')[1] +
                                                          ' 月 ' +
                                                          ins2[34] ==
                                                      ''
                                                  ? ''
                                                  : ins2[34].split('/')[2] +
                                                      ' 日 ',
                                      font,
                                      fontSize: 10),
                                ),
                              ]),
                            ]),
                        // Column 2
                        Table(border: TableBorder.all(), children: [
                          TableRow(children: [
                            Container(
                              alignment: Alignment.center,
                              child: _buildText('支払金額', font, fontSize: 10),
                            ),
                          ]),
                          // Row 1
                          TableRow(children: [
                            Container(
                              height: 28,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left: 2),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          _buildText(ins2[11], font,
                                              fontSize: 10),
                                          SizedBox(width: 6),
                                          _buildText(ins2[12], font,
                                              fontSize: 10),
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          _buildText('( ', font, fontSize: 10),
                                          _buildText(ins2[13], font,
                                              fontSize: 10),
                                          _buildText(' 円）', font, fontSize: 10),
                                        ]),
                                  ]),
                            ),
                          ]),
                          // Row 2
                          TableRow(children: [
                            Container(
                              height: 28,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left: 2),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          _buildText(ins2[17], font,
                                              fontSize: 10),
                                          SizedBox(width: 6),
                                          _buildText(ins2[18], font,
                                              fontSize: 10),
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          _buildText('( ', font, fontSize: 10),
                                          _buildText(ins2[19], font,
                                              fontSize: 10),
                                          _buildText(' 円）', font, fontSize: 10),
                                        ]),
                                  ]),
                            ),
                          ]),
                          // Row 3
                          TableRow(children: [
                            Container(
                              height: 28,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left: 2),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          _buildText(ins2[23], font,
                                              fontSize: 10),
                                          SizedBox(width: 6),
                                          _buildText(ins2[24], font,
                                              fontSize: 10),
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          _buildText('( ', font, fontSize: 10),
                                          _buildText(ins2[25], font,
                                              fontSize: 10),
                                          _buildText(' 円）', font, fontSize: 10),
                                        ]),
                                  ]),
                            ),
                          ]),
                          // Row 4
                          TableRow(children: [
                            Container(
                              height: 28,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left: 2),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          _buildText(ins2[29], font,
                                              fontSize: 10),
                                          SizedBox(width: 6),
                                          _buildText(ins2[30], font,
                                              fontSize: 10),
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          _buildText('( ', font, fontSize: 10),
                                          _buildText(ins2[31], font,
                                              fontSize: 10),
                                          _buildText(' 円）', font, fontSize: 10),
                                        ]),
                                  ]),
                            ),
                          ]),
                          // Row 5
                          TableRow(children: [
                            Container(
                              height: 28,
                              alignment: Alignment.center,
                              padding: const EdgeInsets.only(left: 2),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          _buildText(ins2[35], font,
                                              fontSize: 10),
                                          SizedBox(width: 6),
                                          _buildText(ins2[36], font,
                                              fontSize: 10),
                                        ]),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          _buildText('( ', font, fontSize: 10),
                                          _buildText(ins2[37], font,
                                              fontSize: 10),
                                          _buildText(' 円）', font, fontSize: 10),
                                        ]),
                                  ]),
                            ),
                          ]),
                        ]),
                      ]),
                      TableRow(children: [
                        _buildText('', font, fontSize: 10),
                        Container(
                          height: 28,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 2, right: 2),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      _buildText(ins2[38], font, fontSize: 10),
                                      SizedBox(width: 6),
                                      _buildText(ins2[39], font, fontSize: 10),
                                      SizedBox(width: 6),
                                      _buildText('計', font, fontSize: 10),
                                    ]),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      _buildText('( ', font, fontSize: 10),
                                      _buildText(ins2[40], font, fontSize: 10),
                                      _buildText(' 円）', font, fontSize: 10),
                                    ]),
                              ]),
                        ),
                      ])
                    ]),
                _buildText(' (注意)', font, fontSize: 8.2),
                _buildText(
                    '1   自国等の機関は、特段対象を限定するものではなく、特定技能雇用契約の申込みの取次ぎ又は活動の準備に関与した全ての機関をい\n\t\t\t\tう。',
                    font,
                    fontSize: 8.2),
                _buildText(
                    '2   支払金額については、現地通貨又は米ドルで記載し、括弧書きで日本円に換算した金額を記載すること。', font,
                    fontSize: 8.2),
                _buildText('3   名目については、申請人に示した名目どおりに記載すること。', font,
                    fontSize: 8.2),
                SizedBox(height: 20),
                _buildText(
                    '   特定技能雇用契約の申込みの取次ぎ又は在留資格「特定技能」に係る活動の準備に関して、自国等', font,
                    fontSize: 11),
                _buildText(
                    'の機関に対し、上記の費用の額及び内訳について十分に理解した上で支払いました。また、上記の費', font,
                    fontSize: 11),
                _buildText('用以外の費用については、徴収されていません。', font, fontSize: 11),
                SizedBox(height: 40),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  _buildText('申   請   人  の  署  名', font, fontSize: 11),
                  SizedBox(width: 6),
                  Container(
                      width: 190,
                      height: 14,
                      alignment: Alignment.center,
                      decoration: _myUnderLine('#000000', width: 0.5),
                      child: _buildText('ins1[0]', font, fontSize: 11)),
                  SizedBox(width: 40),
                ])
              ]);
        },
      ),
    );

    return await pdf.save();
  }

  static Widget _buildText(String text, Font font, {double fontSize = 0}) {
    if (fontSize == 0) {
      return Text(text, style: TextStyle(font: font));
    } else {
      return Text(text, style: TextStyle(font: font, fontSize: fontSize));
    }
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

  static const double inch = 72.0;
  static const double cm = inch / 2.54;
}

import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

import 'package:pdf/pdf.dart';

class PdfTemplate516 extends PDFTemplate {
  PdfTemplate516();
  // PdfTemplate516(this.inputs);

  // final List<List<String>> inputs;

  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();

    _buildPage1();
    _buildPage2();
    _buildPage3();

    return await pdf.save();
  }

  void _buildPage3() {
    List<String> ins = [
      '2022/10/22',
      'Quang',
      '2022/10/23',
      '2022/10/24',
      '2022/10/25',
      '                                          ',
      '         ',
      '                   ',
    ];
    String year1 = ins[0] == '' ? '' : ins[0].split('/')[0];
    String month1 = ins[0] == '' ? '' : ins[0].split('/')[1];
    String day1 = ins[0] == '' ? '' : ins[0].split('/')[2];

    String year2 = ins[2] == '' ? '' : ins[2].split('/')[0];
    String month2 = ins[2] == '' ? '' : ins[2].split('/')[1];
    String day2 = ins[2] == '' ? '' : ins[2].split('/')[2];

    String year3 = ins[3] == '' ? '' : ins[3].split('/')[0];
    String month3 = ins[3] == '' ? '' : ins[3].split('/')[1];
    String day3 = ins[3] == '' ? '' : ins[3].split('/')[2];

    String year4 = ins[4] == '' ? '' : ins[4].split('/')[0];
    String month4 = ins[4] == '' ? '' : ins[4].split('/')[1];
    String day4 = ins[4] == '' ? '' : ins[4].split('/')[2];

    buildPage(Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
        alignment: Alignment.centerLeft,
        child: _buildText('参考様式第１－６号 別紙', fontSize: 9),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        alignment: Alignment.bottomCenter,
        child: _buildText('賃             金             の             支             払', fontSize: 14),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
        child: _buildText('１．基本賃金', fontSize: 9),
      ),
      Row(children: [
        Padding(
          padding: const EdgeInsets.only(top: 1, left: 20),
          child: Checkbox(
            name: '',
            // value: ins2[3] == '1' ? true : false,
            value: false,
            width: 8,
            height: 8,
            decoration: _buildBoxAllSide(),
            activeColor: PdfColor.fromHex('#000000'),
          ),
        ),
        _buildText(' 月給（' + ins[6] + ' 円）', fontSize: 9),
        Padding(
          padding: const EdgeInsets.only(top: 1, left: 20),
          child: Checkbox(
            name: '',
            // value: ins2[3] == '1' ? true : false,
            value: false,
            width: 8,
            height: 8,
            decoration: _buildBoxAllSide(),
            activeColor: PdfColor.fromHex('#000000'),
          ),
        ),
        _buildText(' 日給（' + ins[6] + ' 円）', fontSize: 9),
        Padding(
          padding: const EdgeInsets.only(top: 1, left: 20),
          child: Checkbox(
            name: '',
            // value: ins2[3] == '1' ? true : false,
            value: false,
            width: 8,
            height: 8,
            decoration: _buildBoxAllSide(),
            activeColor: PdfColor.fromHex('#000000'),
          ),
        ),
        _buildText(' 時間給（' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 0, 5),
        child: _buildText('※月給・日給の場合の１時間当たりの金額（' + ins[6] + ' 円）', fontSize: 9),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
        child: _buildText('※日給・時間給の場合の１か月当たりの金額（' + ins[6] + ' 円）', fontSize: 9),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: _buildText('２．諸手当の額及び計算方法（時間外労働の割増賃金は除く。）', fontSize: 9),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 0, 5),
        child: _buildText('(a) （' + ins[6] + ' 手当' + ins[6] + ' 円／計算方法：' + ins[6] + '）', fontSize: 9),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 0, 5),
        child: _buildText('(b) （' + ins[6] + ' 手当' + ins[6] + ' 円／計算方法：' + ins[6] + '）', fontSize: 9),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 0, 5),
        child: _buildText('(c) （' + ins[6] + ' 手当' + ins[6] + ' 円／計算方法：' + ins[6] + '）', fontSize: 9),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
        child: _buildText('(d) （' + ins[6] + ' 手当' + ins[6] + ' 円／計算方法：' + ins[6] + '）', fontSize: 9),
      ),
      Row(children: [
        Container(
          width: 300,
          padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
          child: _buildText('３．１か月当たりの支払概算額（１＋２） ', fontSize: 9),
        ),
        Container(decoration: _buildBoxUnderLine(width: 0.5), child: _buildText('約' + ins[5] + ' 円（合計）', fontSize: 9))
      ]),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: _buildText('４．賃金支払時に控除する項目', fontSize: 9),
      ),
      Row(children: [
        Container(
          width: 160,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('(a) 税           金', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 160,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('(b) 社会保険料 ', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 160,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('(c) 雇用保険料', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 160,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('(d) 食           費', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 160,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('(e) 居    住    費 ', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 70,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('(f) その他', fontSize: 9),
        ),
        Container(
          width: 90,
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: _buildText('（水道光熱費）', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 70,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('', fontSize: 9),
        ),
        Container(
          width: 90,
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: _buildText('（' + ins[7] + '）', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 70,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('', fontSize: 9),
        ),
        Container(
          width: 90,
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: _buildText('（' + ins[7] + '）', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 70,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('', fontSize: 9),
        ),
        Container(
          width: 90,
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: _buildText('（' + ins[7] + '）', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 70,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('', fontSize: 9),
        ),
        Container(
          width: 90,
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: _buildText('（' + ins[7] + '）', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(
          width: 70,
          padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
          child: _buildText('', fontSize: 9),
        ),
        Container(
          width: 90,
          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
          child: _buildText('（' + ins[7] + '）', fontSize: 9),
        ),
        _buildText('（約' + ins[6] + ' 円）', fontSize: 9),
      ]),
      Row(children: [
        Container(width: 285, alignment: Alignment.centerRight, child: _buildText('控除する金額', fontSize: 9)),
        Container(
            margin: const EdgeInsets.only(left: 15),
            decoration: _buildBoxUnderLine(width: 0.5),
            child: _buildText('約' + ins[5] + ' 円（合計）', fontSize: 9))
      ]),
      Row(children: [
        Container(
          width: 300,
          padding: const EdgeInsets.fromLTRB(10, 20, 0, 20),
          child: _buildText('５．手取り支給額（３－４）', fontSize: 9),
        ),
        Container(decoration: _buildBoxUnderLine(width: 0.5), child: _buildText('約' + ins[5] + ' 円（合計）', fontSize: 9))
      ]),
      Container(alignment: Alignment.centerRight, child: _buildText('※欠勤等がない場合であって，時間外労働の割増賃金等は除く。', fontSize: 9))
    ]));
  }

  void _buildPage2() {
    List<String> ins = [
      '2022/10/22',
      'Quang',
      '2022/10/23',
      '2022/10/24',
      '2022/10/25',
      '                                          ',
      '         ',
    ];
    String year1 = ins[0] == '' ? '' : ins[0].split('/')[0];
    String month1 = ins[0] == '' ? '' : ins[0].split('/')[1];
    String day1 = ins[0] == '' ? '' : ins[0].split('/')[2];

    String year2 = ins[2] == '' ? '' : ins[2].split('/')[0];
    String month2 = ins[2] == '' ? '' : ins[2].split('/')[1];
    String day2 = ins[2] == '' ? '' : ins[2].split('/')[2];

    String year3 = ins[3] == '' ? '' : ins[3].split('/')[0];
    String month3 = ins[3] == '' ? '' : ins[3].split('/')[1];
    String day3 = ins[3] == '' ? '' : ins[3].split('/')[2];

    String year4 = ins[4] == '' ? '' : ins[4].split('/')[0];
    String month4 = ins[4] == '' ? '' : ins[4].split('/')[1];
    String day4 = ins[4] == '' ? '' : ins[4].split('/')[2];

    buildPage(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          width: PdfPageFormat.a4.width,
          height: PdfPageFormat.a4.height - 200,
          decoration: _buildBoxAllSide(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ROW 6 Ⅴ．休日
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText(
                    '２．非定例日：週・月当たり' + ins[6] + ' 日，その他（' + ins[6] + '）       ' + '（年間合計休日日数' + ins[6] + ' 日）',
                    fontSize: 9),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: _buildText('○詳細は，就業規則 第     条～第     条，第     条～第     条', fontSize: 9)),
              // ROW 7 Ⅵ．休暇
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                  child: _buildText('Ⅵ．休暇', fontSize: 9),
                ),
              ),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('１．年次有給休暇', fontSize: 9),
                ),
                _buildText('６か月継続勤務した場合→' + ins[6] + ' 日', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('', fontSize: 9),
                ),
                _buildText('継続勤務６か月未満の年次有給休暇（', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 有', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 40),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 無） →' + ins[6] + ' か月経過で' + ins[6] + ' 日', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('２．その他の休暇', fontSize: 9),
                ),
                _buildText('有給（' + ins[6] + '） 無給（' + ins[6] + '）', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: _buildText('３．一時帰国休暇 ', fontSize: 9),
                ),
                _buildText('乙が一時帰国を希望した場合は，上記１及び２の範囲内で必要な休暇を取得させることとする。', fontSize: 9)
              ]),
              Container(
                  alignment: Alignment.centerRight,
                  child: _buildText('○詳細は，就業規則 第     条～第     条，第     条～第     条', fontSize: 9)),
              // ROW 8 Ⅶ．賃金
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: _buildText('Ⅶ．賃金', fontSize: 9),
                ),
              ),
              // Table with double border
              Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  padding: const EdgeInsets.all(1),
                  decoration: _buildBoxAllSide(width: 0.2),
                  child: Container(
                      padding: const EdgeInsets.all(1),
                      decoration: _buildBoxAllSide(width: 0.2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            _buildText('１．基本賃金        ', fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(top: 1, left: 30),
                              child: Checkbox(
                                name: '',
                                // value: ins2[3] == '1' ? true : false,
                                value: false,
                                width: 8,
                                height: 8,
                                decoration: _buildBoxAllSide(),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 月給（' + ins[6] + ' 円） ', fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(top: 1, left: 30),
                              child: Checkbox(
                                name: '',
                                // value: ins2[3] == '1' ? true : false,
                                value: false,
                                width: 8,
                                height: 8,
                                decoration: _buildBoxAllSide(),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 月給（' + ins[6] + ' 円） ', fontSize: 9),
                            Padding(
                              padding: const EdgeInsets.only(top: 1, left: 30),
                              child: Checkbox(
                                name: '',
                                // value: ins2[3] == '1' ? true : false,
                                value: false,
                                width: 8,
                                height: 8,
                                decoration: _buildBoxAllSide(),
                                activeColor: PdfColor.fromHex('#000000'),
                              ),
                            ),
                            _buildText(' 時間給（' + ins[6] + ' 円） ', fontSize: 9),
                          ]),
                          Padding(
                              padding: const EdgeInsets.only(left: 10), child: _buildText('※詳細は別紙のとおり', fontSize: 9)),
                          Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: _buildText('２．諸手当（時間外労働の割増賃金は除く）', fontSize: 9)),
                          Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child:
                                  _buildText('（' + ins[6] + ' 手当，' + ins[6] + ' 手当，' + ins[6] + ' 手当）', fontSize: 9)),
                          Padding(
                              padding: const EdgeInsets.only(left: 10), child: _buildText('※詳細は別紙のとおり', fontSize: 9)),
                        ],
                      ))),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText('３．所定時間外，休日又は深夜労働に対して支払われる割増賃金率', fontSize: 9),
              ),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: _buildText('(1) 所定時間外', fontSize: 9),
                ),
                _buildText('法定超月60時間以内 （' + ins[6] + '）％', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('', fontSize: 9),
                ),
                _buildText('法定超月60時間超 （' + ins[6] + '）％', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('', fontSize: 9),
                ),
                _buildText('所定超 （' + ins[6] + '）％', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: _buildText('(2) 休日 ', fontSize: 9),
                ),
                _buildText('法定休日 （' + ins[6] + ' ）％， 法定外休日 （' + ins[6] + ' ）％', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: _buildText('(3) 深夜', fontSize: 9),
                ),
                _buildText('（' + ins[6] + ' ）％', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('４．賃金締切日 ', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 毎月' + ins[6] + ' 日,', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 40),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 毎月' + ins[6] + ' 日', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('５．賃金支払日', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 毎月' + ins[6] + ' 日,', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 40),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 毎月' + ins[6] + ' 日', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('６．賃金支払方法 ', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText('  口座振込', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 40),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 通貨払', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 200,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('７．労使協定に基づく賃金支払時の控除', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText('  無', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 40),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 有', fontSize: 9),
              ]),
              Padding(padding: const EdgeInsets.only(left: 20), child: _buildText('※詳細は別紙のとおり', fontSize: 9)),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('８．昇給', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 有（時期，金額等 ' + ins[5] + ' ）， ', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 10),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 無', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('９．賞与', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 有（時期，金額等 ' + ins[5] + ' ）， ', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 10),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 無', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('10．退職金', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 有（時期，金額等 ' + ins[5] + ' ）， ', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 10),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 無', fontSize: 9),
              ]),
              Row(children: [
                Container(
                  width: 100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                  child: _buildText('11. 休業手当', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 有（率' + ins[5] + ' ）， ', fontSize: 9),
              ]),

              // ROW 9 Ⅷ．退職に関する事項
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: _buildText('Ⅷ．退職に関する事項', fontSize: 9),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: _buildText('１．自己都合退職の手続（退職する' + ins[6] + ' 日前に社長・工場長等に届けること）', fontSize: 9)),
              Padding(padding: const EdgeInsets.only(left: 10), child: _buildText('２．解雇の事由及び手続', fontSize: 9)),
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: _buildText(
                      '解雇は，やむを得ない事由がある場合に限り少なくとも30日前に予告をするか，又は30日分以上の平均賃金を支払って解雇する。特定技能外国人の責めに帰すべき事由に基づいて解雇する場合には，所轄労働基準監督署長の認定を受けることにより予告 も平均賃金の支払も行わず即時解雇されることもあり得る。',
                      fontSize: 9)),
              Container(
                  alignment: Alignment.centerRight,
                  child: _buildText('○詳細は，就業規則 第    条～第    条，第    条～第    条，第    条～第    条', fontSize: 9)),

              // ROW 10 Ⅸ．その他
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: _buildText('Ⅸ．その他', fontSize: 9),
                ),
              ),
              Row(children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                  child: _buildText('１．社会保険の加入状況・労働保険の適用状況（', fontSize: 9),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 5),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 厚生年金 ，', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 5),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 健康保険 ，', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 5),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 雇用保険 ，', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 5),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 労災保険 ，', fontSize: 9),
              ]),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 25),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 国民年金 ，', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 5),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 国民健康保険 ，', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 5),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' その他（' + ins[6] + ' )）', fontSize: 9),
              ]),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: _buildText('２．雇入れ時の健康診断 ' + year3 + ' 年  ' + month3 + ' 月 ', fontSize: 9)),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: _buildText('３．初回の定期健康診断 ' + year3 + ' 年  ' + month3 + ' 月 ' + '（その後 ごとに実施）', fontSize: 9)),
              Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: _buildText(
                      '４．本契約終了後に乙が帰国するに当たり，乙が帰国旅費を負担することができないときは，甲が当該旅費を負担するとともに， 帰国が円滑になされるよう必要な措置を講じることとする。',
                      fontSize: 9)),

              // ROW 11 受取人（署名）
              Container(
                height: 50,
                margin: const EdgeInsets.only(top: 5),
                decoration: _buildBoxAllSide(width: 2),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: _buildText('受取人（署名', fontSize: 9),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  void _buildPage1() {
    List<String> ins = [
      '2022/10/22',
      'Quang',
      '2022/10/23',
      '2022/10/24',
      '2022/10/25',
      '                                          ',
      '         ',
    ];
    String year1 = ins[0] == '' ? '' : ins[0].split('/')[0];
    String month1 = ins[0] == '' ? '' : ins[0].split('/')[1];
    String day1 = ins[0] == '' ? '' : ins[0].split('/')[2];

    String year2 = ins[2] == '' ? '' : ins[2].split('/')[0];
    String month2 = ins[2] == '' ? '' : ins[2].split('/')[1];
    String day2 = ins[2] == '' ? '' : ins[2].split('/')[2];

    String year3 = ins[3] == '' ? '' : ins[3].split('/')[0];
    String month3 = ins[3] == '' ? '' : ins[3].split('/')[1];
    String day3 = ins[3] == '' ? '' : ins[3].split('/')[2];

    String year4 = ins[4] == '' ? '' : ins[4].split('/')[0];
    String month4 = ins[4] == '' ? '' : ins[4].split('/')[1];
    String day4 = ins[4] == '' ? '' : ins[4].split('/')[2];

    buildPage(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: _buildText('参考様式第1-6号', fontSize: 9),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          alignment: Alignment.bottomCenter,
          child: _buildText('雇              用              条              件              書', fontSize: 14),
        ),
        Container(
          padding: const EdgeInsets.all(0),
          width: PdfPageFormat.a4.width,
          height: PdfPageFormat.a4.height - 200,
          decoration: _buildBoxAllSide(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ROW 1 ________________________殿
              Container(
                padding: const EdgeInsets.all(0),
                // decoration: _buildBoxAllSide(noBorder: true),
                alignment: Alignment.centerRight,
                child: _buildText(year1 + ' 年  ' + month1 + ' 月 ' + day1 + ' 日 ', fontSize: 9),
              ),
              Container(
                padding: const EdgeInsets.all(0),
                child: Row(children: [
                  Container(
                      alignment: Alignment.bottomCenter,
                      width: 100,
                      decoration: _buildBoxUnderLine(),
                      child: _buildText(ins[1], fontSize: 9)),
                  _buildText('殿', fontSize: 9)
                ]),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                  alignment: Alignment.centerRight,
                  child: Table(tableWidth: TableWidth.min, children: [
                    TableRow(children: [
                      _buildText('特定技能所属機関名', fontSize: 9),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          decoration: _buildBoxUnderLine(),
                          child: _buildText(ins[1], fontSize: 9)),
                    ]),
                    TableRow(children: [
                      _buildText('所在地', fontSize: 9),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          decoration: _buildBoxUnderLine(),
                          child: _buildText(ins[1], fontSize: 9)),
                    ]),
                    TableRow(children: [
                      _buildText('電話番号', fontSize: 9),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          decoration: _buildBoxUnderLine(),
                          child: _buildText(ins[1], fontSize: 9)),
                    ]),
                    TableRow(children: [
                      _buildText('代表者  役職・氏名', fontSize: 9),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          alignment: Alignment.bottomCenter,
                          width: 150,
                          decoration: _buildBoxUnderLine(),
                          child: _buildText(ins[1], fontSize: 9)),
                    ]),
                  ])),
              // ROW 2 Ⅰ．雇用契約期間
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                  child: _buildText('Ⅰ．雇用契約期間', fontSize: 9),
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(10, 0, 0, 5), child: _buildText('１．雇用契約期間', fontSize: 9)),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 5),
                child: Row(children: [
                  _buildText('(' + year2 + ' 年  ' + month2 + ' 月 ' + day2 + ' 日  ～ ', fontSize: 9),
                  _buildText(year3 + ' 年  ' + month3 + ' 月 ' + day3 + ' 日)', fontSize: 9),
                  _buildText('        入国予定日   ' + year4 + ' 年  ' + month4 + ' 月 ' + day4 + ' 日', fontSize: 9),
                ]),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(10, 0, 0, 5), child: _buildText('２．契約の更新の有無', fontSize: 9)),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 25),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 自動的に更新する', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 30),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: true,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 更新する場合があり得る', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 30),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: true,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 契約の更新はしない', fontSize: 9),
              ]),
              Padding(
                  padding: const EdgeInsets.fromLTRB(25, 5, 0, 5),
                  child: _buildText('※ 上記契約の更新の有無を「更新する場合があり得る」とした場合の更新の判断基準は以下のとおりとする。', fontSize: 9)),

              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 35),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                Container(width: 110, child: _buildText(' 契約期間満了時の業務量', fontSize: 9)),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: true,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                Container(width: 120, child: _buildText(' 労働者の勤務成績，態度', fontSize: 9)),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: true,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 労働者の業務を遂行する能力', fontSize: 9),
              ]),

              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 35),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                Container(width: 110, child: _buildText(' 会社の経営状況', fontSize: 9)),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: true,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                Container(width: 120, child: _buildText(' 従事している業務の進捗状況', fontSize: 9)),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: true,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' その他 (' + ins[5] + ')', fontSize: 9),
              ]),
              // ROW 3 Ⅱ．就業の場所
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 5),
                  child: _buildText('Ⅱ．就業の場所', fontSize: 9),
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 11),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 直接雇用（以下に記入）', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 70),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: true,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 派遣雇用（別紙「就業条件明示書」に記入）', fontSize: 9),
              ]),
              Container(
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                  // decoration: _buildBoxUnderLine(),
                  alignment: Alignment.centerLeft,
                  child: Table(tableWidth: TableWidth.min, children: [
                    TableRow(children: [
                      _buildText('事 業 所 名', fontSize: 9),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          alignment: Alignment.bottomCenter,
                          width: 200,
                          decoration: _buildBoxUnderLine(),
                          child: _buildText(ins[1], fontSize: 9)),
                    ]),
                    TableRow(children: [
                      _buildText('所 在 地', fontSize: 9),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          alignment: Alignment.bottomCenter,
                          width: 200,
                          decoration: _buildBoxUnderLine(),
                          child: _buildText(ins[1], fontSize: 9)),
                    ]),
                    TableRow(children: [
                      _buildText('連 絡 先', fontSize: 9),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          alignment: Alignment.bottomCenter,
                          width: 200,
                          decoration: _buildBoxUnderLine(),
                          child: _buildText(ins[1], fontSize: 9)),
                    ]),
                  ])),
              // ROW 4 Ⅲ．従事すべき業務の内容
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: _buildText('Ⅲ．従事すべき業務の内容', fontSize: 9),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: _buildText('１ ． 分          野 （' + ins[5] + '）', fontSize: 9),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText('２ ． 業 務 区 分 （' + ins[5] + '）', fontSize: 9),
              ),
              // ROW 5 Ⅳ．労働時間等
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: _buildText('Ⅳ．労働時間等', fontSize: 9),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText('１．始業・終業の時刻等', fontSize: 9),
              ),
              // Time padding 1
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText(
                    '(1) 始業 （' +
                        ins[6] +
                        ' 時' +
                        ins[6] +
                        ' 分）     終業 （' +
                        ins[6] +
                        ' 時' +
                        ins[6] +
                        ' 分） （１日の所定労働時間数' +
                        ins[6] +
                        ' 時間' +
                        ins[6] +
                        ' 分）',
                    fontSize: 9),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText('(2) 【次の制度が労働者に適用される場合】', fontSize: 9),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 変形労働時間制：（' + ins[6] + '）単位の変形労働時間制', fontSize: 9),
              ]),
              Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                  child: _buildText(
                      '※１年単位の変形労働時間制を採用している場合には，乙が十分に理解できる言語を併記した年間カレンダーの写し及び労働基準監督署へ届け出た変形労働時間制に関する協定書の写しを添付する。',
                      fontSize: 9)),

              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 交代制として，次の勤務時間の組合せによる。', fontSize: 9),
              ]),
              // Time padding 2
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: _buildText(
                    '始業 （' +
                        ins[6] +
                        ' 時' +
                        ins[6] +
                        ' 分）     終業 （' +
                        ins[6] +
                        ' 時' +
                        ins[6] +
                        ' 分） （１日の所定労働時間数' +
                        ins[6] +
                        ' 時間' +
                        ins[6] +
                        ' 分）',
                    fontSize: 9),
              ),
              // Time padding 3
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: _buildText(
                    '始業 （' +
                        ins[6] +
                        ' 時' +
                        ins[6] +
                        ' 分）     終業 （' +
                        ins[6] +
                        ' 時' +
                        ins[6] +
                        ' 分） （１日の所定労働時間数' +
                        ins[6] +
                        ' 時間' +
                        ins[6] +
                        ' 分）',
                    fontSize: 9),
              ),
              // Time padding 4
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: _buildText(
                    '始業 （' +
                        ins[6] +
                        ' 時' +
                        ins[6] +
                        ' 分）     終業 （' +
                        ins[6] +
                        ' 時' +
                        ins[6] +
                        ' 分） （１日の所定労働時間数' +
                        ins[6] +
                        ' 時間' +
                        ins[6] +
                        ' 分）',
                    fontSize: 9),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText('２．休憩時間 （ 分）', fontSize: 9),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText(
                    '３．所定労働時間数 ①週' +
                        ins[6] +
                        '（' +
                        ins[6] +
                        ' 時間' +
                        ins[6] +
                        ' 分） ②月（ ' +
                        ins[6] +
                        '時間 ' +
                        ins[6] +
                        '分） ③年（ ' +
                        ins[6] +
                        '時間 ' +
                        ins[6] +
                        '分）',
                    fontSize: 9),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText(
                    '４．所定労働日数     ①週' + ins[6] + '（ ' + ins[6] + '日） ②月（ ' + ins[6] + '日） ③年（ ' + ins[6] + '日）',
                    fontSize: 9),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(padding: const EdgeInsets.only(left: 10), child: _buildText('５．所定時間外労働の有無 ', fontSize: 9)),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 20),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 有', fontSize: 9),
                Padding(
                  padding: const EdgeInsets.only(top: 1, left: 40),
                  child: Checkbox(
                    name: '',
                    // value: ins2[3] == '1' ? true : false,
                    value: false,
                    width: 8,
                    height: 8,
                    decoration: _buildBoxAllSide(),
                    activeColor: PdfColor.fromHex('#000000'),
                  ),
                ),
                _buildText(' 無', fontSize: 9),
              ]),
              Container(
                  alignment: Alignment.centerRight,
                  child: _buildText('○詳細は，就業規則 第    条～第    条，第    条～第    条，第    条～第    条', fontSize: 9)),

              // ROW 6 Ⅴ．休日
              Container(
                margin: const EdgeInsets.only(top: 5),
                decoration: _buildBoxTopLine(),
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: _buildText('Ⅴ．休日', fontSize: 9),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: _buildText('１．定例日：毎週 曜日，日本の国民の祝日，その他（' + ins[5] + '）       ' + '（年間合計休日日数' + ins[6] + ' 日）',
                    fontSize: 9),
              ),
            ],
          ),
        ),
      ],
    ));
  }

  Widget _buildOptionInput(String text1, String text2, String value, {double fontSize = 10}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Stack(children: [
        _buildText(text1, fontSize: fontSize),
        _buildText(value == '1' ? '◯' : '', fontSize: fontSize),
      ]),
      _buildText(' ・ ', fontSize: fontSize),
      Stack(children: [
        _buildText(text2, fontSize: fontSize),
        _buildText(value == '2' ? '◯' : '', fontSize: fontSize),
      ]),
    ]);
  }

  Widget _buildText(String text, {double fontSize = 0}) {
    if (fontSize == 0) {
      return Text(text, style: TextStyle(font: font));
    } else {
      return Text(text, style: TextStyle(font: font, fontSize: fontSize));
    }
  }

  static BoxDecoration _buildBoxAllSide({String color = '#000000', double width = 1}) {
    return BoxDecoration(
      border: Border.all(color: PdfColor.fromHex(color), width: width),
    );
  }

  static BoxDecoration _buildBoxUnderLine({String color = '#000000', double width = 1}) {
    return BoxDecoration(
      border: Border(bottom: BorderSide(color: PdfColor.fromHex(color), width: width)),
    );
  }

  static BoxDecoration _buildBoxTopLine({String color = '#000000', double width = 1}) {
    return BoxDecoration(
      border: Border(top: BorderSide(color: PdfColor.fromHex(color), width: width)),
    );
  }

  static BoxDecoration _buildBoxTopBotLine({String color = '#000000', double width = 1}) {
    return BoxDecoration(
      border: Border(
        top: BorderSide(color: PdfColor.fromHex(color), width: width),
        bottom: BorderSide(color: PdfColor.fromHex(color), width: width),
      ),
    );
  }
}

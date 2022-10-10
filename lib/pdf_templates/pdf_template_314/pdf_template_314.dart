import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

class PdfTemplate314 extends PDFTemplate {
  PdfTemplate314(this.inputs);

  final List<List<String>> inputs;

  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();

    _buildPage1();
    _buildPage2();

    return await pdf.save();
  }

  void _buildPage1() {
    List<String> ins = inputs[0];

    buildPage(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText('参考様式第1-4号', fontSize: 11),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Center(child: _buildText('特 定 技 能 外 国 人 の 報 酬 に 関 す る 説 明 書', fontSize: 14)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18, bottom: 8),
          child: Center(
            child: _buildText('  申請人に対する報酬については, 以下のとおり,「日本人が従事する場合の報酬の額と同等以\n上であること」を担保しています。', fontSize: 11.5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 6),
          child: _buildText('1  申請人に対する報酬 ', fontSize: 12),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 6, bottom: 6),
          child: Center(
              child: Table(
            columnWidths: {
              0: const FractionColumnWidth(0.38),
              1: const FlexColumnWidth(),
            },
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('① 申請人の氏名', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[0], fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('② 申請人の役職, 職務内容, 責任の程度', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[1], fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('③ 申請人の年齢, 性別及び経験年数', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: Row(children: [
                    _buildText('(  ' + ins[2] + '  )               (', fontSize: 10),
                    _buildOptionInput('男', '女', ins[3], fontSize: 10),
                    _buildText(')               (経験  ' + ins[4] + '  年)', fontSize: 10),
                  ]),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('④ 申請人に対する報酬', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('月給    ${ins[5]}     円 / 時間給    ${ins[6]}    円', fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('⑤ その他', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[7], fontSize: 10),
                ),
              ]),
            ],
          )),
        ),

        _buildText('  (注意)', fontSize: 9.5),
        _buildText('1   ① は, 在留カード (申請人が所持していない場合は旅券) と同一の氏名を記載すること。', fontSize: 9.5),
        _buildText('2   ③ の経験年数は, 申請人に従事させる業務に係る経験年数を記載すること。', fontSize: 9.5),
        _buildText(
            '3   ④ は, 月給及び時間給以外の給与形態の場合については, 月給又は時間給に換算した報酬を記載すること。ま\n\t\t\t\t  た, 月給又は時間給のいずれかを記載することで差し支えないが, 本様式において統一して記載すること。',
            fontSize: 9.5),
        _buildText('4   ⑤ は, 報酬以外の諸手当等が支給されている場合など特記すべき事項がある場合に記載すること。', fontSize: 9.5),
        //------------ Table 2 ------------
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 6),
          child: _buildText('2  比較対象となる日本人労働者がいる場合 ', fontSize: 12),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 6, bottom: 6),
          child: Center(
              child: Table(
            columnWidths: {
              0: const FractionColumnWidth(0.38),
              1: const FlexColumnWidth(),
            },
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('① 比較対象となる日本人労働者の役職, 職務内容, 責任の程度', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[8], fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('② 比較対象となる日本人労働者の年齢, 性別及び経験年数', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: Row(children: [
                    _buildText('(  ' + ins[9] + '  )               (', fontSize: 10),
                    _buildOptionInput('男', '女', ins[10], fontSize: 10),
                    _buildText(')               (経験  ' + ins[11] + '  年)', fontSize: 10),
                  ]),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('③ 比較対象となる日本人労働者の報酬', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('月給 ${ins[12]} 円 / 時間給 ${ins[13]} 円', fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                      padding: const EdgeInsets.all(0),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Expanded(
                            flex: 5,
                            child: Table(border: TableBorder.all(), children: [
                              TableRow(children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    height: 108,
                                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                                    child: _buildText('④ 賃金規程の有無\n及び賃金規程に基\nづく賃金', fontSize: 10))
                              ])
                            ])),
                        Expanded(
                            flex: 5,
                            child: Table(border: TableBorder.all(), children: [
                              TableRow(children: [
                                Container(
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                                    child: Center(child: _buildText('規程の有無', fontSize: 10)))
                              ]),
                              TableRow(children: [
                                Container(
                                    height: 78,
                                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                                    child: Center(child: _buildText('有の場合', fontSize: 10)))
                              ]),
                            ])),
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              height: 30,
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                              child: _buildOptionInput('男', '無', ins[14], fontSize: 10))
                        ]),
                        TableRow(children: [
                          Container(
                              height: 78,
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                              child: Center(
                                  child: _buildText(
                                      '賃金規程に基づき, 申請人と役職, 職務内容, 責任の程度が同等 の日本人労働者に支払われるべき報酬 \n 月給 ${ins[15]} 円 / 時間給 ${ins[16]} 円',
                                      fontSize: 10))),
                        ]),
                      ])),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('⑤ 申請人に対する報酬が日本人が従事\nする場合の報酬の額と同等以上である\nと考える理由', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[17], fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('⑥ その他', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[18], fontSize: 10),
                ),
              ]),
            ],
          )),
        ),

        _buildText('  (注意)', fontSize: 9.5),
        _buildText('1   ① は, 比較対象となる日本人労働者の役職, 職務内容, 責任の程度が, 申請人と同等であることを示すこと。', fontSize: 9.5),
        _buildText('2   ② の経験年数は, 比較対象となる日本人労働者の経験年数を記載すること。', fontSize: 9.5),
        _buildText(
            '3   ③ は, 月給及び時間給以外の給与形態の場合については, 月給又は時間給に換算した報酬を記載すること。ま\n\t\t\t\t  た, 月給又は時間給のいずれかを記載すればよいが, 本様式において統一して記載すること。',
            fontSize: 9.5),
        _buildText('4   ④ は, 賃金規程を作成している場合には, 必ず「有」を丸印で囲むこと。また, 賃金規程に基づき, 申請人と', fontSize: 9.5),
      ],
    ));
  }

  void _buildPage2() {
    List<String> ins = inputs[1];

    buildPage(Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText('     役職,職務内容,責任の程度が同等の日本人労働者に支払われるべき報酬を具体的に記載し,当該賃金規程を\n\t\t\t\t 参考資料として添付すること。', fontSize: 9.5),
        _buildText('5   ⑥ は,報酬以外の諸手当等が支給されている場合など特記すべき事項がある場合に記載すること。', fontSize: 9.5),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 6),
          child: _buildText('3  比較対象となる日本人労働者がいない場合 ', fontSize: 12),
        ),
        //------------ Table 3 ------------
        Padding(
          padding: const EdgeInsets.only(left: 6, bottom: 6),
          child: Center(
              child: Table(
            columnWidths: {
              0: const FractionColumnWidth(0.38),
              1: const FlexColumnWidth(),
            },
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('① 最も近い職務を担う日本人労働者の\n職務内容や責任の程度', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[0], fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('② 最も近い職務を担う日本人労働者の\n年齢, 性別及び経験年数', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: Row(children: [
                    _buildText('(  ' + ins[1] + '  歳)               (', fontSize: 10),
                    _buildOptionInput('男', '女', ins[2], fontSize: 10),
                    _buildText(')               (経験  ' + ins[3] + '  年)', fontSize: 10),
                  ]),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('③ 最も近い職務を担う日本人労働者の\n報酬', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('月給 ${ins[4]} 円 / 時間給 ${ins[5]} 円', fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Container(
                      padding: const EdgeInsets.all(0),
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Expanded(
                            flex: 6,
                            child: Table(border: TableBorder.all(), children: [
                              TableRow(children: [
                                Container(
                                    height: 108,
                                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                                    child: Center(child: _buildText('④ 賃金規程の有無及び\n賃金規程に基づく賃金', fontSize: 10)))
                              ])
                            ])),
                        Expanded(
                            flex: 4,
                            child: Table(border: TableBorder.all(), children: [
                              TableRow(children: [
                                Container(
                                    height: 30,
                                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                                    child: Center(child: _buildText('規程の有無', fontSize: 10)))
                              ]),
                              TableRow(children: [
                                Container(
                                    height: 78,
                                    padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                                    child: Center(child: _buildText('有の場合', fontSize: 10)))
                              ]),
                            ])),
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Table(border: TableBorder.all(), children: [
                        TableRow(children: [
                          Container(
                              height: 30,
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                              child: _buildOptionInput('男', '無', ins[6], fontSize: 10))
                        ]),
                        TableRow(children: [
                          Container(
                              height: 78,
                              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                              child: Center(
                                  child: _buildText(
                                      '賃金規程に基づき, 申請人と役職, 職務内容, 責任の程度が同等の日本人労働者に支払われるべき報酬\n 月給 ${ins[7]} 円 / 時間給 ${ins[8]} 円',
                                      fontSize: 10))),
                        ]),
                      ])),
                    ],
                  ),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('⑤ 申請人に対する報酬が日本人が従事\nする場合の報酬の額と同等以上である\nと考える理由', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[9], fontSize: 10),
                ),
              ]),
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText('⑥ その他', fontSize: 10),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 2),
                  child: _buildText(ins[10], fontSize: 10),
                ),
              ]),
            ],
          )),
        ),
        _buildText('  (注意)', fontSize: 9),
        _buildText(
            '1   ① は, 申請人と最も近い職務を担う日本人労働者の役職, 職務内容, 責任の程度について, 申請人と比べて,\n\t\t\t\t 具体的にどのような差異があるのかも併せて, 詳細に記載すること。',
            fontSize: 9.5),
        _buildText('2   ② の経験年数は, 申請人と最も近い職務を担う日本人労働者の経験年数を記載すること。', fontSize: 9.5),
        _buildText(
            '3   ③ は, 月給及び時間給以外の給与形態の場合については, 月給又は時間給に換算した報酬を記載すること。ま\n\t\t\t\t た, 月給又は時間給のいずれかを記載すればよいが, 本様式において統一して記載すること。',
            fontSize: 9.5),
        _buildText(
            '4   ④ は, 賃金規程を作成している場合には, 必ず「有」を丸印で囲むこと。また,賃金規程に基づき, 申請人と\n\t\t\t\t 役職,職務内容, 責任の程度が最も近い日本人労働者に支払われるべき報酬を具体的に記載し, 当該賃金規程を\n\t\t\t\t 参考資料として添付すること。',
            fontSize: 9.5),
        _buildText('5   ⑥ は, 報酬以外の諸手当等が支給されている場合など特記すべき事項がある場合に記載すること。', fontSize: 9.5),
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 6),
          child: _buildText('上記の記載内容は, 事実と相違ありません。 ', fontSize: 10.5),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 10),
            // child: _buildText('2022年 07月 01日 作成', fontSize: 10.5),
            child: _buildText(
                ins[11] == ''
                    ? ''
                    : (ins[11].split('/')[0] + '年 ' + ins[11].split('/')[1] + '月 ' + ins[11].split('/')[2] + '日   作成'),
                fontSize: 10.5),
          ),
        ),
        Center(
          child: Padding(
              padding: const EdgeInsets.only(left: 32),
              child: _buildText('特定技能所属機関の氏名又は名称 ${ins[12]}', fontSize: 10.5)),
        ),
        Center(
          child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 10),
              child: _buildText('作成責任者 役職・氏名  ${ins[13]} ${ins[14]}', fontSize: 10.5)),
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
}

import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';

class PdfTemplate415 extends PDFTemplate {
  PdfTemplate415(this.inputs);

  final List<List<String>> inputs;

  late Font font;
  late Font fontMedium;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    fontMedium = await PdfGoogleFonts.mPLUSRounded1cMedium();
    final pdf = Document();

    List<String> ins = inputs[0];
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
                _buildText('参考様式第１－５号', font, fontSize: 11),
                SizedBox(height: 26),
                Center(
                    child: _buildText('特  定  技  能  雇  用  契  約  書', font,
                        fontSize: 16)),
                SizedBox(height: 26),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildText('特定技能所属機関', font, fontSize: 11),
                  Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        height: 18,
                        width: 240,
                        decoration: myUnderLine('#000000', width: 0.5),
                        child: _buildText(ins[0], font, fontSize: 11),
                      )),
                  _buildText('（以下「甲」という。）と', font, fontSize: 11),
                ]),
                SizedBox(height: 26),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildText('特定技能外国人（候補者を含む。） ', font, fontSize: 11),
                  Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        height: 18,
                        width: 150,
                        decoration: myUnderLine('#000000', width: 0.5),
                        child: _buildText(ins[1], font, fontSize: 11),
                      )),
                  _buildText('（以下「乙」という。）は，', font, fontSize: 11),
                ]),
                SizedBox(height: 26),
                _buildText('別添の雇用条件書に記載された内容に従い，特定技能雇用契約を締結する。', font,
                    fontSize: 11),
                SizedBox(height: 26),
                _buildText(
                    '本雇用契約は，乙が，在留資格「特定技能１号」若しくは「特定技能２号」により本邦に入国して，又', font,
                    fontSize: 11),
                _buildText(
                    'は同在留資格への変更等を受けて，特定産業分野であって法務大臣が指定するものに属する法務省令で', font,
                    fontSize: 11),
                _buildText('定める技能を要する業務に従事する活動を開始する時点をもって効力を生じるものとする。', font,
                    fontSize: 11),
                SizedBox(height: 26),
                _buildText(
                    '雇用条件書に記載の雇用契約期間（雇用契約の始期と終期）は，実際の入国日又は許可日に伴って変更', font,
                    fontSize: 11),
                _buildText('されるものとする。', font, fontSize: 11),
                SizedBox(height: 26),
                _buildText(
                    'なお，雇用契約を更新することなく雇用契約期間を満了した場合，及び乙が何らかの事由で在留資格を', font,
                    fontSize: 11),
                _buildText('喪失した時点で雇用契約は終了するものとする。', font, fontSize: 11),
                SizedBox(height: 26),
                _buildText('本雇用契約書及び雇用条件書は２部作成し，甲乙それぞれが保有するものとする。', font,
                    fontSize: 11),
                SizedBox(height: 26),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: const EdgeInsets.only(right: 26),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            _buildText(
                                (ins[2] == '' ? ' ' : ins[2].split('/')[0]) +
                                    ' 年  ',
                                font,
                                fontSize: 11),
                            _buildText(
                                (ins[2] == '' ? ' ' : ins[2].split('/')[1]) +
                                    ' 月 ',
                                font,
                                fontSize: 11),
                            _buildText(
                                (ins[2] == '' ? ' ' : ins[2].split('/')[2]) +
                                    ' 日' +
                                    '     締結',
                                font,
                                fontSize: 11),
                          ])),
                ),
                SizedBox(height: 40),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  _buildText('甲 ', font, fontSize: 11),
                  SizedBox(width: 6),
                  Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: Container(
                        height: 16,
                        width: 180,
                        decoration: myUnderLine('#000000', width: 1),
                        child: _buildText(ins[3], font, fontSize: 11),
                      )),
                  Stack(children: [
                    _buildText('印', font, fontSize: 11),
                    _buildText('◯', font, fontSize: 13),
                  ]),
                  SizedBox(width: 120),
                  _buildText('乙', font, fontSize: 11),
                  SizedBox(width: 6),
                  Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Container(
                        height: 16,
                        width: 130,
                        decoration: myUnderLine('#000000', width: 1),
                        child: _buildText(ins[4], font, fontSize: 11),
                      )),
                ]),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(width: 4),
                  _buildText('（特定技能所属機関名・代表者役職名・氏名・捺印） ', font, fontSize: 11),
                  SizedBox(width: 80),
                  _buildText('（特定技能外国人の署名)', font, fontSize: 11),
                ]),
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

  static BoxDecoration myUnderLine(String color, {double width = 1}) {
    return BoxDecoration(
        border: Border(
      bottom: BorderSide(
        color: PdfColor.fromHex(color),
        width: width,
      ),
    ));
  }

  static const double inch = 72.0;
  static const double cm = inch / 2.54;
}

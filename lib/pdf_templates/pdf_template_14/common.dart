import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class Common {
  Common(this.font);

  final Font font;

  Widget buildText(
    String? txt, {
    double fontSize = 6,
    bool bold = false,
    bool underline = false,
    PdfColor? color,
    double padding = 0,
  }) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Text(
        txt ?? '',
        style: TextStyle(
          font: font,
          fontSize: fontSize,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          decoration: underline ? TextDecoration.underline : TextDecoration.none,
          color: color,
        ),
      ),
    );
  }

  Widget buildBText(String? txt, {double fontSize = 6, PdfColor? color, double padding = 0}) {
    return buildText(txt, fontSize: fontSize, bold: true, color: color, padding: padding);
  }

  Widget buildUBText(String? txt, {double fontSize = 6, PdfColor? color, double padding = 0}) {
    return buildText(txt, fontSize: fontSize, bold: true, underline: true, color: color, padding: padding);
  }

  Widget buildOptionInput(String value, {double height = 24}) {
    return Row(children: [
      Container(
        decoration: const BoxDecoration(border: Border(right: BorderSide(color: PdfColors.black))),
        height: height,
        width: 14,
        child: Center(
          child: Stack(children: [
            buildText('有', padding: 2),
            buildText(value == '1' ? '◯' : '', padding: 2),
          ]),
        ),
      ),
      Container(
        decoration: const BoxDecoration(border: Border(right: BorderSide(color: PdfColors.black))),
        height: height,
        width: 14,
        child: Center(
          child: Stack(children: [
            buildText('無', padding: 2),
            buildText(value == '2' ? '◯' : '', padding: 2),
          ]),
        ),
      ),
    ]);
  }

  Widget buildBooleanInput(String value) {
    return Center(child: Checkbox(name: '', value: value == '1', height: 8, width: 8));
  }
}

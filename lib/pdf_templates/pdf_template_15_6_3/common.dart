import 'package:pdf/widgets.dart';

class Common {
  Common(this.font);

  final Font font;

  Widget buildText(String? txt, {double fontSize = 6, bool bold = false}) {
    return Text(
      txt ?? '',
      style: TextStyle(
        font: font,
        fontSize: fontSize,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }

  Widget buildGText(List<String?> txtList, {double fontSize = 6, bool bold = false}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      buildText(txtList[0] ?? '', fontSize: fontSize, bold: bold),
      buildText(txtList[1] ?? '', fontSize: fontSize - 1, bold: bold),
    ]);
  }

  List<String> parseDate(String? date) {
    if (date == null) return ['', '', ''];

    return date.split('/');
  }

  Widget buildNumber(String number, String upperText, String lowerText, {EdgeInsets? padding, double fontSize = 6}) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(right: 10, bottom: 1),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        buildText(number, fontSize: fontSize),
        SizedBox(width: 4),
        buildGText([upperText, lowerText], fontSize: fontSize),
      ]),
    );
  }

  Widget buildBooleanInput(bool isPicked, String upperText, String lowerText) {
    return Stack(alignment: Alignment.center, children: [
      buildNumber('', upperText, lowerText, padding: const EdgeInsets.all(1)),
      buildText(isPicked ? '○' : '', fontSize: 14),
    ]);
  }

  Widget buildYNInput(
    String value, {
    String upperTextYes = '有',
    lowerTextYes = 'Yes',
    upperTextNo = '無',
    lowerTextNo = 'No',
  }) {
    return Row(children: [
      buildBooleanInput(value == '1', upperTextYes, lowerTextYes),
      buildBooleanInput(value == '2', upperTextNo, lowerTextNo),
    ]);
  }
}

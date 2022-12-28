import 'package:pdf/widgets.dart';

class Common {
  Common(this.font);

  final Font font;

  Widget buildLine(String number, String text, {double padding = 8, double fontSize = 8}) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(width: padding),
      buildText(number, fontSize: fontSize),
      SizedBox(width: 6),
      Flexible(
        child: buildText(text, fontSize: fontSize),
      ),
    ]);
  }

  Widget buildText(String? txt, {double fontSize = 8}) {
    return Text(
      txt ?? '',
      style: TextStyle(font: font, fontSize: fontSize),
    );
  }
}

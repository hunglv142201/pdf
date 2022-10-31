import 'package:pdf/widgets.dart';

class Common {
  Common(this.font);

  final Font font;

  buildText(String? text, {double fontSize = 10}) {
    return Text(text ?? '', style: TextStyle(font: font, fontSize: fontSize));
  }
}

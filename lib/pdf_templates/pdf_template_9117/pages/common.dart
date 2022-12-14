import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class Common {
  Common(this.font);

  final Font font;

  Widget boxText(String? txt, {double fontSize = 10, bool? center, double? width, double? height}) {
    return box(text(txt, fontSize: fontSize), center: center, width: width, height: height);
  }

  Widget verticalBoxText(List<String?> txt, {double fontSize = 10, bool? center, double? width, double? height}) {
    return box(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: txt.map((e) => text(e, fontSize: fontSize)).toList(),
      ),
      center: center,
      width: width,
      height: height,
    );
  }

  Widget box(Widget widget, {bool? center, double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(border: Border.all(width: 1, color: PdfColors.black)),
      child: center == true ? Center(child: widget) : widget,
    );
  }

  Widget boxNoBorder({bool? center, double? width, double? height}) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(border: Border.all(style: BorderStyle.none)),
      child: text(''),
    );
  }

  Widget verticalBox(List<Widget> widgets, {bool? center, double? width, double? height}) {
    return box(
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: widgets,
      ),
      center: center,
      width: width,
      height: height,
    );
  }

  Widget boxDivider({double width = 1, double height = 1}) {
    return box(
      CustomPaint(
        size: PdfPoint(width, height),
        painter: (PdfGraphics g, PdfPoint p) {
          g.drawLine(0, 0, p.x, p.y);
        },
        // child: Container(width: width, height: height, decoration: BoxDecoration(color: PdfColors.amber)),
      ),
      width: width,
      height: height,
    );
  }

  Widget threeBooleanInput(String? inputs, List<String> labels, {List<String?>? trailings, List<bool>? allowText}) {
    String? value;
    String? txt;
    if (inputs != null) {
      try {
        value = inputs[0];
        txt = inputs.substring(1);
      } on dynamic catch (err) {}
    }

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(children: [
        Checkbox(value: value == '1', name: ''),
        text(
            '   ${labels[0]} ${allowText?[0] == true ? '(${value == '1' ? (txt ?? '') : ''}${trailings?[0] ?? ''})' : ''}')
      ]),
      SizedBox(height: 8),
      Row(children: [
        Checkbox(value: value == '2', name: ''),
        text(
            '   ${labels[1]} ${allowText?[1] == true ? '(${value == '2' ? (txt ?? '') : ''}${trailings?[1] ?? ''})' : ''}')
      ]),
      SizedBox(height: 8),
      Row(children: [
        Checkbox(value: value == '3', name: ''),
        text(
            '   ${labels[2]} ${allowText?[2] == true ? '(${value == '3' ? (txt ?? '') : ''}${trailings?[2] ?? ''})' : ''}')
      ]),
    ]);
  }

  Widget booleanInputWithText(String? inputs, {String? label1, String? label2, String? trailing1, String? trailing2}) {
    String? value;
    String? txt;
    if (inputs != null) {
      try {
        value = inputs[0];
        txt = inputs.substring(1);
      } on dynamic catch (err) {}
    }

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(children: [
        Checkbox(value: value == '1', name: ''),
        text('   ${label1 ?? '???'} (${value == '1' ? (txt ?? '') : ''}${trailing1 ?? ''})')
      ]),
      SizedBox(height: 8),
      Row(children: [
        Checkbox(value: value == '2', name: ''),
        text('   ${label2 ?? '???'} (${value == '2' ? (txt ?? '') : ''}${trailing2 ?? ''})')
      ]),
    ]);
  }

  Widget booleanInput(String? value, {String? label1, String? label2, String? trailing1, String? trailing2}) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(children: [Checkbox(value: value == '1', name: ''), text('   ${label1 ?? '???'}')]),
      SizedBox(height: 8),
      Row(children: [Checkbox(value: value == '2', name: ''), text('   ${label1 ?? '???'}')]),
    ]);
  }

  Widget optionInput(String? input) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Stack(children: [
        text('???'),
        text(input == '1' ? '???' : ''),
      ]),
      text(' ??? '),
      Stack(children: [
        text('???'),
        text(input == '2' ? '???' : ''),
      ]),
    ]);
  }

  Widget verticalText(String? txt, {double fontSize = 10}) {
    if (txt == null) return text(txt, fontSize: fontSize);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: txt.split('').map((e) => text(e, fontSize: fontSize)).toList(),
    );
  }

  Widget text(String? txt, {double fontSize = 10}) {
    return Text(txt ?? '', style: TextStyle(font: font, fontSize: fontSize));
  }

  Widget buildDoubleLineText(String text1, Font font1, String text2, Font font2,
      {double fontSize = 0, double ratio = 2 / 3, double space = -2.0}) {
    if (fontSize == 0) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(padding: const EdgeInsets.only(), child: Text(text1, style: TextStyle(font: font1))),
        Padding(padding: EdgeInsets.only(top: space), child: Text(text2, style: TextStyle(font: font2))),
      ]);
    } else {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.only(), child: Text(text1, style: TextStyle(font: font1, fontSize: fontSize))),
        Padding(
            padding: EdgeInsets.only(top: space),
            child: Text(text2, style: TextStyle(font: font2, fontSize: fontSize * ratio))),
      ]);
    }
  }

  Widget tInput(String? txt1, String? txt2, {double fontSize = 10, double? height}) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(width: 2),
      text('???', fontSize: fontSize),
      Container(alignment: Alignment.center, height: height, width: 50, child: text(txt1, fontSize: fontSize)),
      text(' - ', fontSize: fontSize),
      Container(alignment: Alignment.center, height: height, width: 50, child: text(txt2, fontSize: fontSize)),
    ]);
  }
}

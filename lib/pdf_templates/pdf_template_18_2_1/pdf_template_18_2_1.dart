import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

import 'pages/page_1.dart';
import 'pages/page_2.dart';

class PdfTemplate1821 extends PDFTemplate {
  PdfTemplate1821(this.inputs);

  final List<List<String>> inputs;

  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();

    buildPage(Page1.buildPage(inputs[0], font));
    buildPage(Page2.buildPage(inputs[1], font));

    return await pdf.save();
  }
}

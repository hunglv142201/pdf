import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_14/pages/page_1.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_14/pages/page_2.dart';
import 'package:printing/printing.dart';

class PdfTemplate14 extends PDFTemplate {
  PdfTemplate14(this.inputs);

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

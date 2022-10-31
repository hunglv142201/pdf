import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_4.dart';
import 'package:printing/printing.dart';

class PdfTemplate9117 extends PDFTemplate {
  PdfTemplate9117(this.inputs);

  final List<List<String>> inputs;

  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();

    // buildPage(Page1.buildPage(font), pageFormat: PdfPageFormat.a3);
    // buildPage(Page2.buildPage(font), pageFormat: PdfPageFormat.a3);
    // buildPage(Page3.buildPage(font), pageFormat: PdfPageFormat.a3);
    buildPage(Page4.buildPage([], font), pageFormat: PdfPageFormat.a3, pageOrientation: PageOrientation.landscape);

    return await pdf.save();
  }
}

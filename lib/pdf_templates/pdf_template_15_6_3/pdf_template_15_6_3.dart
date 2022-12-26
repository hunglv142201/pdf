import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_15_6_3/pages/page_3.dart';
import 'package:printing/printing.dart';

class PdfTemplate1563 extends PDFTemplate {
  PdfTemplate1563(this.inputs);

  final List<List<String>> inputs;

  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();

    buildPage(Page3.buildPage(inputs[0], font), pageFormat: _buildPageFormat());

    return await pdf.save();
  }

  PdfPageFormat _buildPageFormat() {
    double inch = 72.0;
    double cm = inch / 2.54;
    return PdfPageFormat(
      21.0 * cm,
      29.7 * cm,
      marginTop: 0.1 * cm,
      marginBottom: 0.1 * cm,
      marginLeft: 2.0 * cm,
      marginRight: 2.0 * cm,
    );
  }
}

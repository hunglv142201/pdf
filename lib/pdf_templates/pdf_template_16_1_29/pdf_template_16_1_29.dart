import 'dart:typed_data';

import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:printing/printing.dart';

import 'pages/page_1.dart';

class PdfTemplate16129 extends PDFTemplate {
  PdfTemplate16129(this.inputs);

  final List<List<String>> inputs;

  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();

    buildPage(Page1.buildPage(inputs[0], font));

    return await pdf.save();
  }
}

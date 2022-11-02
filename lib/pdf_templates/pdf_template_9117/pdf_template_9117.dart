import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_4.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_1.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_2.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_3.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_5.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_8.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_9.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_9117/pages/page_10.dart';
import 'package:printing/printing.dart';

class PdfTemplate9117 extends PDFTemplate {
  PdfTemplate9117(this.inputs);

  final List<List<String>> inputs;

  late Font font;

  @override
  Future<Uint8List> build() async {
    font = await PdfGoogleFonts.mPLUSRounded1cRegular();
    // buildPage(Page1.buildPage([], font),
    //     pageFormat: const PdfPageFormat(42 * cm, 29.7 * cm,
    //         marginTop: 2 * cm, marginBottom: 2 * cm, marginLeft: 2 * cm, marginRight: 2 * cm));
    // buildPage(Page2.buildPage([], font),
    //     pageFormat: const PdfPageFormat(42 * cm, 29.7 * cm,
    //         marginTop: 3 * cm, marginBottom: 2 * cm, marginLeft: 2 * cm, marginRight: 2 * cm));
    // buildPage(Page3.buildPage([], font),
    //     pageFormat: const PdfPageFormat(42 * cm, 29.7 * cm,
    //         marginTop: 3 * cm, marginBottom: 2 * cm, marginLeft: 2 * cm, marginRight: 2 * cm));

    // buildPage(Page4.buildPage([], font), pageFormat: PdfPageFormat.a3, pageOrientation: PageOrientation.landscape);
    // buildPage(Page5.buildPage([], font), pageFormat: PdfPageFormat.a3, pageOrientation: PageOrientation.landscape);
    buildPage(Page8.buildPage([], font), pageFormat: _builtA3Format(), pageOrientation: PageOrientation.natural);
    buildPage(Page9.buildPage([], font), pageFormat: _builtA3Format(), pageOrientation: PageOrientation.natural);
    buildPage(Page10.buildPage([], font), pageFormat: _builtA3Format(), pageOrientation: PageOrientation.natural);
    return await pdf.save();
  }

  PdfPageFormat _builtA3Format() {
    return const PdfPageFormat(42.0 * cm, 29.7 * cm, marginAll: 2.0 * cm);
  }

  static const double inch = 72.0;
  static const double cm = inch / 2.54;
}

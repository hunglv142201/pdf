import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class TestPdfTemplate {
  static Future<Uint8List> build(String? title, String? firstName, String? lastName) {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(children: [pw.Text(title ?? "Title"), pw.Text('$firstName, $lastName')]),
          );
        },
      ),
    );

    return pdf.save();
  }
}
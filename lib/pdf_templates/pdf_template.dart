import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

abstract class PDFTemplate {
  final pdf = Document();

  Future<Uint8List> build();

  void buildPage(Widget widget) {
    pdf.addPage(
      Page(
        pageFormat: PdfPageFormat.a4,
        build: (Context context) {
          return widget;
        },
      ),
    );
  }
}

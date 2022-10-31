import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

abstract class PDFTemplate {
  final pdf = Document();

  Future<Uint8List> build();

  void buildPage(Widget widget, {PdfPageFormat pageFormat = PdfPageFormat.a4, PageOrientation? pageOrientation}) {
    pdf.addPage(
      Page(
        pageFormat: pageFormat,
        orientation: pageOrientation,
        build: (Context context) {
          return widget;
        },
      ),
    );
  }
}

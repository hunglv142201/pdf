import 'package:flutter/cupertino.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_11127/pdf_template_11127.dart';
import 'package:printing/printing.dart';

import 'pdf_viewer_screen.props.dart';

class PdfViewerScreen extends StatelessWidget {
  const PdfViewerScreen({Key? key, required this.props}) : super(key: key);

  final PdfViewerScreenProps props;

  @override
  Widget build(BuildContext context) {
    return PdfPreview(build: (format) => props.pdf ?? PdfTemplate11127([[]]).build());
  }
}

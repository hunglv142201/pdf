import 'package:flutter/cupertino.dart';
import 'package:printing/printing.dart';

import 'pdf_viewer_screen.props.dart';

class PdfViewerScreen extends StatelessWidget {
  const PdfViewerScreen({Key? key, required this.props}) : super(key: key);

  final PdfViewerScreenProps props;

  @override
  Widget build(BuildContext context) {
    if (props.pdf == null) {
      return const Center(
        child: Text("No data"),
      );
    }

    return PdfPreview(build: (format) => props.pdf!);
  }
}

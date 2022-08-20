import 'package:flutter/cupertino.dart';
import 'package:webviewx/webviewx.dart';

import 'pdf_viewer_screen.props.dart';

class PdfViewerScreen extends StatelessWidget {
  const PdfViewerScreen({Key? key, required this.props}) : super(key: key);

  final PdfViewerScreenProps props;

  @override
  Widget build(BuildContext context) {
    String? base64 = props.base64;

    if (base64 == null) {
      return const Center(
        child: Text("No data"),
      );
    }

    return WebViewX(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      initialContent: "<iframe width='100%' height='1500px' src='data:application/pdf;base64,$base64'></iframe>",
      initialSourceType: SourceType.html,
    );
  }
}

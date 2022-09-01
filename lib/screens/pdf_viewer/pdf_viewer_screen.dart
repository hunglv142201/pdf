import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.controller.dart';
import 'package:webviewx/webviewx.dart';

import 'pdf_viewer_screen.props.dart';

class PdfViewerScreen extends StatelessWidget {
  const PdfViewerScreen({Key? key, required this.props}) : super(key: key);

  final PdfViewerScreenProps props;

  @override
  Widget build(BuildContext context) {
    PdfViewerScreenController controller = Get.put(PdfViewerScreenController());
    String? base64 = props.base64;

    if (base64 == null) {
      return const Center(
        child: Text("No data"),
      );
    }

    String iframe =
        "<iframe width='100%' height='${MediaQuery.of(context).size.height - 100}px' src='data:application/pdf;base64,$base64'></iframe>";

    return SingleChildScrollView(
      child: Column(
        children: [
          CupertinoButton.filled(
            onPressed: () => controller.handleDisplay(iframe),
            child: const Text('View'),
          ),
          WebViewX(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            initialContent: '<div></div>',
            initialSourceType: SourceType.html,
            onWebViewCreated: controller.handleWebViewCreated,
          )
        ],
      ),
    );
  }
}

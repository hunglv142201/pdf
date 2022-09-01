import 'package:get/get.dart';
import 'package:webviewx/webviewx.dart';

class PdfViewerScreenController extends GetxController {
  final Rx<WebViewXController<dynamic>?> webviewController = (null as WebViewXController<dynamic>?).obs;

  void handleDisplay(String content) {
    webviewController.value?.loadContent(content, SourceType.html);
  }

  void handleWebViewCreated(WebViewXController<dynamic> controller) {
    webviewController.value = controller;
  }
}

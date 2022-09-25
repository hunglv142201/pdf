import 'package:flutter/cupertino.dart';
import 'package:pdf_creator/components/page_scaffold.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:pdf_creator/pdf_templates/test_2.dart';
import 'package:pdf_creator/pdf_templates/test_3.dart';
import 'package:pdf_creator/pdf_templates/test_4.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Pdf Creator',
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              _buildLink(Test2PdfTemplate(), "To PDF 2 Template", context),
              _buildLink(Test3PdfTemplate(), "To PDF 3 Template", context),
              _buildLink(Test4PdfTemplate(), "To PDF 3_1_4 Template", context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLink(PDFTemplate template, String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoButton.filled(
        onPressed: () => Navigator.of(context).pushNamed(
          'pdf_viewer',
          arguments: PdfViewerScreenProps(pdf: template.build()),
        ),
        child: Text(title),
      ),
    );
  }
}

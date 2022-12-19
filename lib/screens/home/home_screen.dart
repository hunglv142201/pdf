import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf_creator/components/page_scaffold.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_14/pdf_template_14.dart';
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
              _buildLink(PdfTemplate14([]), "To PDF 14 Template", context),
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

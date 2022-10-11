import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf_creator/components/page_scaffold.dart';
import 'package:pdf_creator/pdf_templates/pdf_template.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_11127.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_314/pdf_form_dialog_314.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_719/pdf_form_dialog_719.dart';
import 'package:pdf_creator/pdf_templates/test_10_1_25.dart';
import 'package:pdf_creator/pdf_templates/pdf_template_12_1_27/pdf_form_dialog_12_1_27.dart';
import 'package:pdf_creator/pdf_templates/test_2.dart';
import 'package:pdf_creator/pdf_templates/test_3.dart';
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
              _buildLinkWithModal(context, PdfFormDialog314(), 'To PDF 3_1_4 Template'),
              _buildLinkWithModal(context, PdfFormDialog719(), 'To PDF 7_1_9 Template'),
              _buildLinkWithModal(context, PdfFormDialog12(), 'To PDF 12_1_27 Template'),
              _buildLink(Test10125PdfTemplate(), "To PDF 10_1_25 Template", context),
              _buildLink(PdfTemplate11127(), "To PDF 11_1_27 Template", context),
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

  Widget _buildLinkWithModal(BuildContext context, Widget widget, String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoButton.filled(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return widget;
            },
          );
        },
        child: Text(title),
      ),
    );
  }
}

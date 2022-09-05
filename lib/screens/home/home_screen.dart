import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pdf_creator/components/app_text_form_field.dart';
import 'package:pdf_creator/components/page_scaffold.dart';
import 'package:pdf_creator/screens/home/home_screen.controller.dart';
import 'package:pdf_creator/screens/pdf_viewer/pdf_viewer_screen.props.dart';

import 'home_screen.props.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.props}) : super(key: key);

  final HomeScreenProps props;

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeScreenController = Get.put(HomeScreenController());

    return PageScaffold(
      title: 'PDF Creator',
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(32),
          constraints: const BoxConstraints(maxWidth: 576),
          child: Form(
            key: homeScreenController.formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: AppTextFormField(
                    placeholder: 'Enter title',
                    backgroundColor: CupertinoColors.systemGroupedBackground,
                    controller: homeScreenController.titleFormFieldController,
                    validator: homeScreenController.titleFormFieldValidator,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: AppTextFormField(
                    placeholder: 'Enter first name',
                    backgroundColor: CupertinoColors.systemGroupedBackground,
                    controller: homeScreenController.firstNameFormFieldController,
                    validator: homeScreenController.firstNameFormFieldValidator,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: AppTextFormField(
                    placeholder: 'Enter last name',
                    backgroundColor: CupertinoColors.systemGroupedBackground,
                    controller: homeScreenController.lastNameFormFieldController,
                    validator: homeScreenController.lastFormFieldValidator,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: CupertinoButton.filled(
                    onPressed: () {
                      homeScreenController.handleFormSubmit(
                        (value) =>
                            Navigator.of(context).pushNamed('pdf_viewer', arguments: PdfViewerScreenProps(pdf: value)),
                      );
                    },
                    child: const Text('Confirm'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

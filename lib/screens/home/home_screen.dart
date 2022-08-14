import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pdf/components/app_text_form_field.dart';
import 'package:pdf/components/page_scaffold.dart';
import 'package:pdf/screens/home/home_screen.controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                    backgroundColor: CupertinoColors.white,
                    controller: homeScreenController.titleFormFieldController,
                    validator: homeScreenController.titleFormFieldValidator,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: AppTextFormField(
                    placeholder: 'Enter first name',
                    backgroundColor: CupertinoColors.white,
                    controller: homeScreenController.firstNameFormFieldController,
                    validator: homeScreenController.firstNameFormFieldValidator,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: AppTextFormField(
                    placeholder: 'Enter last name',
                    backgroundColor: CupertinoColors.white,
                    controller: homeScreenController.lastNameFormFieldController,
                    validator: homeScreenController.lastFormFieldValidator,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: CupertinoButton.filled(
                    onPressed: homeScreenController.handleFormSubmit,
                    child: const Text("Confirm"),
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

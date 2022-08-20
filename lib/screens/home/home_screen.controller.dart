import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:pdf_creator/pdf_templates/test.dart';

class HomeScreenController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final titleFormFieldController = TextEditingController();
  final firstNameFormFieldController = TextEditingController();
  final lastNameFormFieldController = TextEditingController();

  // ignore: unnecessary_cast
  final Rx<String?> base64 = (null as String?).obs;
  final RxBool isLoading = false.obs;

  String? titleFormFieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter title';
    } else {
      return null;
    }
  }

  String? firstNameFormFieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter first name';
    } else {
      return null;
    }
  }

  String? lastFormFieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter last name';
    } else {
      return null;
    }
  }

  Future handleFormSubmit() async {
    isLoading.value = true;

    if (formKey.currentState!.validate()) {
      Uint8List pdf = await TestPdfTemplate.build(
        titleFormFieldController.text,
        firstNameFormFieldController.text,
        lastNameFormFieldController.text,
      );
      base64.value = base64Encode(pdf);
    }

    isLoading.value = false;
  }
}
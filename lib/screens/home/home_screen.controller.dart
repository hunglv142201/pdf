import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../pdf_templates/test_2.dart';

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

  Future handleFormSubmit(void Function(Future<Uint8List> base64) callback) async {
    isLoading.value = true;

    if (formKey.currentState!.validate()) {
      Future<Uint8List> pdf = Test2PdfTemplate.build(
        titleFormFieldController.text,
        firstNameFormFieldController.text,
        lastNameFormFieldController.text,
      );

      callback(pdf);
    }

    isLoading.value = false;
  }
}

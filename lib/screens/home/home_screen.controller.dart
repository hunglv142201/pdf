import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final titleFormFieldController = TextEditingController();
  final firstNameFormFieldController = TextEditingController();
  final lastNameFormFieldController = TextEditingController();

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

  void handleFormSubmit() {
    if (formKey.currentState!.validate()) {}
  }
}

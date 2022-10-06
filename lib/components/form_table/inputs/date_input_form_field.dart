import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateInputFormField extends StatelessWidget {
  const DateInputFormField(this.textEditingController, {Key? key}) : super(key: key);

  final TextEditingController? textEditingController;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = textEditingController ?? TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Center(
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(labelText: ''),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(DateTime.now().year - 50),
              lastDate: DateTime.now(),
            );
            if (pickedDate == null) return;

            String formattedDate = DateFormat('yyyy/MM/dd').format(pickedDate);
            controller.text = formattedDate;
          },
        ),
      ),
    );
  }
}

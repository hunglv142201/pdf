import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

class TimeInputFormField extends StatelessWidget {
  const TimeInputFormField(this.textEditingController, {Key? key}) : super(key: key);

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
            TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );
            if (pickedTime == null) return;

            String formattedTime = pickedTime.format(context);
            controller.text = formattedTime;
          },
        ),
      ),
    );
  }
}

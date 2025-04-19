import 'package:flutter/material.dart';

class SelectTimeOfDayButton extends StatefulWidget {
  const SelectTimeOfDayButton({super.key});

  @override
  State<StatefulWidget> createState() => _SelectTimeOfDayButton();
}

class _SelectTimeOfDayButton extends State<SelectTimeOfDayButton> {
  TimeOfDay selectedTimeOfDay = TimeOfDay.now();

  // 時間選択処理
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: selectedTimeOfDay,
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child!,
        );
      },
    );

    if (selectedTime != null) {
      setState(() {
        selectedTimeOfDay = selectedTime;
      });
      // widget.onTimeSelected(selectedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _selectTime(context);
      },
      child: Text(
        '${selectedTimeOfDay.hour.toString().padLeft(2, '0')} : ${selectedTimeOfDay.minute.toString().padLeft(2, '0')}',
      ),
    );
  }
}

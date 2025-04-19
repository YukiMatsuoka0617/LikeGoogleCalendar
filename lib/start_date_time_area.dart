import 'package:flutter/material.dart';
import 'package:flutter_application_calender/list_item.dart';

class StartDateTimeArea extends StatefulWidget {
  const StartDateTimeArea({super.key});
  @override
  State<StatefulWidget> createState() => _StartDateTimeAreaState();
}

class _StartDateTimeAreaState extends State<StartDateTimeArea> {
  DateTime selectedDateTime = DateTime.now();
  TimeOfDay selectedTimeOfDay = TimeOfDay.now();

  // 日付選択処理
  Future<void> _selectData(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateTime,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (selectedDate != null) {
      setState(() {
        selectedDateTime = selectedDate;
      });
      // widget.onDateSelected(selectedDate);
    }
  }

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
    return listItem(
      null,
      TextButton(
          onPressed: () {
            _selectData(context);
          },
          child: Text(
              '${selectedDateTime.year} / ${selectedDateTime.month} / ${selectedDateTime.day}')),
      TextButton(
          onPressed: () {
            _selectTime(context);
          },
          child: Text(
              '${selectedTimeOfDay.hour.toString().padLeft(2, '0')} : ${selectedTimeOfDay.minute.toString().padLeft(2, '0')}')),
    );
  }
}

import 'package:flutter/material.dart';

class TimeSelectArea extends StatefulWidget {
  const TimeSelectArea({
    super.key,
    required this.onTimeSelected,
  });

  final ValueChanged<TimeOfDay> onTimeSelected;

  @override
  State<TimeSelectArea> createState() => _TimeSelectAreaState();
}

class _TimeSelectAreaState extends State<TimeSelectArea> {
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
      widget.onTimeSelected(selectedTime);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _selectTime(context);
          },
          child: const Text('Select Time'),
        ),
        Text(
          'Selected Time : ${selectedTimeOfDay.hour.toString().padLeft(2, '0')} : ${selectedTimeOfDay.minute.toString().padLeft(2, '0')}',
        ),
      ],
    );
  }
}

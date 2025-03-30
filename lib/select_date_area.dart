import 'package:flutter/material.dart';

class SelectDateArea extends StatefulWidget {
  const SelectDateArea({
    super.key,
    required this.onDateSelected,
  });

  final ValueChanged<DateTime> onDateSelected;

  @override
  State<SelectDateArea> createState() => _SelectDateAreaState();
}

class _SelectDateAreaState extends State<SelectDateArea> {
  DateTime selectedDateTime = DateTime.now();

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
      widget.onDateSelected(selectedDate); // 親ウィジェットに日付を通知
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            _selectData(context);
          },
          child: const Text('Select Date'),
        ),
        Text(
          'Selected Date : ${selectedDateTime.year} / ${selectedDateTime.month} / ${selectedDateTime.day}',
        ),
      ],
    );
  }
}

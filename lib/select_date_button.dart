import 'package:flutter/material.dart';

class SelectDateButton extends StatefulWidget {
  const SelectDateButton({super.key});

  @override
  State<StatefulWidget> createState() => _SelectDateButton();
}

class _SelectDateButton extends State<SelectDateButton> {
  DateTime selectedDateTime = DateTime.now();

  // 日付選択処理
  Future<void> _selectDate(BuildContext context) async {
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

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        _selectDate(context);
      },
      child: Text(
        '${selectedDateTime.year} / ${selectedDateTime.month} / ${selectedDateTime.day}',
      ),
    );
  }
}

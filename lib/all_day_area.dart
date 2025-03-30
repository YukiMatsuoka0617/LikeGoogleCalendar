import 'package:flutter/material.dart';

class AllDayArea extends StatelessWidget {
  const AllDayArea({
    super.key,
    required this.showTimeSelectArea,
    required this.onChanged,
  });

  final bool showTimeSelectArea;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.schedule,
        ),
        SizedBox(
          width: 10,
        ),
        Text('All day'),
        SizedBox(
          width: 10,
        ),
        Switch(
          value: showTimeSelectArea,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

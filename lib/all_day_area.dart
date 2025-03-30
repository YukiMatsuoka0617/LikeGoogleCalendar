import 'package:flutter/material.dart';

class AllDayArea extends StatelessWidget {
  const AllDayArea({
    super.key,
    required this.showTimeSelectArea, // 親ウィジェットから状態を渡す
    required this.onChanged, // 状態変更時のコールバックを受け取る
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

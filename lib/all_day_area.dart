import 'package:flutter/material.dart';
import 'package:flutter_application_calender/list_item.dart';

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
    return listItem(
      Icons.schedule,
      'All day',
      Switch(
        value: showTimeSelectArea,
        onChanged: onChanged,
      ),
    );
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Icon(
    //       Icons.schedule,
    //     ),
    //     SizedBox(
    //       width: 10,
    //     ),
    //     Text('All day'),
    //     SizedBox(
    //       width: 10,
    //     ),
    //     Switch(
    //       value: showTimeSelectArea,
    //       onChanged: onChanged,
    //     ),
    //   ],
    // );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_calender/list_item.dart';
import 'package:flutter_application_calender/select_date_button.dart';
import 'package:flutter_application_calender/select_time_of_day_button.dart';

class EndDateTimeArea extends StatefulWidget {
  const EndDateTimeArea({super.key});
  @override
  State<StatefulWidget> createState() => _EndDateTimeAreaState();
}

class _EndDateTimeAreaState extends State<EndDateTimeArea> {
  @override
  Widget build(BuildContext context) {
    return listItem(
      null,
      SelectDateButton(),
      SelectTimeOfDayButton(),
    );
  }
}

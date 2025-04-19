import 'package:flutter/material.dart';
import 'package:flutter_application_calender/list_item.dart';
import 'package:flutter_application_calender/select_date_button.dart';
import 'package:flutter_application_calender/select_time_of_day_button.dart';

class StartDateTimeArea extends StatefulWidget {
  const StartDateTimeArea({super.key});
  @override
  State<StatefulWidget> createState() => _StartDateTimeAreaState();
}

class _StartDateTimeAreaState extends State<StartDateTimeArea> {
  @override
  Widget build(BuildContext context) {
    return listItem(
      null,
      SelectDateButton(),
      SelectTimeOfDayButton(),
    );
  }
}

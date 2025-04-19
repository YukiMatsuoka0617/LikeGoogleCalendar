import 'package:flutter/material.dart';
import 'package:flutter_application_calender/all_day_area.dart';
import 'package:flutter_application_calender/area_divider.dart';
import 'package:flutter_application_calender/area_title_divider.dart';
import 'package:flutter_application_calender/end_date_time_area.dart';
import 'package:flutter_application_calender/select_date_area.dart';
import 'package:flutter_application_calender/select_time_area.dart';
import 'package:flutter_application_calender/start_date_time_area.dart';
import 'package:flutter_application_calender/title_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool showTimeSelectArea = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            titleDivider('User 1'),
            TitleArea(),
            areaDivider(),
            AllDayArea(
              showTimeSelectArea: !showTimeSelectArea,
              onChanged: (value) {
                setState(() {
                  showTimeSelectArea = !value;
                });
              },
            ),
            StartDateTimeArea(),
            EndDateTimeArea(),
            areaDivider(),
            SelectDateArea(
              onDateSelected: (DateTime selectedDate) {},
            ),
            areaDivider(),
            if (showTimeSelectArea) ...[
              TimeSelectArea(
                onTimeSelected: (TimeOfDay selectedTime) {},
              ),
              areaDivider(),
            ],
          ],
        ),
      ),
    );
  }
}

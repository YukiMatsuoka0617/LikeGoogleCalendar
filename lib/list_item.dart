import 'package:flutter/material.dart';

Widget listItem(
  IconData? icon,
  String text,
  Widget widget,
) {
  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: 20,
    ),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Icon(
            icon,
            size: 30,
          ),
        ),
        Text(text),
        const Spacer(),
        widget,
      ],
    ),
  );
}

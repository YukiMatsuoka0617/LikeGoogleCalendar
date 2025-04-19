import 'package:flutter/material.dart';

Widget listItem(
  IconData? icon,
  Widget centerWidget,
  Widget rightWidget,
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
        centerWidget,
        const Spacer(),
        rightWidget,
      ],
    ),
  );
}

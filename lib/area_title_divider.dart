import 'package:flutter/material.dart';

Widget titleDivider(String text) {
  return Row(
    children: [
      Expanded(
        child: Divider(
          thickness: 1,
          indent: 20,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Text(
          text,
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Expanded(
        flex: 5, // 右側の線を少し長くしたい場合
        child: Divider(
          thickness: 1,
          endIndent: 20,
        ),
      ),
    ],
  );
}

import 'package:flutter/material.dart';

class TitleArea extends StatelessWidget {
  TitleArea({
    super.key,
  });

  final TextEditingController titleTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: TextField(
        controller: titleTextEditingController,
        decoration: InputDecoration(
          labelText: "Add Title",
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
String title;
HeadingText({
  required this.title
});
  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 36,
    ),);
  }
}

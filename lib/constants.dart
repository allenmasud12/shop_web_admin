import 'package:flutter/material.dart';

const primaryColor = Color(0xff173e38);
const titleColor = Colors.orange;

extension View on num{
  Widget get height => SizedBox(height: toDouble(),);
  Widget get width => SizedBox(width: toDouble(),);
}
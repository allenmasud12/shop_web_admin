import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class VendorScreen extends StatelessWidget {
  static const String routeName = "/VendorScreen";

  Widget _rowHeader(String text, int flex){
    return Expanded(
        flex: flex,
        child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade700),
        color:  titleColor
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text, style: TextStyle(
          color: Colors.white
        ),),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Text(
              "Vendor",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700
              ),
            ),
          ),
          Row(
            children: [
              _rowHeader("LOGO", 1),
              _rowHeader("BUSINESS NAME", 3),
              _rowHeader("CITY", 2),
              _rowHeader("STATE", 2),
              _rowHeader("ACTION", 1),
              _rowHeader("VIEW MORE", 1),
            ],
          )
        ],
      ),
    );
  }
}

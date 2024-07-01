import 'package:flutter/material.dart';

import '../constants.dart';

class RowheaderWidget extends StatelessWidget {
 String text;
 int flex;
RowheaderWidget({
   required this.text,
  required this.flex
});
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: flex,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade700),
              color:  titleColor
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text, style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),),
          ),
        ));
  }
}

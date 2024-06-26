import 'package:flutter/cupertino.dart';

class OrderScreen extends StatelessWidget {
  static const String routeName = "/OrderScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(10),
          child: Text(
            "Order",
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}

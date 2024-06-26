import 'package:flutter/cupertino.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName = "/CategoryScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(10),
          child: Text(
            "Category",
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

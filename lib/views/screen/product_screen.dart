import 'package:flutter/cupertino.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = "/ProductScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(10),
          child: Text(
            "Product",
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

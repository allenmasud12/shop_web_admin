import 'package:flutter/cupertino.dart';

class VendorScreen extends StatelessWidget {
  static const String routeName = "/VendorScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Container(
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
      ),
    );
  }
}

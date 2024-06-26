import 'package:flutter/cupertino.dart';

class WithdrawScreen extends StatelessWidget {
  static const String routeName = "/WithdrawScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(10),
          child: Text(
            "Withdraw",
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

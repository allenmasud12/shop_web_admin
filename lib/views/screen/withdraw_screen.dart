import 'package:flutter/cupertino.dart';
import 'package:shop_admin/widget/heading_text.dart';

import '../../widget/rowHeader_widget.dart';

class WithdrawScreen extends StatelessWidget {
  static const String routeName = "/WithdrawScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeadingText(
            title: "Withdraw",
          ),
          Row(
            children: [
              RowheaderWidget(flex: 1, text: 'NAME',),
              RowheaderWidget(text:"ACCOUNT",flex: 3),
              RowheaderWidget(text: "BANK NAME",flex: 2),
              RowheaderWidget(text:"BANK ACCOUNT",flex: 2),
              RowheaderWidget(text:"EMAIL",flex: 1),
              RowheaderWidget(text:"PHONE",flex: 1),
            ],
          )
        ],
      ),
    );
  }
}



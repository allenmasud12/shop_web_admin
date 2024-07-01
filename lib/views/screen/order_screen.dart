import 'package:flutter/cupertino.dart';
import 'package:shop_admin/widget/heading_text.dart';

import '../../widget/rowHeader_widget.dart';

class OrderScreen extends StatelessWidget {
  static const String routeName = "/OrderScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeadingText(
            title: "Order",
          ),
          Row(
            children: [
              RowheaderWidget(flex: 1, text: 'IMAGE',),
              RowheaderWidget(text:"FULL NAME",flex: 3),
              RowheaderWidget(text: "CITY",flex: 2),
              RowheaderWidget(text:"STATE",flex: 2),
              RowheaderWidget(text:"ACTION",flex: 1),
              RowheaderWidget(text:"VIEW MORE",flex: 1),
            ],
          )
        ],
      )
    );
  }
}

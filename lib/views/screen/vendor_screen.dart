import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_admin/widget/heading_text.dart';

import '../../constants.dart';
import '../../widget/rowHeader_widget.dart';

class VendorScreen extends StatelessWidget {
  static const String routeName = "/VendorScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         HeadingText(title: "Vendor"),
          Row(
            children: [
              RowheaderWidget(flex: 1, text: 'LOGO',),
              RowheaderWidget(text:"BUSINESS NAME",flex: 3),
              RowheaderWidget(text: "CITY",flex: 2),
              RowheaderWidget(text:"STATE",flex: 2),
              RowheaderWidget(text:"ACTION",flex: 1),
              RowheaderWidget(text:"VIEW MORE",flex: 1),
            ],
          )
        ],
      ),
    );
  }
}

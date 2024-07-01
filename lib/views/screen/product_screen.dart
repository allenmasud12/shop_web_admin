import 'package:flutter/cupertino.dart';
import 'package:shop_admin/widget/heading_text.dart';

import '../../widget/rowHeader_widget.dart';

class ProductScreen extends StatelessWidget {
  static const String routeName = "/ProductScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HeadingText(
            title: "Product",
          ),
          Row(
            children: [
              RowheaderWidget(flex: 1, text: 'IMAGE',),
              RowheaderWidget(text:"NAME",flex: 3),
              RowheaderWidget(text: "PRICE",flex: 2),
              RowheaderWidget(text:"QUALITY",flex: 2),
              RowheaderWidget(text:"ACTION",flex: 1),
              RowheaderWidget(text:"VIEW MORE",flex: 1),
            ],
          )
        ],
      )
    );
  }
}

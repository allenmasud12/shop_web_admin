import 'package:flutter/cupertino.dart';
import 'package:shop_admin/widget/heading_text.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = "/DashboardScreen";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: HeadingText(
        title: "Dashboard",
      )
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:shop_admin/constants.dart';
import 'package:shop_admin/views/screen/bannaer_upload_screen.dart';
import 'package:shop_admin/views/screen/category_screen.dart';
import 'package:shop_admin/views/screen/dashboard_screen.dart';
import 'package:shop_admin/views/screen/order_screen.dart';
import 'package:shop_admin/views/screen/product_screen.dart';
import 'package:shop_admin/views/screen/vendor_screen.dart';
import 'package:shop_admin/views/screen/withdraw_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Widget _selectedItem = DashboardScreen();
  screenSelector(item){
    switch (item.route){
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = DashboardScreen();
        });

        break;
      case VendorScreen.routeName:
        setState(() {
          _selectedItem = VendorScreen();
        });
        break;
      case WithdrawScreen.routeName:
        setState(() {
          _selectedItem = WithdrawScreen();
        });
        break;
      case OrderScreen.routeName:
        setState(() {
          _selectedItem = OrderScreen();
        });
        break;
      case CategoryScreen.routeName:
        setState(() {
          _selectedItem = CategoryScreen();
        });
        break;
      case ProductScreen.routeName:
        setState(() {
          _selectedItem = ProductScreen();
        });
        break;
      case BannerUploadScreen.routeName:
        setState(() {
          _selectedItem = BannerUploadScreen();
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text("Management", style: TextStyle(
            color: Colors.white
          ),),
        ),
        sideBar: SideBar(
          items: [
            AdminMenuItem(
              title: "Dashboard",
              icon: Icons.dashboard,
              route: DashboardScreen.routeName,
            ),
            AdminMenuItem(
              title: "Vendors",
              icon: CupertinoIcons.person_3,
              route: VendorScreen.routeName,
            ),
            AdminMenuItem(
              title: "Withdrawal",
              icon: CupertinoIcons.money_dollar,
              route: WithdrawScreen.routeName,
            ),
            AdminMenuItem(
              title: "Orders",
              icon: CupertinoIcons.shopping_cart,
              route: OrderScreen.routeName,
            ),
            AdminMenuItem(
              title: "Categories",
              icon: Icons.category,
              route: CategoryScreen.routeName,
            ),
          AdminMenuItem(
            title: "Products",
            icon: Icons.shop,
            route: ProductScreen.routeName,
          ),
          AdminMenuItem(
            title: "Upload Banner ",
            icon: Icons.add,
            route: BannerUploadScreen.routeName,
          ),
          ], selectedRoute: '',
              onSelected: (item){
          screenSelector(item);
              },
          header: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                'Store Panel',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          footer: Container(
            height: 50,
            width: double.infinity,
            color: const Color(0xff444444),
            child: const Center(
              child: Text(
                'footer',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        body: _selectedItem

    );
  }
}

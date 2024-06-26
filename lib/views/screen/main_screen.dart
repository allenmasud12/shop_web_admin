import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
        appBar: AppBar(
          title: Text("Management"),
        ),
        sideBar: SideBar(items: [
            AdminMenuItem(
              title: "test",
              icon: Icons.add,
              route: "/",
            ),
            AdminMenuItem(
              title: "test",
              icon: Icons.add,
              route: "/",
            ),
            AdminMenuItem(
              title: "test",
              icon: Icons.add,
              route: "/",
            ),
            AdminMenuItem(
              title: "test",
              icon: Icons.add,
              route: "/",
            ),
            AdminMenuItem(
              title: "test",
              icon: Icons.add,
              route: "/",
            ),
          ], selectedRoute: '',),
        body: Text("Dashborad")

    );
  }
}
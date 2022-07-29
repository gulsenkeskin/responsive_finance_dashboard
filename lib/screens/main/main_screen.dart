import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/config/menu_controller.dart';
import 'package:responsive_finance_dashboard/config/responsive.dart';
import 'package:responsive_finance_dashboard/screens/dashboard/dashboard_screen.dart';
import 'package:responsive_finance_dashboard/screens/main/side_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: Responsive.isDesktop(context) ? null : const SideMenu(),
      body: SafeArea(
        minimum: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                flex: 1,
                child: SideMenu(),
              ),
            const Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/util/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.symmetric(vertical: 5),
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              "assets/images/finance_logo.png",
            ),
          ),
          DrawerListTile(
            title: "Dashbord",
            svgSrc: 'assets/images/home.svg',
            press: () {},),
          DrawerListTile(
            title: "Balance",
            svgSrc: "assets/images/pie-chart.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Payments",
            svgSrc: "assets/images/clipboard.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Credit Card",
            svgSrc: "assets/images/credit-card.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Rewards",
            svgSrc: "assets/images/trophy.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "History",
            svgSrc: "assets/images/invoice.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: iconGray,
        height: 20,
      ),
      title: Text(
        title,
        style: const TextStyle(color: iconGray),
      ),
    );
  }
}

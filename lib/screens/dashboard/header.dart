import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/config/menu_controller.dart';
import 'package:responsive_finance_dashboard/config/responsive.dart';
import 'package:responsive_finance_dashboard/util/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: black,
            ),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          IconButton(
              icon: SvgPicture.asset(
                'assets/images/calendar.svg',
                width: 20,
              ),
              onPressed: () {}),
          const SizedBox(width: 10),
          IconButton(
              icon: SvgPicture.asset('assets/images/ring.svg', width: 20.0),
              onPressed: () {}),
          const SizedBox(width: 15),
          Row(children: const [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage(
                'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
              ),
            ),
            Icon(Icons.arrow_drop_down_outlined, color: black)
          ]),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: white,
        filled: true,
        contentPadding: const EdgeInsets.only(left: 40.0, right: 5),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: white),
        ),
        prefixIcon: const Icon(Icons.search, color: black),
        hintStyle: const TextStyle(color: secondary, fontSize: 14),
      ),
    );
  }
}

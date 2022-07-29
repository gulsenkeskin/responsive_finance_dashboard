import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/util/constants.dart';
import 'package:responsive_finance_dashboard/util/text_widget.dart';
import 'package:flutter_svg/svg.dart';

class PaymentListTile extends StatelessWidget {
  final String icon;
  final String label;
  final String amount;

   const PaymentListTile(
      {Key? key, required this.icon, required this.label, required this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity.standard,
      leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SvgPicture.asset(
            icon,
            width: 20,
          )),
      title: TextWidget(
          size: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          text: label),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const   TextWidget(
              size: 12,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: 'Successfully'),
          TextWidget(
              size: 12,
              fontWeight: FontWeight.w600,
              color: black,
              text: amount),
        ],
      ),
      onTap: () {},
      selected: true,
    );
  }
}

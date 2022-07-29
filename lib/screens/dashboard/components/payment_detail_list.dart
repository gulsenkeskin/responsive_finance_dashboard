import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/models/recent_activity.dart';
import 'package:responsive_finance_dashboard/models/upcoming_payments.dart';
import 'package:responsive_finance_dashboard/screens/dashboard/components/payment_list_tile.dart';
import 'package:responsive_finance_dashboard/util/constants.dart';
import 'package:responsive_finance_dashboard/util/text_widget.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: defaultPadding,
          ),
          const TextWidget(
              size: 18,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              text: 'Debit/Credit Card'),
          const SizedBox(
            height: defaultPadding,
          ),
          Image.asset('assets/images/card.png'),
          const SizedBox(
            height: defaultPadding,
          ),
          const TextWidget(
              size: 18,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              text: 'Recent Activities'),
          const SizedBox(
            height: defaultPadding,
          ),
          const TextWidget(
              size: 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: '02 Mar 2021'),
          const SizedBox(
            height: defaultPadding,
          ),
          Column(
            children: List.generate(
              recentActivities.length,
              (index) => PaymentListTile(
                  icon: recentActivities[index].icon,
                  label: recentActivities[index].label,
                  amount: recentActivities[index].amount),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const TextWidget(
              size: 18,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              text: 'Upcoming Payments'),
          const SizedBox(
            height: defaultPadding,
          ),
          const TextWidget(
              size: 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: '02 Mar 2021'),
          Column(
            children: List.generate(
              upcomingPayments.length,
              (index) => PaymentListTile(
                  icon: upcomingPayments[index].icon,
                  label: upcomingPayments[index].label,
                  amount: upcomingPayments[index].amount),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/config/responsive.dart';
import 'package:responsive_finance_dashboard/screens/dashboard/balance_details.dart';
import 'package:responsive_finance_dashboard/screens/dashboard/header.dart';
import 'package:responsive_finance_dashboard/screens/dashboard/components/my_info_card.dart';
import 'package:responsive_finance_dashboard/screens/dashboard/components/transaction_history.dart';
import 'package:responsive_finance_dashboard/screens/dashboard/components/payment_detail_list.dart';
import 'package:responsive_finance_dashboard/util/constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 10,
                    child: Column(
                      children: [
                        const MyInfoCard(),
                        const SizedBox(height: defaultPadding),
                        const BalanceDetails(),
                        const SizedBox(height: defaultPadding),
                        const TransactionHistory(),
                        if (!Responsive.isDesktop(context)) const PaymentDetailList()
                      ],
                    )),
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [PaymentDetailList()],
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

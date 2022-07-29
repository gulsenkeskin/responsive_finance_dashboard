import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/config/responsive.dart';
import 'package:responsive_finance_dashboard/screens/dashboard/components/bar_chart.dart';
import 'package:responsive_finance_dashboard/util/constants.dart';
import 'package:responsive_finance_dashboard/util/text_widget.dart';

class BalanceDetails extends StatelessWidget {
  const BalanceDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
              size:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? 16
                      : 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: 'Balance'),
          TextWidget(
              size:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? 16
                      : 14,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: 'Past 30 DAYS'),
        ],
      ),
      const SizedBox(height: defaultPadding),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(
              size:
                  Responsive.isDesktop(context) || Responsive.isTablet(context)
                      ? 25
                      : 20,
              fontWeight: FontWeight.w800,
              color: black,
              text: '\$1500'),
        ],
      ),
      const SizedBox(height: defaultPadding),
      const SizedBox(
        height: 180,
        child: BarChartCopmponent(),
      ),
    ]);
  }
}

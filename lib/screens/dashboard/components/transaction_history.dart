import 'package:flutter/material.dart';
import 'package:responsive_finance_dashboard/config/responsive.dart';
import 'package:responsive_finance_dashboard/models/transaction.dart';
import 'package:responsive_finance_dashboard/util/constants.dart';
import 'package:responsive_finance_dashboard/util/text_widget.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(children: [
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
                text: 'History'),
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
                        ? 16
                        : 14,
                fontWeight: FontWeight.w400,
                color: secondary,
                text: 'Transaction of lat 6 month'),
          ],
        ),
        Container(
            padding: const EdgeInsets.all(defaultPadding),
            decoration: const BoxDecoration(
              color: Color(0xfff5f5fd),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Responsive.isDesktop(context)
                      ? double.infinity
                      : MediaQuery.of(context).size.width,
                  child: DataTable(
                    horizontalMargin: 0,
                    columnSpacing: defaultPadding,
                    columns: const [
                      DataColumn(
                        label: TextWidget(
                            size: 16,
                            fontWeight: FontWeight.w400,
                            color: secondary,
                            text: 'Name'),
                      ),
                      DataColumn(
                        label: TextWidget(
                            size: 16,
                            fontWeight: FontWeight.w400,
                            color: secondary,
                            text: 'Particlars'),
                      ),
                      DataColumn(
                        label: TextWidget(
                            size: 16,
                            fontWeight: FontWeight.w400,
                            color: secondary,
                            text: 'Time'),
                      ),
                      DataColumn(
                        label: TextWidget(
                            size: 16,
                            fontWeight: FontWeight.w400,
                            color: secondary,
                            text: 'Amount'),
                      ),
                      DataColumn(
                        label: TextWidget(
                            size: 16,
                            fontWeight: FontWeight.w400,
                            color: secondary,
                            text: 'Status'),
                      ),
                    ],
                    rows: List.generate(
                      transactionHistory.length,
                      (index) => tranHistDataRow(transactionHistory[index]),
                    ),
                  ),
                ),
              ],
            )),
      ]),
    );
  }

  DataRow tranHistDataRow(Transaction tranInfo) {
    return DataRow(
      cells: [
        DataCell(
          CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage(tranInfo.avatar),
          ),
        ),
        DataCell(
          TextWidget(
              size: 16,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: tranInfo.label),
        ),
        DataCell(
          TextWidget(
              size: 16,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: tranInfo.time),
        ),
        DataCell(
          TextWidget(
              size: 16,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: tranInfo.amount),
        ),
        DataCell(
          TextWidget(
              size: 16,
              fontWeight: FontWeight.w400,
              color: secondary,
              text: tranInfo.status),
        ),
      ],
    );
  }
}

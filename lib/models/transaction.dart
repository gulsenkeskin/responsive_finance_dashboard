class Transaction {
  final String avatar;
  final String label;
  final String amount;
  final String time;
  final String status;

  Transaction({
    required this.avatar,
    required this.label,
    required this.amount,
    required this.time,
    required this.status,
  });
}

List<Transaction> transactionHistory = [
  Transaction(
    avatar:
        'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
    label: 'Car Insurance',
    amount: "\$350",
    time: "10:42:23 AM",
    status: "Completed",
  ),
  Transaction(
    avatar:
        'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
    label: 'Loan',
    amount: "\$350",
    time: "12:42:00 PM",
    status: "Completed",
  ),
  Transaction(
    avatar:
        'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859',
    label: 'Online Payment',
    amount: "\$154",
    time: "10:42:23 PM",
    status: "Completed",
  ),
];

class UpcomingPayment {
  final String icon;
  final String label;
  final String amount;
  UpcomingPayment({
    required this.icon,
    required this.label,
    required this.amount,
  });
}

List<UpcomingPayment> upcomingPayments = [
  UpcomingPayment(
      icon: 'assets/images/home.svg', label: 'Home Rent', amount: "\$1500"),
  UpcomingPayment(
      icon: 'assets/images/salary.svg', label: 'Car Insurance', amount: "\$150")
];

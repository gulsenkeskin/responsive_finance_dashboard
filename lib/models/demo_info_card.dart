class DemoInfoCard {
  final String icon;
  final String label;
  final String amount;
  DemoInfoCard({
    required this.icon,
    required this.label,
    required this.amount,
  });
}

List<DemoInfoCard> demoFiles = [
  DemoInfoCard(
      icon: 'assets/images/credit-card.svg',
      label: 'Transafer via Card number',
      amount: '\$1200'),
  DemoInfoCard(
      icon: 'assets/images/transfer.svg',
      label: 'Transafer via Online Banks',
      amount: '\$150'),
  DemoInfoCard(
      icon: 'assets/images/bank.svg',
      label: 'Transafer Same Bank',
      amount: '\$1500'),
  DemoInfoCard(
      icon: 'assets/images/invoice.svg',
      label: 'Transafer to Other Bank',
      amount: '\$1500'),
];

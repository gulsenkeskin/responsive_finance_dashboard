class RecentActivity {
  final String icon;
  final String label;
  final String amount;
  RecentActivity({
    required this.icon,
    required this.label,
    required this.amount,
  });
}

List<RecentActivity> recentActivities = [
  RecentActivity(
      icon: 'assets/images/drop.svg', label: 'Water Bill', amount: "\$120"),
  RecentActivity(
      icon: 'assets/images/salary.svg',
      label: 'Income Salary',
      amount: "\$4500"),
  RecentActivity(
      icon: 'assets/images/salary.svg',
      label: 'Income Salary',
      amount: "\$4500"),
  RecentActivity(
      icon: 'assets/images/electricity.svg',
      label: 'Electric Bill',
      amount: "\$150"),
  RecentActivity(
      icon: 'assets/images/wifi.svg', label: 'Internet Bill', amount: "\$60")
];

class TransactionHistoryModel {
  final String Title, date, amount;
  final bool isWithdrawal;

  const TransactionHistoryModel(
      {required this.Title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}

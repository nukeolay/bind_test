import 'package:bind_test/data/currencies.dart';

enum TransactionTypes {
  buy,
  receive,
  send,
}

class Transaction {
  final DateTime dateTime;
  final TransactionTypes type;
  final double amount;
  final Currencies currency;
  final String subject;

  const Transaction({
    required this.amount,
    required this.currency,
    required this.dateTime,
    required this.subject,
    required this.type,
  });
}

List<Transaction> transactions = [
  Transaction(
      amount: 55.31,
      currency: Currencies.usd,
      dateTime: DateTime.now(),
      subject: 'Pret A Manger',
      type: TransactionTypes.buy),
  Transaction(
      amount: 130.31,
      currency: Currencies.usd,
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
      subject: 'Darren Hodgking',
      type: TransactionTypes.receive),
  Transaction(
      amount: 55.31,
      currency: Currencies.usd,
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
      subject: 'McDonalds',
      type: TransactionTypes.buy),
  Transaction(
      amount: 55.31,
      currency: Currencies.usd,
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
      subject: 'Starbucks',
      type: TransactionTypes.buy),
  Transaction(
      amount: 300.00,
      currency: Currencies.usd,
      dateTime: DateTime.now().subtract(const Duration(days: 1)),
      subject: 'Dave Winklevoss',
      type: TransactionTypes.send),
  Transaction(
      amount: 500.31,
      currency: Currencies.usd,
      dateTime: DateTime.fromMillisecondsSinceEpoch(1639225430000),
      subject: 'Virgin Megastore',
      type: TransactionTypes.buy),
  Transaction(
      amount: 500.31,
      currency: Currencies.usd,
      dateTime: DateTime.fromMillisecondsSinceEpoch(1639225430000),
      subject: 'Nike',
      type: TransactionTypes.buy),
  Transaction(
      amount: 500.31,
      currency: Currencies.usd,
      dateTime: DateTime.fromMicrosecondsSinceEpoch(1639052630000),
      subject: 'Louis Vuitton',
      type: TransactionTypes.buy),
  Transaction(
      amount: 500.31,
      currency: Currencies.usd,
      dateTime: DateTime.fromMicrosecondsSinceEpoch(1639052630000),
      subject: 'Carrefour',
      type: TransactionTypes.buy),
]..sort(((a, b) => b.dateTime.compareTo(a.dateTime)));

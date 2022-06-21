import 'package:intl/intl.dart';
import 'package:bind_test/data/currencies.dart';

class Account {
  final Currencies selectedCurrency;
  final double amount;
  const Account({required this.selectedCurrency, required this.amount});

  String get image => currencies[selectedCurrency]!.image;
  String get name => '${currencies[selectedCurrency]!.shortName} Account';
  String get currencySymbol => currencies[selectedCurrency]!.symbol;
  String get formattedAmount {
    return NumberFormat('###,###.0#').format(amount);
  }
}

const currentAccount = Account(
  selectedCurrency: Currencies.usd,
  amount: 180970.83,
);

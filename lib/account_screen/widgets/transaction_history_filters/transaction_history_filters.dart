import 'package:flutter/material.dart';
import 'package:bind_test/account_screen/widgets/transaction_history_filters/currency_drop_down_button.dart';
import 'package:bind_test/account_screen/widgets/transaction_history_filters/transaction_type_drop_down_button.dart';
import 'package:bind_test/account_screen/widgets/transaction_history_filters/calendar_button.dart';

class TransactionsHistoryFilters extends StatelessWidget {
  const TransactionsHistoryFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.onSurfaceVariant,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text('Transactions History'),
          ),
          const CurrencyDropDownButton(),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                TransactionTypeDropDownButton(),
                CalendarButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

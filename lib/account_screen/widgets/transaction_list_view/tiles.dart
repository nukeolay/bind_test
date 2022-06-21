import 'package:flutter/material.dart';
import 'package:bind_test/core/currencies.dart';
import 'package:bind_test/core/transaction_subjects.dart';
import 'package:bind_test/core/transactions.dart';
import 'package:bind_test/account_screen/widgets/transaction_list_view/transaction_amount.dart';
import 'package:bind_test/account_screen/widgets/transaction_list_view/transaction_icon.dart';
import 'package:bind_test/account_screen/widgets/transaction_list_view/transaction_name_and_date.dart';

class HeaderTile extends StatelessWidget {
  const HeaderTile(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).listTileTheme.selectedColor,
      padding: const EdgeInsets.all(18.0),
      child: Text(text, style: Theme.of(context).textTheme.subtitle1),
    );
  }
}

class TransactionTile extends StatelessWidget {
  const TransactionTile({Key? key, required this.transaction})
      : super(key: key);

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          left: 24.0, right: 24.0, top: 20.0, bottom: 24.0),
      decoration: BoxDecoration(
        color: Theme.of(context).listTileTheme.tileColor,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).listTileTheme.selectedTileColor!,
            width: 2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TransactionIcon(
            type: transaction.type,
            image: transaction.type == TransactionTypes.buy
                ? (transactionSubjects.firstWhere(
                            (element) => element.name == transaction.subject)
                        as Merchant)
                    .image
                : null,
          ),
          TransactionNameAndDate(
            name: transaction.subject,
            date: transaction.dateTime,
          ),
          TransactionAmount(
              isPlus: transaction.type == TransactionTypes.receive,
              amount:
                  '${currencies[transaction.currency]!.symbol}${transaction.amount} ${currencies[transaction.currency]!.shortName}'),
        ],
      ),
    );
  }
}

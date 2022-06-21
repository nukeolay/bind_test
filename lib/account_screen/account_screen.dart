import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:bind_test/data/transactions.dart';
import 'package:bind_test/account_screen/widgets/transaction_history_filters/transaction_history_filters.dart';
import 'package:bind_test/account_screen/widgets/custom_app_bar.dart';
import 'package:bind_test/account_screen/widgets/account_info.dart';
import 'package:bind_test/account_screen/widgets/transaction_list_view/tiles.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> transactionsWithHeaders = getTransactionsWithHeaders(
      transactions: transactions,
      context: context,
    );

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const AccountInfo(),
            const TransactionsHistoryFilters(),
            ...transactionsWithHeaders,
          ],
        ),
      ),
    );
  }

  List<Widget> getTransactionsWithHeaders({
    required List<Transaction> transactions,
    required BuildContext context,
  }) {
    List<Widget> transactionsWithHeaders = [];
    Transaction? previousTransaction;
    bool isHeaderShown = false;
    bool isToday = false;
    bool isYesterday = false;

    for (Transaction transaction in transactions) {
      if (DateFormat.yMd().format(transaction.dateTime) ==
          DateFormat.yMd().format(DateTime.now())) {
        isToday = true;
      } else if (DateFormat.yMd().format(transaction.dateTime) ==
          DateFormat.yMd()
              .format(DateTime.now().subtract(const Duration(days: 1)))) {
        isYesterday = true;
      }

      if (previousTransaction != null &&
          DateFormat.yMd().format(transaction.dateTime) !=
              DateFormat.yMd().format(previousTransaction.dateTime)) {
        isHeaderShown = false;
      }

      if (!isHeaderShown) {
        if (isToday) {
          transactionsWithHeaders.add(const HeaderTile('Today'));
        } else if (isYesterday) {
          transactionsWithHeaders.add(const HeaderTile('Yesterday'));
        } else {
          transactionsWithHeaders.add(HeaderTile(
            DateFormat.MMMEd().format(transaction.dateTime),
          ));
        }
        previousTransaction = transaction;
        isHeaderShown = true;
      }
      transactionsWithHeaders.add(TransactionTile(transaction: transaction));
      isToday = false;
      isYesterday = false;
    }
    return transactionsWithHeaders;
  }
}

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionNameAndDate extends StatelessWidget {
  final String name;
  final DateTime date;
  const TransactionNameAndDate({
    Key? key,
    required this.name,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: Theme.of(context).textTheme.subtitle1),
            const SizedBox(height: 10),
            Text(
              DateFormat.Hm().format(date),
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}

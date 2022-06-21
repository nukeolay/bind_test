import 'package:flutter/material.dart';

class TransactionAmount extends StatelessWidget {
  final bool isPlus;
  final String amount;

  const TransactionAmount({
    Key? key,
    required this.isPlus,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('${isPlus ? '+' : '-'} $amount',
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.subtitle1),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:bind_test/core/transactions.dart';

class TransactionIcon extends StatelessWidget {
  final TransactionTypes type;
  final String? image;

  const TransactionIcon({
    Key? key,
    required this.type,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 18,
        backgroundColor: type == TransactionTypes.buy
            ? Theme.of(context).listTileTheme.selectedTileColor!
            : Theme.of(context).scaffoldBackgroundColor,
        child: CircleAvatar(
          radius: 16,
          backgroundColor: Theme.of(context).colorScheme.primary,
          backgroundImage: image != null ? AssetImage(image!) : null,
          child: type == TransactionTypes.receive
              ? recieveIcon()
              : type == TransactionTypes.send
                  ? sendIcon()
                  : null,
        ));
  }

  Widget recieveIcon() {
    return const Icon(Icons.keyboard_backspace);
  }

  Widget sendIcon() {
    return Transform.rotate(
      angle: 3.14,
      child: const Icon(Icons.keyboard_backspace),
    );
  }
}

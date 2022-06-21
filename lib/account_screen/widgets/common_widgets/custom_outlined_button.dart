import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomOutlinedButton extends StatelessWidget {
  final Widget child;
  final VoidCallback action;
  const CustomOutlinedButton({
    required this.child,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        HapticFeedback.mediumImpact();
        action;
      },
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(40, 40)),
        side: MaterialStateProperty.all(BorderSide(
            color: Theme.of(context).buttonTheme.colorScheme!.outline)),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      ),
      child: child,
    );
  }
}

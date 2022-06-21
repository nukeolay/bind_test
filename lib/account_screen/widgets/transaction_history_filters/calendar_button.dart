import 'package:flutter/material.dart';
import 'package:bind_test/account_screen/widgets/common_widgets/custom_outlined_button.dart';

class CalendarButton extends StatelessWidget {
  const CalendarButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: CustomOutlinedButton(
          action: () {},
          child: const Icon(Icons.calendar_today_outlined),
        ),
      ),
    );
  }
}

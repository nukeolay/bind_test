import 'package:flutter/material.dart';
import 'package:bind_test/account_screen/widgets/common_widgets/custom_drop_down_button.dart';
import 'package:bind_test/data/currencies.dart';

class CurrencyDropDownButton extends StatelessWidget {
  const CurrencyDropDownButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: CustomDropDownButton(
        values: currencies.values
            .toList()
            .map<DropdownMenuItem<String>>(
                (currency) => DropdownMenuItem<String>(
                      value: currency.name,
                      child: Text('${currency.name} ${currency.shortName}'),
                    ))
            .toList(),
        defaultValue: currencies[Currencies.usd]!.name,
      ),
    );
  }
}

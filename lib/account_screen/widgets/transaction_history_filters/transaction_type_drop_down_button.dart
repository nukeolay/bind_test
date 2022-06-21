import 'package:flutter/material.dart';
import 'package:bind_test/account_screen/widgets/common_widgets/custom_drop_down_button.dart';
import 'package:bind_test/core/filter_options.dart';

class TransactionTypeDropDownButton extends StatelessWidget {
  const TransactionTypeDropDownButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: CustomDropDownButton(
      values: typeFilters.values
          .toList()
          .map<DropdownMenuItem<String>>((filter) => DropdownMenuItem<String>(
                value: filter.name,
                child: Text(filter.name),
              ))
          .toList(),
      defaultValue: typeFilters[TypeFilters.all]!.name,
    ));
  }
}

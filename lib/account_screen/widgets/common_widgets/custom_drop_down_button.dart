import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final List<DropdownMenuItem<String>> values;
  final String defaultValue;
  const CustomDropDownButton({
    required this.values,
    required this.defaultValue,
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  late String dropDownValue;

  @override
  void initState() {
    dropDownValue = widget.defaultValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: Theme.of(context).buttonTheme.colorScheme!.outline),
        ),
        child: DropdownButton<String>(
          value: dropDownValue,
          icon: const Icon(Icons.keyboard_arrow_down_rounded),
          elevation: 0,
          isExpanded: true,
          borderRadius: BorderRadius.circular(12),
          style: Theme.of(context).textTheme.bodyText2,
          onChanged: (String? newValue) {
            setState(() {
              dropDownValue = newValue!;
            });
          },
          items: widget.values,
        ),
      ),
    );
  }
}

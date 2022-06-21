import 'package:flutter/material.dart';
import 'package:bind_test/data/account.dart';
import 'package:bind_test/account_screen/widgets/common_widgets/custom_outlined_button.dart';

class AccountInfo extends StatelessWidget {
  const AccountInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.width * 0.8,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: CircleAvatar(
                radius: 40, backgroundImage: AssetImage(currentAccount.image)),
          ),
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  currentAccount.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Theme.of(context).textTheme.headline4!.color),
                ),
              ),
              Positioned(
                right: 10,
                child: CustomOutlinedButton(
                  action: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text('Hide'),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentAccount.currencySymbol,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  currentAccount.formattedAmount,
                  style: const TextStyle(fontSize: 32),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

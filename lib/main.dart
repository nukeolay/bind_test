import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bind_test/core/theme/custom_theme.dart';
import 'package:bind_test/account_screen/account_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const BindTest());
}

class BindTest extends StatelessWidget {
  const BindTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BIND TEST',
      theme: CustomTheme.theme,
      home: const AccountScreen(),
    );
  }
}

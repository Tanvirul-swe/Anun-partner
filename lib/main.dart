import 'package:anun_partner/screen/login_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    supportedLocales: [
      Locale('en'),
    ],
      fallbackLocale:Locale('en') ,
      path: 'Assets/translations',
      // assetLoader: CodegenLoader(),
      child: const AppRoot()));
}
class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: Login(),

    );

  }
}

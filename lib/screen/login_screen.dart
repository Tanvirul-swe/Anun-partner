import 'package:anun_partner/Constant/custom_color.dart';
import 'package:anun_partner/Constant/reusable_textfield.dart';
import 'package:anun_partner/screen/home_screen.dart';
import 'package:anun_partner/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  dialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        String contentText = "Content of Dialog";
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title:  Text("Select Your Country"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio<SingingCharacter>(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      const Text(
                        'Bangladesh - Anun',
                        style: TextStyle(
                          fontFamily: 'Allerta',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio<SingingCharacter>(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      const Text(
                        'Indonesia - Ambil',
                        style: TextStyle(
                          fontFamily: 'Allerta',
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                            print(_character);
                          });
                        },
                        child: Text(LocaleKeys.chancel.tr()),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                            print(_character);
                          });
                        },
                        child: Text(LocaleKeys.ok.tr()),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(LocaleKeys.username).tr(),
          ElevatedButton(
              onPressed: () async {
                await context.setLocale(Locale('bn'));
              },
              child: Text('English')),
          ElevatedButton(
              onPressed: () async {
                await context.setLocale(Locale('en'));
              },
              child: Text('English')),
          Image.asset(
            'Assets/logo.png',
            width: 100,
            height: 100,
          ),
          Column(
            children: [
              TextField(
                readOnly: true,
                onTap: () {
                  setState(() {
                    dialog(context);
                  });
                },
                controller: TextEditingController(
                    text: _character == SingingCharacter.lafayette
                        ? "Bangladesh - Anun"
                        : 'Indonesia - Ambil'),
                decoration: CountryTextFieldDecoration.copyWith(label: Text(LocaleKeys.location.tr())),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: UsernameTextFieldDecoration.copyWith(
                    label: Text(LocaleKeys.username.tr())),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: PasswordTextFieldDecoration.copyWith(
                    label: Text(LocaleKeys.password.tr())),
              ),
            ],
          ),
          MaterialButton(
            height: 40.0,
            minWidth: double.infinity,
            color: green,
            textColor: black,
            child: Text(
              LocaleKeys.SignIn.tr(),
              style: TextStyle(
                fontFamily: "Allerta",
                fontSize: 17,
              ),
            ),
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()))
            },
            splashColor: read,
          ),
        ],
      ),
    ));
  }
}

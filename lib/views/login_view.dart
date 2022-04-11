import 'package:flutter/material.dart';
import 'package:pet_zone/components/custom_button.dart';
import 'package:pet_zone/components/custom_textformfield.dart';
import 'package:pet_zone/statics/constant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginView extends StatelessWidget {
  static const String routeName = "/login";
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _i18n = AppLocalizations.of(context)!;

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40.0),
              Center(
                child: SizedBox(
                  width: 130,
                  child: Image.asset(iconAapp),
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                "EMAIL",
                style: labelStyle,
              ),
              const SizedBox(height: 15.0),
              const CustomTextFormField(),
              const SizedBox(height: 30.0),
              Text(_i18n.mdp.toUpperCase(), style: labelStyle),
              const SizedBox(height: 15.0),
              const CustomTextFormField(typeInput: TypeInput.mdp),
              const SizedBox(height: 30.0),
              CustomButton(
                content: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      _i18n.logIn,
                      style: buttonContentStyle,
                    ),
                    const SizedBox(width: 10.0),
                    const Icon(pawDog)
                  ],
                ),
                action: () {},
                backgroundColor: button1LoginColor,
              ),
              const SizedBox(height: 10.0),
              CustomButton(
                content: Text(
                  _i18n.logWithFb,
                  style: buttonContentStyle,
                ),
                action: () {},
                backgroundColor: button2LoginColor,
              ),
              const SizedBox(height: 8),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    _i18n.noAccount,
                    style: subStyleColor,
                  ),
                ),
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    _i18n.mdpForgot,
                    style: subStyleColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

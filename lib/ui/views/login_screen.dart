import 'package:deal_mart/shared/app_colors.dart';
import 'package:deal_mart/shared/app_strings.dart';
import 'package:deal_mart/shared/app_text_style.dart';
import 'package:deal_mart/shared/helper_methods.dart';
import 'package:deal_mart/ui/views/sign_up_screen.dart';
import 'package:deal_mart/ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'forget_password.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    child: SvgPicture.asset(kLeftArrow),
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                Center(
                  child: SvgPicture.asset(
                    kLoginIcon,
                  ),
                ),
                Center(
                  child: Text(
                    'Sign in',
                    style: kFont20bold().copyWith(fontSize: 32),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Sign in email or mobile number',
                  style: kFont20bold().copyWith(fontSize: 15),
                ),
                Container(
                  color: kWhiteTwoColor,
                  child: CustomTextField(
                    text: 'Enter your email or mobile number',
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Password',
                  style: kFont20bold().copyWith(fontSize: 15),
                ),
                Container(
                  color: kWhiteTwoColor,
                  child: CustomTextField(
                    text: 'Enter Password',
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () => navTo(context, ForgetPasswordScreen()),
                      child: Text(
                        'Forget password?',
                        style: kFont20bold().copyWith(fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                AppButton(
                  onPressed: () {},
                  text: 'Sign in',
                ),
                SizedBox(
                  height: 30.0,
                ),
                OutLineAppButton(
                  onPressed: () => navTo(
                    context,
                    SignUpScreen(),
                  ),
                  text: 'Create account',
                ),
              ],
            ),
          ),
        )),
      );
}

import 'package:deal_mart/shared/app_colors.dart';
import 'package:deal_mart/shared/app_strings.dart';
import 'package:deal_mart/shared/app_text_style.dart';
import 'package:deal_mart/ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                Text(
                  'Create account',
                  style: kFont20bold().copyWith(
                    fontSize: 34,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Full Name',
                  style: kFont20bold().copyWith(fontSize: 15),
                ),
                Container(
                  color: kWhiteTwoColor,
                  child: CustomTextField(
                    text: 'Enter your full name',
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Email',
                  style: kFont20bold().copyWith(fontSize: 15),
                ),
                Container(
                  color: kWhiteTwoColor,
                  child: CustomTextField(
                    text: 'Enter your email',
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Phone Number',
                  style: kFont20bold().copyWith(fontSize: 15),
                ),
                Container(
                  color: kWhiteTwoColor,
                  child: CustomTextField(
                    text: 'Enter phone',
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
                SizedBox(
                  height: 30.0,
                ),
                OutLineAppButton(
                  onPressed: () {},
                  text: 'Create account',
                ),
              ],
            ),
          ),
        )),
      );
}

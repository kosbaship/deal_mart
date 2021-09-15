import 'package:deal_mart/shared/app_strings.dart';
import 'package:deal_mart/shared/app_text_style.dart';
import 'package:deal_mart/ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                  height: 90.0,
                ),
                Text(
                  'Password Recovery\nBy mobile number',
                  style: kFont20bold().copyWith(
                    fontSize: 34,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Phone Number',
                  style: kFont20bold().copyWith(fontSize: 15),
                ),
                CustomTextField(
                  text: 'Enter phone number',
                ),
                SizedBox(
                  height: 135.0,
                ),
                AppButton(
                  onPressed: () {},
                  text: 'Confirm',
                ),
              ],
            ),
          ),
        )),
      );
}

import 'package:deal_mart/shared/app_colors.dart';
import 'package:deal_mart/shared/app_strings.dart';
import 'package:deal_mart/shared/app_text_style.dart';
import 'package:deal_mart/shared/helper_methods.dart';
import 'package:deal_mart/ui/views/sign_up_screen.dart';
import 'package:deal_mart/ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                Center(
                  child: SvgPicture.asset(
                    kDealMartLogo,
                  ),
                ),
                Text(
                  'Welcome',
                  style: kFont20bold().copyWith(
                    fontSize: 34,
                    color: kDustyOrangeColor,
                  ),
                ),
                Text(
                  'Select the country and language of the application',
                  style: kFont20bold().copyWith(
                    fontSize: 32,
                    color: kBLackColor,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                InkWell(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => ChooseLanguage(),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: kWhiteTwoColor,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(kDestinationIcon),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Select country',
                          style: kFont20Light().copyWith(
                            fontSize: 18,
                            color: kWormGreyColor,
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(kDownArrow),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                InkWell(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => ChooseCountry(),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 58,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: kWhiteTwoColor,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(kLanguageIcon),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Select language',
                          style: kFont20Light().copyWith(
                            fontSize: 18,
                            color: kWormGreyColor,
                          ),
                        ),
                        Spacer(),
                        SvgPicture.asset(kDownArrow),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 120.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => navTo(
                          context,
                          SignUpScreen(),
                        ),
                        child: Container(
                          height: 58,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: kWhiteColor,
                              border: Border.all(color: kDustyOrangeColor)),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 24),
                          child: Center(
                            child: Text(
                              'Create Account',
                              style: kFont20SimiBold().copyWith(
                                color: kDustyOrangeColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => navTo(
                          context,
                          LoginScreen(),
                        ),
                        child: Container(
                          height: 58,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            color: kDustyOrangeColor,
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 24),
                          child: Center(
                            child: Text(
                              'Login',
                              style: kFont20SimiBold().copyWith(
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )),
      );
}

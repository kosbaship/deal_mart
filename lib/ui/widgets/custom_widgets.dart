import 'package:deal_mart/shared/app_colors.dart';
import 'package:deal_mart/shared/app_strings.dart';
import 'package:deal_mart/shared/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  AppButton({
    @required this.onPressed,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 58,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: kDustyOrangeColor,
          boxShadow: [
            BoxShadow(
              color: kDustyOrange30Color.withOpacity(0.3),
              spreadRadius: 8,
              blurRadius: 20,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: kWhiteColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class OutLineAppButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  OutLineAppButton({
    @required this.onPressed,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 58,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: kWhiteColor,
            border: Border.all(color: kDustyOrangeColor)),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: kDustyOrangeColor, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

class ChooseLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kWormGreyColor,
        child: Container(
          padding: EdgeInsets.only(top: 5.0),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 2,
                color: kWormGreyColor,
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'English',
                    style: kFont20bold(),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  SvgPicture.asset(kRightMark),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'عربي',
                    style: kFont20bold(),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChooseCountry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kWormGreyColor,
        child: Container(
          padding: EdgeInsets.only(top: 5.0),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                height: 2,
                color: kWormGreyColor,
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(kEgyptFlag),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Egypt',
                    style: kFont20bold(),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(kSAFlag),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'Saudi Arabia',
                    style: kFont20bold(),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(kUAEFlag),
                  SizedBox(
                    width: 20.0,
                  ),
                  Text(
                    'UAE',
                    style: kFont20bold(),
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String text;

  CustomTextField({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kWhiteColor,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: kWhiteTwoColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: kWhiteTwoColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: kWhiteTwoColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: kWhiteTwoColor),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: kWhiteTwoColor),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: kWhiteTwoColor),
          ),
          contentPadding: EdgeInsets.only(top: 8.0, left: 8.0),
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 18,
            color: kWormGreyColor,
            fontFamily: kCairoLightFont,
          ),
        ),
      ),
    );
  }
}

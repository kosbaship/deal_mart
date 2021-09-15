import 'package:conditional_builder/conditional_builder.dart';
import 'package:deal_mart/shared/app_colors.dart';
import 'package:deal_mart/shared/app_strings.dart';
import 'package:deal_mart/shared/app_text_style.dart';
import 'package:deal_mart/shared/helper_methods.dart';
import 'package:deal_mart/ui/views/welcome_screen.dart';
import 'package:deal_mart/ui/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardModel {
  final String image;
  final String title;

  BoardModel({this.image, this.title});
}

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardingScreen> {
  List<BoardModel> list;

  @override
  void initState() {
    super.initState();

    list = [
      BoardModel(
          image: kOnBoardingIcon1,
          title:
              'explore the app start wining by order as many products you can shop more and by more'),
      BoardModel(
          image: kOnBoardingIcon2,
          title:
              'every purchase on product gives you a singel complentary ticket with id number on it to enter the draw'),
      BoardModel(
          image: kOnBoardingIcon3,
          title:
              'we will announce winners on the day the draw will be held wich is normally on 27th and 28th every month'),
    ];
  }

  var isLast = false;
  final controller = PageController();

  void submit() {
    navTo(
      context,
      WelcomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: kWhiteColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () => submit(),
                      child: Container(
                        margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                        child: Row(
                          children: [
                            Text(
                              'Skip',
                              style: kFont20bold().copyWith(fontSize: 18),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: kBLackColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  kDealMartLogo,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: PageView.builder(
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (i) {
                        if (i == (list.length - 1) && !isLast)
                          setState(() => isLast = true);
                        else if (isLast) setState(() => isLast = false);
                      },
                      controller: controller,
                      itemCount: list.length,
                      itemBuilder: (ctx, i) => Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: SvgPicture.asset(
                              list[i].image,
                            ),
                          ),
                          SizedBox(height: 30),
                          ConditionalBuilder(
                            condition: i == 2,
                            builder: (context) => RichText(
                              text: TextSpan(
                                  style: kFont20SimiBold().copyWith(
                                    height: 2,
                                    fontSize: 24.0,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text:
                                          'we will announce winners on the day the draw will be held wich is normally on',
                                    ),
                                    TextSpan(
                                      text: ' 27th and 28th ',
                                      style:
                                          TextStyle(color: kDustyOrangeColor),
                                    ),
                                    TextSpan(
                                      text: 'every month',
                                    ),
                                  ]),
                            ),
                            fallback: (context) => Text(
                              list[i].title,
                              style: kFont20SimiBold().copyWith(
                                height: 2,
                                fontSize: 24.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SmoothPageIndicator(
                    controller: controller,
                    effect: WormEffect(
                      dotColor: kDustyOrange30Color,
                      activeDotColor: kDustyOrangeColor,
                      dotHeight: 12,
                      dotWidth: 12,
                      spacing: 10.0,
                    ),
                    count: list.length,
                  ),
                ),
                AppButton(
                  onPressed: () {
                    if (isLast) {
                      submit();
                    } else
                      controller.nextPage(
                        duration: Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn,
                      );
                  },
                  text: !isLast ? 'Next' : 'Start',
                ),
              ],
            ),
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_confg.dart';
import 'package:fruits_market/core/widgets/custon_bottons.dart';
import 'package:fruits_market/features/onBoarding/presentation/widgets/custom_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomPageView(),
        Positioned(
          child: const Text(
            'Skip',
            style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(244, 107, 97, 97),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          top: SizeConfig.defaultSize! * 10,
          right: 32,
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            left: SizeConfig.defaultSize! * 10,
            child: const CustomGeneralButton(text: 'Next')),
      ],
    );
  }
}

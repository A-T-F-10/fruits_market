import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_confg.dart';
import 'package:fruits_market/features/onBoarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  Animation<double>? animation;
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));
    animation = Tween<double>(begin: .3, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
    goToNextView();
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(children: [
        const Spacer(),
        FadeTransition(
          opacity: animation!,
          child: const Text(
            'Fruits Market ',
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 50,
                fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),
        Image.asset('assets/images/splash_view_image.png'),
      ]),
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    });
  }
}

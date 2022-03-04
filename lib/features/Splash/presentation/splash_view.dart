import 'package:flutter/material.dart';
import 'package:fruits_market/core/consten_colors.dart';
import 'package:fruits_market/features/Splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColor,
      body: SplashViewBody(),
    );
  }
}

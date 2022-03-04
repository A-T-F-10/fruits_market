import 'package:flutter/material.dart';
import 'package:fruits_market/core/consten_colors.dart';
import 'package:fruits_market/core/utils/size_confg.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({this.text, Key? key}) : super(key: key);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: 60,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
          child: Text(
        text!,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      )),
    );
  }
}

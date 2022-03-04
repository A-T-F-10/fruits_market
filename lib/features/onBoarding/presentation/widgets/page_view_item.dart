import 'package:flutter/cupertino.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitel, this.image})
      : super(key: key);
  final String? title;
  final String? subTitel;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image!),
        Text(
          title!,
          style: const TextStyle(
            color: Color(0xff2f2e41),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        ),
        Text(
          subTitel!,
          style: const TextStyle(
            color: Color(0xff78787c),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.left,
        )
      ],
    );
  }
}

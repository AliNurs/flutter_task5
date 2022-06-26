import 'package:flutter/material.dart';

import '../../theme/app_images.dart';

class BodyImage extends StatelessWidget {
  const BodyImage({Key? key, required this.height, required this.image})
      : super(key: key);

  final double height;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        image,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

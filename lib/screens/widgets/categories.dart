import 'package:flutter/material.dart';
import 'package:flutter_task5/theme/styles_txt.dart';

class Categories extends StatelessWidget {
  const Categories(
      {Key? key,
      required this.image,
      required this.subtitle,
      required this.title})
      : super(key: key);

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(colors: [
          Color(0xffF90640),
          Color(0xff8F00FF),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Container(
        width: 115,
        height: 140,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(height: 10),
              SizedBox(
                height: 55,
                child: Image.asset(
                  image,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Text(title, style: AppTextStyles.black13w700),
              Text(
                subtitle,
                style: AppTextStyles.black12w300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

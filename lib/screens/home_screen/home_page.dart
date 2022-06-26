import 'package:flutter/material.dart';

import '../../theme/app_images.dart';
import '../widgets/body_image.dart';
import 'MainScreenWidgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BodyImage(
            height: 0.6,
            image: AppImages.bg1,
          ),
          BodyImage(
            height: 0.3,
            image: AppImages.bg2,
          ),
          MainScreenWidgets(),
        ],
      ),
    );
  }
}

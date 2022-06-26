import 'package:flutter/material.dart';

import '../../theme/app_images.dart';
import '../../theme/styles_txt.dart';
import '../widgets/categories.dart';

class MainScreenWidgets extends StatelessWidget {
  const MainScreenWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var borderRadius2 = BorderRadius;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text("Главная", style: AppTextStyles.white20w700),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 26, vertical: 18),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                      color: Color(0xff45006F).withOpacity(0.35),
                      blurRadius: 14),
                ]),
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(25),
                ),
                height: 46,
                width: 46,
                child: Image.asset(AppImages.molniya),
              ),
              title: Text('Начните зарабатывать!',
                  style: AppTextStyles.black15w700),
              subtitle: Text(
                  style: TextStyle(fontSize: 12),
                  'Приобретите тариф Behype-PRO и начните свою карьеру!'),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffF9F8FF),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                topRight: Radius.circular(14),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 37),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Категории', style: AppTextStyles.black18w700),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Categories(
                      image: AppImages.reklama,
                      title: 'Реклама',
                      subtitle: '106 кампаний',
                    ),
                    Categories(
                      image: AppImages.vzaimopiar,
                      title: 'Взаимопиар',
                      subtitle: '56 заявок',
                    ),
                    Categories(
                      image: AppImages.barter,
                      title: 'Бартер',
                      subtitle: '245 заявок',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Рекламные компании',
                      style: AppTextStyles.black18w700,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Все'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffF90640),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 34,
                ),
                Container(
                  width: 170,
                  height: 162,
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xff6322E0),
                                Color(0xffD96DFF),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 11, horizontal: 15),
                          child: Image.asset(AppImages.list),
                        ),
                        height: 120,
                        width: double.infinity,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        height: 42,
                        width: double.infinity,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          child: Text('В новом обновлении',
                              style: AppTextStyles.black13w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

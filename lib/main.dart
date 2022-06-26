import 'package:flutter/material.dart';
import 'package:flutter_task5/widgets/app_images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Screen task 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              AppImages.bg1,
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              AppImages.bg2,
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Главная",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 20),
              ),
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
                    title: Text(
                      'Начните зарабатывать!',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 15),
                    ),
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
                      const Text(
                        'Категории',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          _Categories(
                            image: AppImages.reklama,
                            title: 'Реклама',
                            subtitle: '106 кампаний',
                          ),
                          _Categories(
                            image: AppImages.vzaimopiar,
                            title: 'Взаимопиар',
                            subtitle: '56 заявок',
                          ),
                          _Categories(
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
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 18),
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
                                child: Text(
                                  'В новом обновлении',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                ),
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
          )
        ],
      ),
    );
  }
}

class _Categories extends StatelessWidget {
  const _Categories(
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
              Text(
                title,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 15),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black,
                    fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;
  PageController controller = PageController(
    initialPage: 0,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    timer = Timer.periodic(Duration(seconds: 3), (timer) {
      int currentPage = controller.page!.toInt();
      int nextPage = currentPage + 1;

      if (nextPage > 4) {
        nextPage = 0;
      }

      controller.animateToPage(
          nextPage,
          duration: Duration(seconds: 1),
          curve: Curves.linear,
      );
    });
  }

  @override
  void dispose() {
    controller.dispose(); //메모리 적으로 안좋기 때문에
    if (timer != null) {
      timer!.cancel();
    }

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    //상단 상태바 색상 변경

    return Scaffold(
      body: PageView(
        //스크롤을 할 수 있는 스큰린 뷰
          controller: controller,
          children: [1, 2, 3, 4, 5]
              .map((e) =>
              Image.asset(
                'asset/img/image_$e.jpeg',
                fit: BoxFit.cover,
              ))
              .toList()),
    );
  }
}

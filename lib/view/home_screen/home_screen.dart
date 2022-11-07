import 'package:flutter/material.dart';
import 'package:salesapp/custom/tab_button/tab_button.dart';
import 'package:salesapp/utils/colors.dart';
import 'package:salesapp/view/about_us/about_us.dart';
import 'package:salesapp/view/home/home.dart';

import '../../current_state.dart';
import '../../custom/sidebar/sidebar.dart';
import '../../utils/screen_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            left: 0.0,
            top: 0.0,
            child: Container(
              width: ScreenUtils.width / 23,
              height: ScreenUtils.height,
              color: Color(0xFF32323d),
              child: SideBar(),
          )),
          Positioned(
              left: ScreenUtils.width / 23,
              right: 0.0,
              top: 0.0,
              child: Container(
                width: ScreenUtils.width * 22/ 19,
                height: ScreenUtils.height,
                child: PageView.builder(
                  scrollDirection: Axis.vertical,
                  controller: CurrentState.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return CurrentState.screens[index];
                  },
                ),
              ))
        ],
      ),
    ));
  }
}
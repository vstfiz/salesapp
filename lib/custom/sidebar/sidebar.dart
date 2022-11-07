import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../current_state.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/screen_utils.dart';
import '../tab_button/tab_button.dart';

class SideBar extends StatefulWidget {
_SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF32323d),
        height: ScreenUtils.height,
        width: ScreenUtils.width / 23,
        child: Column(
          children: List.generate(CurrentState.tabs.length, (index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  CurrentState.selectedIndex = index;
                  CurrentState.pageController.animateToPage(index, curve: Curves.decelerate, duration: Duration(milliseconds: 750));
                  // CurrentState.pageController.jumpToPage(index);
                });
              },
              child: SideBarTab(
                  imageAddress: CurrentState.tabs[index].imageAddress,
                  title: CurrentState.tabs[index].title,
                  hasChild: CurrentState.tabs[index].hasChild,
                  height: ScreenUtils.width / 23,
                  width: ScreenUtils.width / 23,
                  textStyle: CurrentState.tabs[index].textStyle,
                  index: CurrentState.tabs[index].index,
                  children: CurrentState.tabs[index].children
              ),
            );
          }),
        ),
    );
  }
}
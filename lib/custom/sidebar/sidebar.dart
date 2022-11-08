import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salesapp/providers/ImageProvider.dart';

import '../../current_state.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/screen_utils.dart';
import '../tab_button/tab_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: ScreenUtils.height,
      width: ScreenUtils.width / 23,
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(CurrentState.tabs.length, (index) {
          return GestureDetector(
            onTap: () async{
              setState(() {
                CurrentState.selectedIndex = index;
                CurrentState.tabs[index].hasChild
                    ? CurrentState.pageController.jumpToPage(0)
                    : CurrentState.pageController.jumpToPage(1);
                // CurrentState.pageController.jumpToPage(index);
              });

            },
            child: SideBarTab(
              icon: CurrentState.tabs[index].icon,
              title: CurrentState.tabs[index].title,
              hasChild: CurrentState.tabs[index].hasChild,
              height: ScreenUtils.width / 23,
              width: ScreenUtils.width / 23,
              textStyle: CurrentState.tabs[index].textStyle,
              index: CurrentState.tabs[index].index,
              categories: CurrentState.tabs[index].categories,
              subCategories: CurrentState.tabs[index].subCategories,
            ),
          );
        }),
      ),
    );
  }
}

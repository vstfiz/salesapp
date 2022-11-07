import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:salesapp/utils/colors.dart';

import '../../current_state.dart';
import '../../utils/screen_utils.dart';

class SideBarTab extends StatefulWidget {
  final String imageAddress;
  final int index;
  final String title;
  final bool hasChild;
  final double height;
  final double width;
  final TextStyle textStyle;
  final List<PopupMenuItem> children;

  const SideBarTab(
      {super.key,required this.index, required this.imageAddress, required this.title, required this.hasChild, required this.height, required this.width, required this.textStyle,required this.children});

  @override
  _SideBarTabState createState()=> _SideBarTabState();
}

class _SideBarTabState extends State<SideBarTab> {
  @override
  Widget build(BuildContext context) {
    return HoverContainer(
        hoverColor: ColorPallete.hoveringBlue.withOpacity(0.3),
        width: ScreenUtils.width / 23,
        height: ScreenUtils.height / 15,
        child: widget.hasChild?PopupMenuButton(
          color: ColorPallete.midnightGreen,
          offset: Offset(ScreenUtils.width / 23,0),
          child:  Column(
            children: [
              Image.asset(widget.imageAddress,height: ScreenUtils.getHeight(36),width: ScreenUtils.getWidth(64),color: CurrentState.selectedIndex==widget.index?Colors.white:ColorPallete.satinSheenGold,),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style:  TextStyle(
                    fontSize: CurrentState.selectedIndex==widget.index?10:11,
                    fontWeight: CurrentState.selectedIndex==widget.index?FontWeight.w500:FontWeight.w400,
                    color:CurrentState.selectedIndex==widget.index?Colors.white:ColorPallete.satinSheenGold
                ),
              )
            ],
          ),
          itemBuilder: (context) {
            return widget.children;
          },
        ):Column(
          children: [
            Image.asset(widget.imageAddress,height: ScreenUtils.getHeight(36),width: ScreenUtils.getWidth(64),color: CurrentState.selectedIndex==widget.index?Colors.white:ColorPallete.satinSheenGold,),
            Text(
              widget.title,
              textAlign: TextAlign.center,
              style:  TextStyle(
                  fontSize: CurrentState.selectedIndex==widget.index?10:11,
                  fontWeight: CurrentState.selectedIndex==widget.index?FontWeight.w500:FontWeight.w400,
                  color:CurrentState.selectedIndex==widget.index?Colors.white:ColorPallete.satinSheenGold
              ),
            )
          ],
        ),
    );
  }
}
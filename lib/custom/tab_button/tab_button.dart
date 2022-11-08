import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:salesapp/models/sub_category.dart';
import 'package:salesapp/utils/colors.dart';

import '../../current_state.dart';
import '../../models/category.dart';
import '../../utils/screen_utils.dart';

class SideBarTab extends StatefulWidget {
  final IconData icon;
  final int index;
  final String title;
  final bool hasChild;
  final double height;
  final double width;
  final TextStyle textStyle;
  final List<Category> categories;
  final List<SubCategory> subCategories;

  const SideBarTab(
      {super.key,required this.index, required this.icon, required this.title, required this.hasChild, required this.height, required this.width, required this.textStyle, required this.categories, required this.subCategories});

  @override
  _SideBarTabState createState()=> _SideBarTabState();
}

class _SideBarTabState extends State<SideBarTab> {
  @override
  Widget build(BuildContext context) {
    return HoverContainer(
      color: widget.index==CurrentState.selectedIndex?ColorPallete.hoveringBlue.withOpacity(0.5):Colors.transparent,
        hoverColor: ColorPallete.hoveringBlue.withOpacity(0.3),
        width: ScreenUtils.width / 23,
        // height: ScreenUtils.height / 15,
        child:
         Padding(
           padding:  EdgeInsets.symmetric(vertical: ScreenUtils.getHeight(10)),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(widget.icon,size: ScreenUtils.getWidth(16),color: ColorPallete.satinSheenGold,),
                SizedBox(height: 5.0,),
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style:  TextStyle(
                      fontSize: CurrentState.selectedIndex==widget.index?10:11,
                      fontWeight: CurrentState.selectedIndex==widget.index?FontWeight.w500:FontWeight.w400,
                      color:ColorPallete.satinSheenGold
                  ),
                )
              ],
            ),
         ),
    );
  }
}
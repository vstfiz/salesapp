library CurrentState;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salesapp/utils/colors.dart';
import 'package:salesapp/utils/images.dart';
import 'package:salesapp/utils/screen_utils.dart';
import 'package:salesapp/view/home/home.dart';

import 'custom/tab_button/tab_button.dart';

class CurrentState {
  static int selectedIndex = 0;
  static List<SideBarTab> tabs = [
    SideBarTab(
        imageAddress: Images.home,
        title: 'Home',
        hasChild: false,
        height: ScreenUtils.width / 23,
        width: ScreenUtils.width / 23,
        textStyle: TextStyle(color: ColorPallete.satinSheenGold,fontSize: 12.0,overflow: TextOverflow.clip),
        index: 0,
        children: [
        ]
    ),
    SideBarTab(
        imageAddress: Images.home,
        title: 'About Us',
        hasChild: false,
        height: ScreenUtils.width / 23,
        width: ScreenUtils.width / 23,
        textStyle: TextStyle(color: ColorPallete.satinSheenGold,fontSize: 12.0,overflow: TextOverflow.clip),
        index: 1,
        children: [
        ]
    ),
    SideBarTab(
        imageAddress: Images.home,
        title: 'Home\nEngineering',
        hasChild: false,
        height: ScreenUtils.width / 23,
        width: ScreenUtils.width / 23,
        textStyle: TextStyle(color: ColorPallete.satinSheenGold,fontSize: 12.0,overflow: TextOverflow.clip,),
        index: 2,
        children: [
        ]
    ),
    SideBarTab(
        imageAddress: Images.home,
        title: 'Modular\nFurniture',
        hasChild: true,
        height: ScreenUtils.width / 23,
        width: ScreenUtils.width / 23,
        textStyle: TextStyle(color: ColorPallete.satinSheenGold,fontSize: 12.0,overflow: TextOverflow.clip),
        index: 3,
        children: [
          PopupMenuItem(
            onTap: () {},
            child: Text('Kitchen',style: TextStyle(color: ColorPallete.satinSheenGold,fontSize: 14.0),),
          ),PopupMenuItem(

            onTap: () {},
            child: Text('Wardrobe',style: TextStyle(color: ColorPallete.satinSheenGold,fontSize: 14.0),),
          ),PopupMenuItem(

            onTap: () {},
            child: Text('Storage Solution',style: TextStyle(color: ColorPallete.satinSheenGold,fontSize: 14.0),),
          )
        ]
    ),
  ];

  static var screens = [
    Home(),
  ];

  static PageController pageController = PageController(initialPage: 0);
}
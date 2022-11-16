library CurrentState;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salesapp/models/sub_category.dart';
import 'package:salesapp/utils/colors.dart';
import 'package:salesapp/utils/images.dart';
import 'package:salesapp/utils/screen_utils.dart';
import 'package:salesapp/view/with_category/with_category.dart';
import 'package:salesapp/view/without_category/without_category.dart';

import 'custom/tab_button/tab_button.dart';
import 'models/category.dart';
import 'models/image_master.dart';
import 'models/screen_image_master.dart';

class CurrentState {
  static int selectedIndex = 0;
  static String selectedCategory =
      CurrentState.tabs[CurrentState.selectedIndex].categories[0].name;
  static String selectedSubCategory = 'GETs';
  static List<SideBarTab> tabs = [
    SideBarTab(
      icon: "images/sidebar/home.png",
      title: 'Homepage',
      apiCode: 'Homepage',
      hasChild: false,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
          fontFamily: "Verdana",
          color: ColorPallete.satinSheenGold,
          fontSize: 12.0,
          overflow: TextOverflow.clip),
      index: 0,
      categories: const [],
      subCategories: const [],
    ),
    SideBarTab(
      icon: "images/sidebar/offers.png",
      title: 'Offers',
      apiCode: 'Offers',
      hasChild: false,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
          fontFamily: "Verdana",
          color: ColorPallete.satinSheenGold,
          fontSize: 12.0,
          overflow: TextOverflow.clip),
      index: 1,
      categories: const [],
      subCategories: const [],
    ),
    SideBarTab(
      icon: "images/sidebar/Excavator.png",
      title: 'Excavator',
      apiCode: 'Excavator',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        fontFamily: "Verdana",
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 2,
      categories: [
        topMenuItems['Kobelco']!,
        topMenuItems['Caterpillar']!,
        topMenuItems['Volvo']!,
        topMenuItems['Komatsu']!,
        topMenuItems['Tata Hitachi']!,
        topMenuItems['Hyundai']!,
        topMenuItems['JCB']!,
        topMenuItems['Sany']!
      ],
      subCategories: [
        rightMenuItems['Hydraulics']!,
        rightMenuItems['Engine']!,
        rightMenuItems['UCG']!,
        rightMenuItems['Filters']!,
        rightMenuItems['Attachments']!,
        rightMenuItems['GET']!,
        rightMenuItems['Seals']!,
        rightMenuItems['Others']!,
      ],
    ),
    SideBarTab(
      icon: "images/sidebar/backloader.png",
      title: 'Loaders',
      apiCode: 'Loaders',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        fontFamily: "Verdana",
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 3,
      categories: [
        // topMenuItems['Kobelco']!,
        // topMenuItems['Caterpillar']!,
        // topMenuItems['Volvo']!,
        // topMenuItems['Komatsu']!,
        // topMenuItems['Tata Hitachi']!,
        // topMenuItems['Hyundai']!,
        // topMenuItems['JCB']!,
        // topMenuItems['Sany']!
      ],
      subCategories: [
        // rightMenuItems['Hydraulics']!,
        // rightMenuItems['Engine']!,
        // rightMenuItems['Filters']!,
        // rightMenuItems['Lubricants']!,
        // rightMenuItems['Attachments']!,
        // rightMenuItems['GET']!,
        // rightMenuItems['Seals']!,
        // rightMenuItems['Others']!,
      ],
    ),
    SideBarTab(
      icon: "images/sidebar/Grader.png",
      title: 'Grader',
      apiCode: 'Grader',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        fontFamily: "Verdana",
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 4,
      categories: [
        // topMenuItems['Caterpillar']!,
        // topMenuItems['Volvo']!,
        // topMenuItems['Komatsu']!,
        // topMenuItems['XCMG']!,
        // topMenuItems['Leeboy']!,
        // topMenuItems['Liugong']!,
        // topMenuItems['BEML']!,
      ],
      subCategories: [
        // rightMenuItems['Hydraulics']!,
        // rightMenuItems['Engine']!,
        // rightMenuItems['Filters']!,
        // rightMenuItems['Lubricants']!,
        // rightMenuItems['GET']!,
        // rightMenuItems['Seals']!,
        // rightMenuItems['Others']!,
      ],
    ),
    SideBarTab(
      icon: "images/sidebar/Bulldozer.png",
      title: 'Dozer',
      apiCode: 'Dozer',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        fontFamily: "Verdana",
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 5,
      categories: [
        // topMenuItems['Caterpillar']!,
        // topMenuItems['Komatsu']!,
        // topMenuItems['BEML']!
      ],
      subCategories: [
        // rightMenuItems['Hydraulics']!,
        // rightMenuItems['Engine']!,
        // rightMenuItems['UCG']!,
        // rightMenuItems['Filters']!,
        // rightMenuItems['Lubricants']!,
        // rightMenuItems['GET']!,
        // rightMenuItems['Seals']!,
        // rightMenuItems['Others']!,
      ],
    ),
    SideBarTab(
      icon: "images/sidebar/Roller.png",
      title: 'Rollers',
      apiCode: 'Rollers',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        fontFamily: "Verdana",
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 6,
      categories: [
        // topMenuItems['Caterpillar']!,
        // topMenuItems['Volvo']!,
        // topMenuItems['L&T']!,
        // topMenuItems['Case']!,
        // topMenuItems['JCB']!,
        // topMenuItems['Sany']!,
        // topMenuItems['HAMM']!,
        // topMenuItems['IngersRoll Rand']!,
      ],
      subCategories: [
        // rightMenuItems['Hydraulics']!,
        // rightMenuItems['Engine']!,
        // rightMenuItems['Filters']!,
        // rightMenuItems['Lubricants']!,
        // rightMenuItems['GET']!,
        // rightMenuItems['Seals']!,
        // rightMenuItems['Others']!,
      ],
    ),
    SideBarTab(
      icon: "images/sidebar/Crusher.png",
      title: 'Crushers',
      apiCode: 'Crushers',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        fontFamily: "Verdana",
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 7,
      categories: [
        topMenuItems['Puzzolana']!,
        topMenuItems['Propel']!,
        topMenuItems['Metso']!,
        topMenuItems['Sandvik']!,
        topMenuItems['Writgen']!,
        topMenuItems['Klemann']!,
      ],
      subCategories: [
        rightMenuItems['Liners']!,
        rightMenuItems['Belts']!,
        rightMenuItems['Cone Mantle']!,
        rightMenuItems['Conveyer Rollers']!,
      ],
    ),
    SideBarTab(
      icon: "images/sidebar/Tipper.png",
      title: 'Trippers / \n Transit Mixers',
      apiCode: 'trippers',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        fontFamily: "Verdana",
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 8,
      categories: [
        // topMenuItems['Tata']!,
        // topMenuItems['Ashok Leyland']!,
        // topMenuItems['Benz']!,
        // topMenuItems['Scania / Ajax Fiori']!,
        // topMenuItems['Putzmister']!,
        // topMenuItems['Sany']!,
        // topMenuItems['Schwing Stetter']!,
        // topMenuItems['Greaves Cotton']!,
      ],
      subCategories: [
        // rightMenuItems['Hydraulics']!,
        // rightMenuItems['Engine']!,
        // rightMenuItems['GET']!,
        // rightMenuItems['Seals']!,
      ],
    ),
  ];

  static var screens = [const WithoutCategory(), const WithCategory()];

  static Map<String, SubCategory> rightMenuItems = {
    'Engine': SubCategory('Engine', 'Engine', 'images/rightmenu/engine.png'),
    'GET': SubCategory('GET', 'GET', 'images/rightmenu/get.png'),
    'Seals': SubCategory('Seals', 'Seals', 'images/rightmenu/seals.png'),
    'Hydraulics': SubCategory('Hydraulics (Pump / Motor/ Gear Box)',
        'Hydraulics', 'images/rightmenu/hydraulics.png'),
    'UCG': SubCategory('UCG', 'UCG', 'images/rightmenu/ucg.png'),
    'Filters': SubCategory('Filters', 'Filters', 'images/rightmenu/filter.png'),
    'Lubricants': SubCategory('Lubricants', 'Lubricants', ''),
    'Attachments': SubCategory(
        'Attachments', 'Attachments', 'images/rightmenu/pin_bushes.png'),
    'Others': SubCategory('Others', 'Others', 'images/rightmenu/others.png'),
    'Liners':
        SubCategory('Liners (Liners / Jaw Plates)', 'Liners', ''),
    'Belts': SubCategory('Belts', 'Belts', ''),
    'Cone Mantle': SubCategory('Cone Mantle', 'Cone Mantle', ''),
    'Conveyer Rollers': SubCategory('Conveyer Rollers', 'Conveyer Rollers', '')
  };

  static Map<String, Category> topMenuItems = {
    'Kobelco': Category(
      'Kobelco',
    ),
    'Caterpillar': Category(
      'Caterpillar',
    ),
    'Volvo': Category(
      'Volvo',
    ),
    'Komatsu': Category(
      'Komatsu',
    ),
    'Tata Hitachi': Category(
      'Tata Hitachi',
    ),
    'Hyundai': Category(
      'Hyundai',
    ),
    'JCB': Category(
      'JCB',
    ),
    'Sany': Category(
      'Sany',
    ),
    'Tata': Category('Tata', iconData: FontAwesomeIcons.house),
    'Ashok Leyland':
        Category('Ashok Leyland', iconData: FontAwesomeIcons.house),
    'Benz': Category('Benz', iconData: FontAwesomeIcons.house),
    'Eicher': Category('Eicher', iconData: FontAwesomeIcons.house),
    'Scania / Ajax Fiori':
        Category('Scania / Ajax Fiori', iconData: FontAwesomeIcons.house),
    'Putzmister': Category('Putzmister', iconData: FontAwesomeIcons.house),
    'Schwing Stetter':
        Category('Schwing Stetter', iconData: FontAwesomeIcons.house),
    'Greaves Cotton':
        Category('Greaves Cotton', iconData: FontAwesomeIcons.house),
    'Puzzolana': Category('Puzzolana', iconData: FontAwesomeIcons.house),
    'Propel': Category('Propel', iconData: FontAwesomeIcons.house),
    'Metso': Category('Metso', iconData: FontAwesomeIcons.house),
    'Sandvik': Category('Sandvik', iconData: FontAwesomeIcons.house),
    'Writgen': Category('Writgen', iconData: FontAwesomeIcons.house),
    'Klemann': Category('Klemann', iconData: FontAwesomeIcons.house),
    'L&T': Category('L&T', iconData: FontAwesomeIcons.house),
    'Case': Category('Case', iconData: FontAwesomeIcons.house),
    'HAMM': Category('HAMM', iconData: FontAwesomeIcons.house),
    'IngersRoll Rand':
        Category('IngersRoll Rand', iconData: FontAwesomeIcons.lockOpen),
    'XCMG': Category('XCMG', iconData: FontAwesomeIcons.house),
    'Leeboy': Category('Leeboy', iconData: FontAwesomeIcons.house),
    'Liugong': Category('Liugong', iconData: FontAwesomeIcons.house),
    'BEML': Category('BEML', iconData: FontAwesomeIcons.lockOpen)
  };

  static PageController pageController =
      PageController(initialPage: 0, keepPage: false);
}

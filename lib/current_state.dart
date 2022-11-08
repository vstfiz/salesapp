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
  static String selectedCategory = CurrentState.tabs[CurrentState.selectedIndex].categories[2].name;
  static String selectedSubCategory = CurrentState.tabs[CurrentState.selectedIndex].subCategories[2].codename;
  static List<SideBarTab> tabs = [
    SideBarTab(
      icon: FontAwesomeIcons.house,
      title: 'Homepage',
      hasChild: false,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
          color: ColorPallete.satinSheenGold,
          fontSize: 12.0,
          overflow: TextOverflow.clip),
      index: 0,
      categories: const [],
      subCategories: const [],
    ),
    SideBarTab(
      icon: FontAwesomeIcons.addressBook,
      title: 'Offers',
      hasChild: false,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
          color: ColorPallete.satinSheenGold,
          fontSize: 12.0,
          overflow: TextOverflow.clip),
      index: 1,
      categories: const [],
      subCategories: const [],
    ),
    SideBarTab(
      icon: FontAwesomeIcons.gamepad,
      title: 'Excavator',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 2,
      categories: [
        Category('Kobelco',FontAwesomeIcons.lockOpen),
        Category('Caterpillar',FontAwesomeIcons.lockOpen),
        Category('Volvo',FontAwesomeIcons.lockOpen),
        Category('Komatsu',FontAwesomeIcons.house),
        Category('Tata Hitachi',FontAwesomeIcons.lockOpen),
        Category('Hyundai',FontAwesomeIcons.house),
        Category('JCB',FontAwesomeIcons.house),
        Category('Sany',FontAwesomeIcons.lockOpen)
      ],
      subCategories: [
        SubCategory('GET', 'GET',FontAwesomeIcons.house),
        SubCategory('Hydraulics (Spares & Assy)', 'Hydraulics',FontAwesomeIcons.house),
        SubCategory('Engine (Spares & Assy)', 'Engine',FontAwesomeIcons.house),
        SubCategory('UCG', 'UCG',FontAwesomeIcons.house),
        SubCategory('Filters', 'Filters',FontAwesomeIcons.house),
        SubCategory('Lubricants', 'Lubricants',FontAwesomeIcons.house),
        SubCategory('Pin & Brushes', 'Pin & Brushes',FontAwesomeIcons.house),
        SubCategory('Others (Hoses/Electrical/Body Parts/Cabin Parts)', 'Others',FontAwesomeIcons.lockOpen)
      ],
    ),
    SideBarTab(
      icon: FontAwesomeIcons.galacticRepublic,
      title: 'Loaders',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 3,
      categories: [
        Category('Kobelco',FontAwesomeIcons.house),
        Category('Caterpillar',FontAwesomeIcons.house),
        Category('Volvo',FontAwesomeIcons.house),
        Category('Komatsu',FontAwesomeIcons.house),
        Category('Tata Hitachi',FontAwesomeIcons.house),
        Category('Hyundai',FontAwesomeIcons.house),
        Category('JCB',FontAwesomeIcons.house),
        Category('Sany',FontAwesomeIcons.lockOpen)
      ],
      subCategories:  [
        SubCategory('GET', 'GET',FontAwesomeIcons.house),
        SubCategory('Hydraulics (Spares & Assy)', 'Hydraulics',FontAwesomeIcons.house),
        SubCategory('Engine (Spares & Assy)', 'Engine',FontAwesomeIcons.house),
        SubCategory('Filters', 'Filters',FontAwesomeIcons.house),
        SubCategory('Lubricants', 'Lubricants',FontAwesomeIcons.house),
        SubCategory('Pin & Brushes', 'Pin & Brushes',FontAwesomeIcons.house),
        SubCategory('Others (Hoses/Electrical/Body Parts/Cabin Parts)', 'Others',FontAwesomeIcons.lockOpen)
      ],
    ),
    SideBarTab(
      icon: FontAwesomeIcons.tachographDigital,
      title: 'Grader',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 4,
      categories:  [
        Category('Caterpillar',FontAwesomeIcons.house),
        Category('Volvo',FontAwesomeIcons.house),
        Category('Komatsu',FontAwesomeIcons.house),
        Category('XCMG',FontAwesomeIcons.house),
        Category('Leeboy',FontAwesomeIcons.house),
        Category('Liugong',FontAwesomeIcons.house),
        Category('BEML',FontAwesomeIcons.lockOpen)],
      subCategories:  [
        SubCategory('GET', 'GET',FontAwesomeIcons.house),
        SubCategory('Hydraulics (Spares & Assy)', 'Hydraulics',FontAwesomeIcons.house),
        SubCategory('Engine (Spares & Assy)', 'Engine',FontAwesomeIcons.house),
        SubCategory('Filters', 'Filters',FontAwesomeIcons.house),
        SubCategory('Lubricants', 'Lubricants',FontAwesomeIcons.house),
        SubCategory('Others (Hoses/Electrical/Body Parts/Cabin Parts)', 'Others',FontAwesomeIcons.lockOpen)
      ],
    ),
    SideBarTab(
      icon: FontAwesomeIcons.rainbow,
      title: 'Dozer',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 5,
      categories:  [
        Category('Caterpillar',FontAwesomeIcons.house),
        Category('Komatsu',FontAwesomeIcons.house),
        Category('BEML',FontAwesomeIcons.lockOpen)],
      subCategories:  [
        SubCategory('GET', 'GET',FontAwesomeIcons.house),
        SubCategory('Hydraulics (Spares & Assy)', 'Hydraulics',FontAwesomeIcons.house),
        SubCategory('Engine (Spares & Assy)', 'Engine',FontAwesomeIcons.house),
        SubCategory('UCG', 'UCG',FontAwesomeIcons.house),
        SubCategory('Filters', 'Filters',FontAwesomeIcons.house),
        SubCategory('Lubricants', 'Lubricants',FontAwesomeIcons.house),
        SubCategory('Others (Hoses/Electrical/Body Parts/Cabin Parts)', 'Others',FontAwesomeIcons.lockOpen)
      ],
    ),
    SideBarTab(
      icon: FontAwesomeIcons.dashcube,
      title: 'Rollers',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 6,
      categories: [
        Category('Caterpillar',FontAwesomeIcons.house),
        Category('Volvo',FontAwesomeIcons.house),
        Category('L&T',FontAwesomeIcons.house),
        Category('Case',FontAwesomeIcons.house),
        Category('JCB',FontAwesomeIcons.house),
        Category('Sany',FontAwesomeIcons.house),
        Category('HAMM',FontAwesomeIcons.house),
        Category('IngersRoll Rand',FontAwesomeIcons.lockOpen)
      ],
      subCategories:  [
        SubCategory('Hydraulics (Spares & Assy)', 'Hydraulics',FontAwesomeIcons.house),
        SubCategory('Engine (Spares & Assy)', 'Engine',FontAwesomeIcons.house),
        SubCategory('Filters', 'Filters',FontAwesomeIcons.house),
        SubCategory('Lubricants', 'Lubricants',FontAwesomeIcons.house),
        SubCategory('Others (Hoses/Electrical/Body Parts/Cabin Parts)', 'Others',FontAwesomeIcons.lockOpen)
      ],
    ),
    SideBarTab(
      icon: FontAwesomeIcons.paintbrush,
      title: 'Crushers',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 7,
      categories: [
        Category('Puzzolona',FontAwesomeIcons.house),
        Category('Propel',FontAwesomeIcons.house),
        Category('Metso',FontAwesomeIcons.house),
        Category('Sandvik',FontAwesomeIcons.house),
        Category('JCB',FontAwesomeIcons.house),
        Category('Writgen',FontAwesomeIcons.house),
        Category('Klemann',FontAwesomeIcons.house),
      ],
      subCategories: [
        SubCategory('Wear Parts (Liners / Jaw Plates)', 'Wear Parts',FontAwesomeIcons.house),
        SubCategory('Belts', 'Belts',FontAwesomeIcons.house),
        SubCategory('Cone Mantle', 'Cone Mantle',FontAwesomeIcons.house),
        SubCategory('Conveyer Rollers', 'Conveyer Rollers',FontAwesomeIcons.house),
        SubCategory('Lubricants', 'Lubricants',FontAwesomeIcons.lockOpen)
      ],
    ),
    SideBarTab(
      icon: FontAwesomeIcons.landMineOn,
      title: 'Trippers / \n Transit Mixers',
      hasChild: true,
      height: ScreenUtils.width / 23,
      width: ScreenUtils.width / 23,
      textStyle: TextStyle(
        color: ColorPallete.satinSheenGold,
        fontSize: 12.0,
        overflow: TextOverflow.clip,
      ),
      index: 8,
      categories: [
        Category('Tata',FontAwesomeIcons.house),
        Category('Ashok Leyland',FontAwesomeIcons.house),
        Category('Benz',FontAwesomeIcons.house),
        Category('Eicher',FontAwesomeIcons.house),
        Category('Scania / Ajax Fiori',FontAwesomeIcons.house),
        Category('Putzmister',FontAwesomeIcons.house),
        Category('Sany',FontAwesomeIcons.house),
        Category('Schwing Setter',FontAwesomeIcons.house),
        Category('Greaves Cotton',FontAwesomeIcons.house),
      ],
      subCategories: [
        SubCategory('Engine', 'Engine',FontAwesomeIcons.house),
        SubCategory('Hydraulics (Pump / Motor/ Gear Box)', 'Hydraulics',FontAwesomeIcons.lockOpen)
      ],
    ),
  ];

  static List<ImageMaster> imagesWithCategory = [
    ImageMaster(imageUrl: "https://yl-sales-app.s3.ap-south-1.amazonaws.com/SK210+Excavator+images/SK210.jpg", textOnImage: ''),
    ImageMaster(imageUrl: Images.bedroom, textOnImage: 'Truck 2'),
    ImageMaster(imageUrl: Images.bedroom, textOnImage: 'Truck 3'),
  ];
  static List<ScreenImageMaster> imagesWithoutCategory = [
    ScreenImageMaster(imageUrl: "https://yl-sales-app.s3.ap-south-1.amazonaws.com/banner.jpg",textOnImage: 'Hi Welcome to Yantralive'),
    ScreenImageMaster(imageUrl: Images.bedroom,textOnImage: 'dsvfsdfvbdfbdfb'),
    ScreenImageMaster(imageUrl: Images.bedroom,textOnImage: '345yrgt'),
  ];

  static var screens = [const WithoutCategory(),const WithCategory()];

  static PageController pageController = PageController(initialPage: 0,keepPage: false);
}

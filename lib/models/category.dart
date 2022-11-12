import 'package:flutter/cupertino.dart';

class Category {
  String _name;
  String icon;
  IconData iconData;

  Category(this._name, {this.icon = "", this.iconData = const IconData(0)});

  String get getIcon => icon;

  set getIcon(String value) {
    icon = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

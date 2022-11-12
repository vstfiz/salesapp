import 'package:flutter/cupertino.dart';

class SubCategory{

   String _name;
   String _codename;

   String _icon;

   SubCategory(this._name, this._codename, this._icon);

   String get icon => _icon;

  set icon(String value) {
    _icon = value;
  }

  String get codename => _codename;

  set codename(String value) {
    _codename = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
import 'package:flutter/cupertino.dart';

class SubCategory{

   String _name;
   String _codename;

   IconData _icon;

   SubCategory(this._name, this._codename, this._icon);

   IconData get icon => _icon;

  set icon(IconData value) {
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
import 'package:flutter/cupertino.dart';

class Category {
  String _name;
  IconData _icon;

  Category(this._name, this._icon);

  IconData get icon => _icon;

  set icon(IconData value) {
    _icon = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

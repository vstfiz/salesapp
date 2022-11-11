import 'package:flutter/cupertino.dart';

class TopCategory {
  IconData _icon;

  TopCategory(this._icon);

  IconData get icon => _icon;

  set icon(IconData value) {
    _icon = value;
  }
}

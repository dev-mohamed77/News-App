import 'package:flutter/material.dart';

class PageModel{
  String _title;
  String _description;
  IconData _icon;
  String _images;

  PageModel(this._title, this._description, this._icon, this._images);


  String get title => _title;

  String get description => _description;

  IconData get icon => _icon;

  String get images => _images;

}
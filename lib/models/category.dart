// To parse this JSON data, do
//
//     final category = categoryFromMap(jsonString);

import 'dart:convert';

class Category {
  Category({
    required this.id,
    required this.name,
    required this.color,
    required this.icon,
    required this.fontFamily,
    required this.path,
  });

  final String id;
  final String name;
  final int color;
  final int icon;
  final String fontFamily;
  final String path;

  Category copyWith({
    required String id,
    required String name,
    required int color,
    required int icon,
    required String fontFamily,
    required String path,
  }) =>
      Category(
        id: id,
        name: name,
        color: color,
        icon: icon,
        fontFamily: fontFamily,
        path: path,
      );

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        color: json["color"],
        icon: json["icon"],
        fontFamily: json["fontFamily"],
        path: json["path"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "color": color,
        "icon": icon,
        "fontFamily": fontFamily,
        "path": path,
      };
}

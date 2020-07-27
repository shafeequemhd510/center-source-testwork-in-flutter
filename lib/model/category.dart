import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int categoryId;
  final String name;
  final IconData icon;
  final String imagePath;


  Category({this.categoryId, this.name, this.icon,this.imagePath});
}

final allCategory = Category(
  imagePath: "images/event_images/music_concert.jpeg",

  categoryId: 0,
  name: "All",
  icon: Icons.search,
);

final musicCategory = Category(
  imagePath: "images/event_images/granite_cooking_class.jpeg",
  categoryId: 1,
  name: "Music",
  icon: Icons.music_note,
);

final meetUpCategory = Category(
  imagePath: "images/event_images/music_concert.jpeg",
  categoryId: 2,
  name: "Meetup",
  icon: Icons.location_on,
);

final golfCategory = Category(
  imagePath: "images/event_images/golf_competition.jpeg",
  categoryId: 3,
  name: "Golf",
  icon: Icons.golf_course,
);

final birthdayCategory = Category(
  imagePath: "images/event_images/5_km_downtown_run.jpeg",
  categoryId: 4,
  name: "Birthday",
  icon: Icons.cake,
);

final birthdayCategoryy = Category(
  imagePath: "images/event_images/5_km_downtown_run.jpeg",
  categoryId: 4,
  name: "Birthday",
  icon: Icons.cake,
);

final birthdayCategoryyy = Category(
  imagePath: "images/event_images/5_km_downtown_run.jpeg",
  categoryId: 4,
  name: "Birthday",
  icon: Icons.cake,
);

final golfCategoryy = Category(
  imagePath: "images/event_images/golf_competition.jpeg",
  categoryId: 3,
  name: "Golf",
  icon: Icons.golf_course,
);

final categories = [
  allCategory,
  musicCategory,
  meetUpCategory,
  golfCategory,
  birthdayCategory,
  birthdayCategoryy,
  birthdayCategoryyy,
  golfCategoryy
];

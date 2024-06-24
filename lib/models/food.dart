class Food {
  final String name;
  final String description;
  final String imahePath;
  final double price;
  final FoodCategory category;

  List<Addon> availableAddons;


  Food({
    required this.name,
    required this.description,
    required this.imahePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}


class Addon {
  String name;
  double price;
  Addon({
    required this.name,
    required this.price,
  });
}
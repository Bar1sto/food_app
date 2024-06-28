import 'package:food_app/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    this.quantity = 1,
    required this.selectedAddons,
  });

  double get totalPrice{
    double addonsPrise = selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrise) * quantity;

  }
}
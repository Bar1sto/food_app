import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:food_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // Бургеры
    Food(
      name: "Королевский гамбургер",
      description: "Большая и сочная котлета",
      imahePath: "lib/images/burgers/burger1.png",
      price: 290,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Дополнительная котлета", price: 29),
        Addon(name: "Чесночный соус", price: 20),
        Addon(name: "Дополнительный сыр", price: 15),
      ],
    ),
    Food(
      name: "Классический чизбургер",
      description: "Много сыра и нежный хлеб",
      imahePath: "lib/images/burgers/burger2.png",
      price: 159,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Лук", price: 11),
        Addon(name: "Сырный соус", price: 20),
        Addon(name: "Дополнительный сыр", price: 15),
      ],
    ),
    Food(
      name: "Двойной рончо",
      description: "Сытный и популярный бургер Мексики",
      imahePath: "lib/images/burgers/burger3.png",
      price: 250,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Халапенья", price: 20),
        Addon(name: "Дольки огурца", price: 15),
        Addon(name: "Дольки помидора", price: 15),
      ],
    ),
    Food(
      name: "Ход королевы",
      description: "Лучший выбор для прекрасных Дам",
      imahePath: "lib/images/burgers/burger4.png",
      price: 200,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Дополнительная котлета", price: 29),
        Addon(name: "Чесночный соус", price: 20),
        Addon(name: "Дополнительный сыр", price: 15),
      ],
    ),
    Food(
      name: "Детский",
      description: "Мельний да удаленький",
      imahePath: "lib/images/burgers/burger5.png",
      price: 200,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Дополнительная котлета", price: 29),
        Addon(name: "Листья салата", price: 20),
        Addon(name: "Сырный соус", price: 15),
      ],
    ),
    // Салаты
    Food(
      name: "Классический",
      description: "Домашний и вкусный салат",
      imahePath: "lib/images/salads/salads1.png",
      price: 130,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Помидоры черри", price: 29),
        Addon(name: "Авокадо", price: 20),
        Addon(name: "Лук", price: 15),
      ],
    ),
    Food(
      name: "Мамина крошка",
      description: "Нежный и быстрый салат",
      imahePath: "lib/images/salads/salads2.png",
      price: 110,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Помидоры черри", price: 29),
        Addon(name: "Кукуруза", price: 20),
        Addon(name: "Дополнительная куринная грудка", price: 45),
      ],
    ),
    Food(
      name: "Походный",
      description: "Утонченный и простой салат",
      imahePath: "lib/images/salads/salads3.png",
      price: 130,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Помидоры черри", price: 29),
        Addon(name: "Сухарики", price: 20),
        Addon(name: "Грудка", price: 15),
      ],
    ),
    Food(
      name: "Помидорный рай",
      description: "Много помидоров не бывает!",
      imahePath: "lib/images/salads/salads4.png",
      price: 130,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Помидоры черри", price: 29),
        Addon(name: "Мята", price: 20),
      ],
    ),
    Food(
      name: "Салатный гарнир",
      description: "Горох и авокадо - лучшее сочетание",
      imahePath: "lib/images/salads/salads5.png",
      price: 130,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Горошек", price: 29),
        Addon(name: "Авокадо", price: 20),
        Addon(name: "Красный перец", price: 20),
      ],
    ),
    // Закуски
    Food(
      name: "Картофель фри",
      description: "Любимая классика",
      imahePath: "lib/images/sides/sides1.png",
      price: 130,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Сырный соус", price: 20),
        Addon(name: "Чесночный соус", price: 20),
        Addon(name: "Соус барбекю", price: 20),
      ],
    ),
    Food(
      name: "Здоровье+",
      description: "Спортиная закуска, для тех кто следит за своей фигурой",
      imahePath: "lib/images/sides/sides2.png",
      price: 130,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Броколли", price: 29),
        Addon(name: "Грибы", price: 20),
      ],
    ),
    Food(
      name: "Крылья",
      description: "Для любителей острого",
      imahePath: "lib/images/sides/sides3.png",
      price: 130,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Сырный соус", price: 20),
        Addon(name: "Чесночный соус", price: 20),
        Addon(name: "Соус барбекю", price: 20),
      ],
    ),
    Food(
      name: "Попкорн",
      description: "Кино + попкорн = счастье",
      imahePath: "lib/images/sides/sides4.png",
      price: 130,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Карамель", price: 29),
        Addon(name: "Сыр", price: 20),
        Addon(name: "Соль", price: 20),
      ],
    ),
    Food(
      name: "Печенье",
      description: "Как у бабушки в деревне",
      imahePath: "lib/images/sides/sides5.png",
      price: 130,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Шоколадная крошка", price: 29),
        Addon(name: "Молоко", price: 50),
        Addon(name: "Кефир", price: 50),
      ],
    ),
    // Десерты
    Food(
      name: "Маффин орео",
      description: "Легендарное сочетание",
      imahePath: "lib/images/desserts/desserts1.png",
      price: 130,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Клубничный крем", price: 29),
        Addon(name: "Орео", price: 20),
        Addon(name: "Карамельный крем", price: 20),
      ],
    ),
    Food(
      name: "Блинчики",
      description: "Нежные и аппетитные блинчики с клубникой",
      imahePath: "lib/images/desserts/desserts2.png",
      price: 130,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Клубничный крем", price: 29),
        Addon(name: "Орео", price: 20),
        Addon(name: "Карамельный крем", price: 20),
      ],
    ),
    Food(
      name: "Маффин красная дама",
      description: "Маффин с малиной",
      imahePath: "lib/images/desserts/desserts3.png",
      price: 130,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Клубничный крем", price: 29),
        Addon(name: "Малина", price: 20),
        Addon(name: "Карамельный крем", price: 20),
      ],
    ),
    Food(
      name: "Маккарон",
      description: "Легкий десерт после сытного приема пищи",
      imahePath: "lib/images/desserts/desserts4.png",
      price: 130,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Шоколад", price: 29),
        Addon(name: "Клубника", price: 20),
        Addon(name: "Карамель", price: 20),
      ],
    ),
    Food(
      name: "Тирамису с мороженным",
      description: "Воздушное и мороженное тирамису",
      imahePath: "lib/images/desserts/desserts5.png",
      price: 130,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Клубничный крем", price: 29),
        Addon(name: "Малиновый крем", price: 20),
        Addon(name: "Дополнительный шарик пломбира", price: 25),
      ],
    ),
    // Напитки
    Food(
      name: "Coca-Cola",
      description: "Самый лучший выбор!",
      imahePath: "lib/images/drinks/drinks1.png",
      price: 130,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Объем - 0,4л", price: 20),
        Addon(name: "Объем - 0,5л", price: 30),
        Addon(name: "Объем - 0,8л", price: 40),
      ],
    ),
    Food(
      name: "Pepsi",
      description: "Охлаждает!",
      imahePath: "lib/images/drinks/drinks2.png",
      price: 130,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Объем - 0,4л", price: 20),
        Addon(name: "Объем - 0,5л", price: 30),
        Addon(name: "Объем - 0,8л", price: 40),
      ],
    ),
    Food(
      name: "Fanta",
      description: "Газировка с витамином С!",
      imahePath: "lib/images/drinks/drinks3.png",
      price: 130,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Объем - 0,4л", price: 20),
        Addon(name: "Объем - 0,5л", price: 30),
        Addon(name: "Объем - 0,8л", price: 40),
      ],
    ),
    Food(
      name: "7 up",
      description: "Крайне годно!",
      imahePath: "lib/images/drinks/drinks4.png",
      price: 130,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Объем - 0,4л", price: 20),
        Addon(name: "Объем - 0,5л", price: 30),
        Addon(name: "Объем - 0,8л", price: 40),
      ],
    ),
    Food(
      name: "Sprite",
      description: "Китай версион!",
      imahePath: "lib/images/drinks/drinks5.png",
      price: 130,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Объем - 0,4л", price: 20),
        Addon(name: "Объем - 0,5л", price: 30),
        Addon(name: "Объем - 0,8л", price: 40),
      ],
    ),
  ];

  /*
  
    G E T T E R S
  
  */

  List<Food> get menu => _menu;
  List<CartItem> get catr => _cart;

  /*
  
    O P E R A T I O N S
  


  */

  final List<CartItem> _cart = [];

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } 
    else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIdex = _cart.indexOf(cartItem);
    if (cartIdex != -1) {
      if (_cart[cartIdex].quantity > 1) {
        _cart[cartIdex].quantity--;
      } else {
        _cart.removeAt(cartIdex);
      }
    }
      notifyListeners();

  }

  double hetTotalPrice () {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }
  
  int getTotalCount() {
    int totalItemCount = 0;

    for(CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void claerCart() {
    _cart.clear();
    notifyListeners();
  }
  
  
  
  
  
  /*


  
    H E L P E R S 
  
  */
}

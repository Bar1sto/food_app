import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text(food.price.toString()),
                    Text(food.description),

                  ],
                ),
              ),
              // food image
              Image.asset(food.imahePath, height: 120,),
            ],
          ),
        ),
      ],
    );
  }
}

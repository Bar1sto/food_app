import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final Food food;
  final VoidCallback onIncrement;
  final VoidCallback onDicrement;
  const QuantitySelector({
    super.key,
    required this.food,
    required this.quantity,
    required this.onDicrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          GestureDetector(
            onTap: onDicrement,
            child: Icon(
              Icons.remove,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              quantity.toString(),
            ),
          ),
          GestureDetector(
            onTap: onIncrement,
            child: Icon(
              Icons.add,
              size: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

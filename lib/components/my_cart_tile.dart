import 'package:flutter/material.dart';
import 'package:food_app/components/my_quantity_selector.dart';
import 'package:food_app/models/cart_item.dart';
import 'package:food_app/models/resraurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
          
              child: Column(children: [
                const SizedBox(height: 15,),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        
                        cartItem.food.imahePath,
                        height: 100,
                        width: 100,
                        
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cartItem.food.name),
                        Text('${cartItem.food.price.toString()} ₽')
                      ],
                    ),
                    QuantitySelector(
                      food: cartItem.food,
                      quantity: cartItem.quantity,
                      onDicrement: () {
                        restaurant.removeFromCart(cartItem);
                      },
                      onIncrement: (){
                        restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                      },
                    )
                  ],
                )
              ]),
            ));
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/models/food.dart';
import 'package:food_app/models/resraurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

   FoodPage({
    super.key,
    required this.food,
  }){
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  void addToCart(Food food, Map<Addon, bool > selectedAddons) {
    Navigator.pop(context);
    
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddons) {
      if(widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack( children: [
      Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image
            Image.asset(widget.food.imahePath),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //food name
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '${widget.food.price} ₽',
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  //desc
                  const SizedBox(height: 10),
                  Text(widget.food.description),
                  const SizedBox(height: 10),
                  Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(height: 10),

                  Text(
                    "Дополнения",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  //add
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        Addon addon = widget.food.availableAddons[index];

                        return CheckboxListTile(
                          title: Text(addon.name),
                          subtitle: Text('${addon.price} ₽'),
                          value: widget.selectedAddons[addon],
                          onChanged: (bool? value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            //btn
            MyButton(
             onTap: () => addToCart(widget.food, widget.selectedAddons),
             text: "Добавить в корзину"),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    ),
    SafeArea(
      child: Opacity(
        opacity: 0.5,
        child: Container(
          margin: const EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: ()=> Navigator.pop(context),
            ),
        ),
      ),
    ),
    ],
    );
  }
}

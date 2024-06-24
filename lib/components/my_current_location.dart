import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});
  void openLocationSearchBox(BuildContext context){
    showDialog(
      context: context,
       builder: (context) => AlertDialog(
        title: const Text("Ваш адрес"),
        content: const TextField(
          decoration: InputDecoration(
          hintText: "Поиск адреса..."
        ),
        ),
        actions: [
          MaterialButton(
            onPressed: ()=> Navigator.pop(context),
            child: const Text('Назад'),
          ),
          MaterialButton(
            onPressed: ()=> Navigator.pop(context),
            child: const Text('Сохранить'),
          ),
        ],
       ));
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Доставляют сейчас",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
          ),
           GestureDetector(
            onTap: () => openLocationSearchBox(context),
             child: Row(
              children: [
                // adress
                Text("TEST",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down_rounded,
                ),
              ]),
           ),
      ],),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:food_app/auth/login_or_register.dart';
import 'package:food_app/components/my_draer_tile.dart';
import 'package:food_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:  Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Icon(Icons.food_bank_rounded,
            size: 80,
            color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // home list tile

          MyDrawerTile(
            text: "Главная",
            icon: Icons.home,
            onTap: ()=> Navigator.pop(context),
          ),
          
          // settings
          MyDrawerTile(
            text: "Параметры",
            icon: Icons.settings,
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder:(context) => const SettingsPage(),
              ),
              );
            },
          ),
          const Spacer(),
          // logout list tile
          MyDrawerTile(
            text: "Выйти",
            icon: Icons.logout,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (contex) => const LoginOrRegister(),
              )
              );
            },
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
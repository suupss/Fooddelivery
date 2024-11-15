import 'package:flutter/material.dart';
import 'package:food_order/components/my_drawer_tile.dart';
import 'package:food_order/pages/homepage.dart';
import 'package:food_order/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Icon(Icons.lock_open,color: Theme.of(context).colorScheme.inversePrimary,size: 80),),
                const Padding(
                  padding: EdgeInsets.only(right: 35,left: 35,top: 28),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                MyDrawerTile(
                  onTap: () {
                    Navigator.pop(context);
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Homepage();
                    }));
                  },
                  icon: Icons.home, text: 'H O M E',),
                MyDrawerTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return SettingsPage();
                    }));
                  },
                  icon: Icons.settings, text: 'S E T T I N G S',),
                  Spacer(),
                  MyDrawerTile(icon: Icons.logout, text: 'L O G O U T', onTap: (){})
            ],
          ),
        );
  }
}
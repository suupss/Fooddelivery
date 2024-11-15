import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order/themes/theme_test.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
   
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(8),
        child: CupertinoSwitch(value: Provider.of<ThemeTest>(context).isDarkmode() , onChanged: (value){
         
         
           Provider.of<ThemeTest>(context, listen: false).onTap();
        }),
      ),
    );
  }
}
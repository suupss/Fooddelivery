import 'package:flutter/material.dart';

class MyDrawerTile extends StatelessWidget {
  final IconData? icon;
  final String text;
 final void Function()? onTap;
  const MyDrawerTile({super.key, required this.icon,required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: ListTile(
      onTap: onTap ,
      leading: Icon(icon,size: 25,), iconColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text(text, style: TextStyle(color: Theme.of(context).colorScheme.primary,),
      
      
        
      ),
    ));
  }
}
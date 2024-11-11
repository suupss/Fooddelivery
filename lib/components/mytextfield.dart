import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final  TextEditingController? myController;
  final String text;
  const Mytextfield({super.key, required this.myController, required this.text});

  @override
  Widget build(BuildContext context) {
    return               TextField(
      
              controller: myController  ,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, color: Theme.of(context).colorScheme.tertiary)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, color: Theme.of(context).colorScheme.inversePrimary)),
              hintText: text,
              hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
          
              );
  }
}
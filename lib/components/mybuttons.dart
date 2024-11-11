import 'package:flutter/material.dart';

class Mybuttons extends StatelessWidget {
  final String text;
  const Mybuttons({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.tertiary, foregroundColor: Theme.of(context).colorScheme.inversePrimary, shape: const RoundedRectangleBorder(side: BorderSide.none) ), child: Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))),);
  }
}
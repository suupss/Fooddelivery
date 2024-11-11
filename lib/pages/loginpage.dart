import 'package:flutter/material.dart';
import 'package:food_order/components/mybuttons.dart';
import 'package:food_order/components/mytextfield.dart';
import 'package:food_order/pages/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
 final  TextEditingController _emailController = TextEditingController();

 final  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock_open, size: 90,color: Theme.of(context).colorScheme.inversePrimary,),
                const SizedBox(height: 20,),
                 Text('Food Delivery App', style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 15),),
                const SizedBox(height: 20,),
                Mytextfield(myController: _emailController, text: 'Email',),
                const SizedBox(height: 10,),
                Mytextfield(myController: _passwordController, text: 'Password'),
                const SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                 return Homepage();
                    }));
                  },
                  child: const Mybuttons(text: 'Sign In',)),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Not a member? ', style: TextStyle(color:  Theme.of(context).colorScheme.primary,)), Text('Register Now' ,style: TextStyle(color:  Theme.of(context).colorScheme.inversePrimary, fontSize: 13, fontWeight: FontWeight.bold),)],
                )],
            ),
          ),
        ),
      ),
    );
  }
}
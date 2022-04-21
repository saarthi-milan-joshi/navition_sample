import 'package:flutter/material.dart';
import 'package:navigation_sample/checkout_screen.dart';
import 'package:navigation_sample/first_screen.dart';

class SecondScreen extends StatefulWidget {

    final String? fromWhere;

  const SecondScreen({ Key? key, this.fromWhere }) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        leading: IconButton(
          icon:  const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const FirstScreen(fromWhere: 'SecondScreen',)),
            ); 
          },
        ),

      ),
      body: Column(
        children: [
           ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CheckoutScreen(fromWhere: 'SecondScreen'),
                  ),
                ); 
              },
              child: const Text(
                'Next',
              ),
            ),
            Text('From Where ${widget.fromWhere}')
        ],
      ),
    );
  }
}
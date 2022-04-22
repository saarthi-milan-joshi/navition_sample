import 'package:flutter/material.dart';

import 'list_item_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key, this.fromWhere}) : super(key: key);

  final String? fromWhere;

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            /* Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const FirstScreen(fromWhere: 'SecondScreen',)),
            );  */
          },
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const ListItemScreen(fromWhere: 'CheckoutScreen'),
                ),
              );
            },
            child: const Text(
              'Success',
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                ); */
            },
            child: const Text(
              'Failer',
            ),
          ),
          // Text('From Where ${widget.fromWhere}')
        ],
      ),
    );
  }
}

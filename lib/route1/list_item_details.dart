import 'package:flutter/material.dart';

import 'cart_screen.dart';

class ListItemDetailsScreen extends StatelessWidget {
  const ListItemDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            /* Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Home Page')),
            ); */
          },
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const CartScreen(fromWhere: 'DetailsScreen'),
                ),
              );
            },
            child: const Text(
              'Cart',
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigation_sample/route1/list_item_details.dart';
import './checkout_screen.dart';
import 'list_item_screen.dart';

class CartScreen extends StatefulWidget {
  final String? fromWhere;

  const CartScreen({Key? key, this.fromWhere}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.fromWhere == 'ListItemScreen') {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const ListItemScreen(
                      fromWhere: 'CartScreen',
                    )),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const ListItemDetailsScreen()),
          );
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cart Screen'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (widget.fromWhere == 'ListItemScreen') {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListItemScreen(
                            fromWhere: 'CartScreen',
                          )),
                );
              } else {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ListItemDetailsScreen()),
                );
              }
            },
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: textEditingController,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const CheckoutScreen(fromWhere: 'CartScreen'),
                  ),
                );
              },
              child: const Text(
                'Next',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('From Where ${widget.fromWhere}')
          ],
        ),
      ),
    );
  }
}

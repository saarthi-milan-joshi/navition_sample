import 'package:flutter/material.dart';
import 'package:navigation_sample/main.dart';
import 'package:navigation_sample/route1/list_item_details.dart';
import 'package:navigation_sample/route1/setting_screen.dart';
import 'cart_screen.dart';

class ListItemScreen extends StatefulWidget {
  final String? fromWhere;

  const ListItemScreen({Key? key, this.fromWhere}) : super(key: key);

  @override
  State<ListItemScreen> createState() => _ListItemScreenState();
}

class _ListItemScreenState extends State<ListItemScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(  
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(title: 'Home Page')),
        );
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingScreen(
                            fromWhere: 'ListitemScreen',
                          )),
                );
              },
              icon: const Icon(Icons.settings),
            ),
          ],
          title: const Text('List Item Screen'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyHomePage(title: 'Home Page')),
              );
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
                        const CartScreen(fromWhere: 'ListItemScreen'),
                  ),
                );
              },
              child: const Text(
                'Cart',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ListItemDetailsScreen(),
                  ),
                );
              },
              child: const Text(
                'List Item details',
              ),
            ),
            Text('From Where ${widget.fromWhere}')
          ],
        ),
      ),
    );
  }
}

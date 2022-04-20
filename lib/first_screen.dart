import 'package:flutter/material.dart';
import 'package:navigation_sample/second_screen.dart';

class FirstScreen extends StatefulWidget {
  final String? fromWhere;

  const FirstScreen({Key? key, this.fromWhere}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        leading: IconButton(
          icon:  const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          /*  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            ); */
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
                  builder: (context) =>
                      const SecondScreen(fromWhere: 'FirstScreen'),
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

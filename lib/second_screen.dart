import 'package:flutter/material.dart';

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
      ),
      body: Column(
        children: [
           ElevatedButton(
              onPressed: () {
                /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ),
                ); */
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
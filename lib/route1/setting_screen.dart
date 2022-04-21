import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  final String? fromWhere;

  const SettingScreen({Key? key, this.fromWhere}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [Text('From Where $fromWhere')],
      ),
    );
  }
}

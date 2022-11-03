import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.aytName, required this.active}) : super(key: key);

  final String imgName = "fatiha11.png";
  final String aytName;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('USING GETX'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            aytName,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              'images/$imgName',
              width: 400,
              height: 340,
            ),
          ),
        ],
      ),
    );
  }
}

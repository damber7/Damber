import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  tapMe() {
    print("Hello World");
  }

  final TextEditingController inputController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250,
            child: TextField(
              controller: inputController,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
          ),
          TextField(
            controller: addressController,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          ElevatedButton(
            onPressed: () {
              tapMe();
              print(inputController.text);
            },
            child: const Text("Tap Me"),
          ),
        ],
      )),
    );
  }
}

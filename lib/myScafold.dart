import 'package:flutter/material.dart';

class MyScafold extends StatefulWidget {
  const MyScafold({Key? key}) : super(key: key);

  @override
  State<MyScafold> createState() => _MyScafoldState();
}

class _MyScafoldState extends State<MyScafold> {
  double sizeKalp = 30;
  bool isHearthActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 3,
        backgroundColor: Colors.red,
        title: const Text(
          "Kalbe Tıkla",
          style: TextStyle(
            fontSize: 35,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: kucult, icon: const Icon(Icons.remove, size: 40.0)),
            IconButton(
              onPressed: buyult,
              icon: isHearthActive
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.heart_broken),
              iconSize: sizeKalp,
            )
          ],
        ),
      ),
    );
  }

  void buyult() {
    setState(() {
      if (isHearthActive) {
        sizeKalp += 5;
        isHearthActive = false;
      } else {
        sizeKalp += 5;
        isHearthActive = true;
      }
    });
  }

  void kucult() {
    setState(() {
      sizeKalp -= 5;
    });
  }
}

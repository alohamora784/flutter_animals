import 'package:flutter/material.dart';

void main() {
  runApp(const AnimalButtons());
}

class AnimalButtons extends StatelessWidget {
  const AnimalButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Animal Buttons784",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int idx = 0;
  Map<String, String> data = {
    'showCat': 'images/cat.jpg',
    'showDog': 'images/dog.jpg',
    'showLizzard': 'images/primal.png',
    'showXuesos': 'images/xuesos.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("животные"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (var i = 0; i < data.length; i++)
                ElevatedButton(
                  onPressed: () => _changeState(
                    i,
                  ),
                  child: Text(data.keys.toList()[i]),
                )
            ],
          ),
          Image.asset(
            data.values.toList()[idx],
          )
        ],
      ),
    );
  }

  _changeState(int i) {
    setState(() {
      idx = i;
    });
  }
}

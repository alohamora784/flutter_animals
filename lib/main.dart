import 'package:flutter/material.dart';

void main() {
  runApp(AnimalButtons());
}

class AnimalButtons extends StatelessWidget {
  AnimalButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animal Buttons",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showCat = false;
  bool showDog = false;
  bool showLizzard = false;
  bool showXuesos = false;

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
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showCat = !showCat;
                  });
                },
                child: Text("cat"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showDog = !showDog;
                  });
                },
                child: Text("dog"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showLizzard = !showLizzard;
                  });
                },
                child: Text("lizzard"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showXuesos = !showXuesos;
                  });
                },
                child: Text("настоящее животное"),
              ),
            ],
          ),
          if (showCat) Image.asset("images/cat.jpg"),
          if (showDog) Image.asset("images/dog.jpg"),
          if (showLizzard) Image.asset("images/primal.png"),
          if (showXuesos) Image.asset("images/xuesos.jpg"),
        ],
      ),
    );
  }
}

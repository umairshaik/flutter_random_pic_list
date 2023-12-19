import 'package:flutter/material.dart';

class App2 extends StatelessWidget {
  const App2({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Demo2",
      home: HomeScaffold(),
    );
  }
}

class HomeScaffold extends StatefulWidget {
  const HomeScaffold({super.key});

  @override
  State<HomeScaffold> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeScaffold> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("$counter")),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
      appBar: AppBar(
        title: const Text('Lets see some images'),
        centerTitle: false,
      ),
    );
  }
}

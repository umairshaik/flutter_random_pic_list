import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:random_list_of_pics/src/data/model/ImageModel.dart';
import 'package:http/http.dart';
import 'package:random_list_of_pics/src/widgets/image_list.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> imageModelList = [];

  void fetchImage() async {
    counter++;
    final response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));

    final Map<String, dynamic> data = json.decode(response.body);
    final imageModel = ImageModel.fromJson(data);
    print(imageModel);
    setState(() {
      imageModelList.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: ImageList(imageModelList),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Lets see some images'),
          centerTitle: false,
        ),
      ),
    );
  }
}

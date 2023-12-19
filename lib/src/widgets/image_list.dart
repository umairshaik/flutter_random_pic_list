import 'package:flutter/material.dart';
import 'package:random_list_of_pics/src/data/model/ImageModel.dart';
import 'package:random_list_of_pics/src/widgets/ImageItem.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imageModelList;

  const ImageList(this.imageModelList, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(20.0),
          child: ImageItem(imageModelList[index])
          //Image.network(imageModelList[index].url),
        );
      },
      itemCount: imageModelList.length,
    );
  }
}

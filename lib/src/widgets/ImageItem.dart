import 'package:flutter/cupertino.dart';
import 'package:random_list_of_pics/src/data/model/ImageModel.dart';

class ImageItem extends StatelessWidget {
  final ImageModel imageModel;

  const ImageItem(this.imageModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  const EdgeInsets.only(bottom: 8.0),
          child: Image.network(imageModel.url),
        ),
        Text(imageModel.title, textAlign: TextAlign.center),
      ],
    );
  }
}

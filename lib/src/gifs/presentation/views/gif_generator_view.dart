import 'package:flutter/material.dart';
import 'package:meowify/src/gifs/presentation/views/gif_generator.dart';

class GifGeneratorView extends StatelessWidget {
  const GifGeneratorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GifGenerator(
      gifUrl: 'https://cataas.com/cat/gif?salt=',
      onGenerateGif: () {},
    );
  }
}

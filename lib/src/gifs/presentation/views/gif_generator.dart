import 'package:flutter/material.dart';
import 'package:meowify/src/gifs/presentation/components/buttons/generate_gif_button.dart';
import 'package:meowify/src/gifs/presentation/components/images/contained_network_image.dart';
import 'package:meowify/src/gifs/presentation/components/images/cover_blurred_image.dart';

class GifGenerator extends StatelessWidget {
  const GifGenerator({
    super.key,
    required this.gifUrl,
    this.onGenerateGif,
  });

  final String gifUrl;
  final void Function()? onGenerateGif;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: CoverBlurredImage(gifUrl)),
          Positioned.fill(child: ContainedNetworkImage(gifUrl)),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                GenerateGifButton(onPressed: onGenerateGif),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

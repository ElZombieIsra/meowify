import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meowify/src/gifs/presentation/components/backdrop.dart';
import 'package:meowify/src/gifs/presentation/components/buttons/generate_gif_button.dart';
import 'package:meowify/src/gifs/presentation/components/images/contained_image.dart';
import 'package:meowify/src/gifs/presentation/components/images/cover_blurred_image.dart';

class GifGenerator extends StatelessWidget {
  const GifGenerator({
    super.key,
    this.imageBytes,
    this.onGenerateGif,
    this.loading = false,
  });

  final Uint8List? imageBytes;
  final void Function()? onGenerateGif;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          if (imageBytes != null)
            Positioned.fill(child: CoverBlurredImage(imageBytes!)),
          if (imageBytes != null)
            Positioned.fill(child: ContainedImage(imageBytes!)),
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
          if (loading) const Positioned.fill(child: Backdrop()),
        ],
      ),
    );
  }
}

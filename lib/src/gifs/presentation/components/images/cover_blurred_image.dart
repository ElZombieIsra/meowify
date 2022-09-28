import 'dart:ui';

import 'package:flutter/material.dart';

class CoverBlurredImage extends StatelessWidget {
  const CoverBlurredImage(
    this.url, {
    Key? key,
    this.blurStrength = 15,
  }) : super(key: key);

  final String url;
  final double blurStrength;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaY: blurStrength,
        sigmaX: blurStrength,
      ),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}

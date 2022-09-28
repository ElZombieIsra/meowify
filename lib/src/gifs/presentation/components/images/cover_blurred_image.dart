import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CoverBlurredImage extends StatelessWidget {
  const CoverBlurredImage(
    this.bytes, {
    Key? key,
    this.blurStrength = 15,
  }) : super(key: key);

  final Uint8List bytes;
  final double blurStrength;

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaY: blurStrength,
        sigmaX: blurStrength,
      ),
      child: Image.memory(
        bytes,
        fit: BoxFit.cover,
      ),
    );
  }
}

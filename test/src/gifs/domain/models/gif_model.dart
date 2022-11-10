import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class GifModel extends Equatable {
  const GifModel({
    required this.url,
    required this.bytes,
  });

  final String url;
  final Uint8List bytes;

  @override
  List<Object?> get props => [url, bytes];
}

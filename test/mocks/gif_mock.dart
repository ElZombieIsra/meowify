import 'package:flutter/foundation.dart';
import 'package:meowify/src/meowify_api.dart';

import '../src/gifs/domain/models/gif_model.dart';

final mockList = [1, 2, 3];
final mockBytes = Uint8List.fromList(mockList);
final gifs = [
  GifModel(url: '${MeowifyApi.kBaseApiUrl}/gif', bytes: mockBytes),
];

import 'package:meowify/src/gifs/domain/models/gif_model.dart';
import 'package:meowify/src/meowify_api.dart';

import 'gif_mock.dart';

class MockApi implements MeowifyApi {
  @override
  Future<GifModel> generateCatGif() async {
    return GifModel(url: '${MeowifyApi.kBaseApiUrl}/gif', bytes: mockBytes);
  }
}

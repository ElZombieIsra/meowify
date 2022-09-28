import 'package:meowify/src/gifs/domain/models/gif_model.dart';

class MeowifyApi {
  static const String kBaseUrl = 'https://cataas.com';

  /// Useful when api url has a trailing section like `/api` or `/v2`
  static const String kBaseApiUrl = kBaseUrl;

  MeowifyApi();

  /// Generates a gif of a cat adding some [salt] to the [url]
  /// so the image provider reloads the image every time
  Future<GifModel> generateCatGif() async {
    final salt = DateTime.now().millisecond;
    return GifModel(url: '$kBaseApiUrl/cat/gif?salt=$salt');
  }
}

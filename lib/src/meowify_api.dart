import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meowify/src/gifs/domain/models/gif_model.dart';

final apiProvider = Provider<MeowifyApi>((ref) {
  return MeowifyApi(Dio());
});

class MeowifyApi {
  static const String kBaseUrl = 'https://cataas.com';

  /// Useful when api url has a trailing section like `/api` or `/v2`
  static const String kBaseApiUrl = '$kBaseUrl/cat';

  MeowifyApi(this._dio) {
    _dio.options.baseUrl = kBaseApiUrl;
  }

  final Dio _dio;

  /// Generates a gif of a cat adding some [salt] to the [bytes]
  /// so the image provider reloads the image every time
  Future<GifModel> generateCatGif() async {
    try {
      final res = await _dio.get<List<int>>(
        '/gif',
        options: Options(responseType: ResponseType.bytes),
      );
      final bytes = Uint8List.fromList(res.data!);
      return GifModel(url: '$kBaseApiUrl/gif', bytes: bytes);
    } catch (e, stacktrace) {
      if (kDebugMode) {
        print(e);
        print(stacktrace);
      }
      rethrow;
    }
  }
}

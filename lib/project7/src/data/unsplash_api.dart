import 'dart:convert';
import 'package:http/http.dart';
import '../models/index.dart';

class UnsplashApi {
  UnsplashApi(this._client, this._accessKey);

  final Client _client;
  final String _accessKey;

  Future<List<Picture>> getImages({required int page, String? query}) async {
    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      path: '/search/photos',
      queryParameters: <String, String?>{
        'client_id': _accessKey,
        'query': query,
        'page': page.toString(),
        'per_page': 30.toString(),
      },
    );

    final Response response = await _client.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> body = json.decode(response.body) as Map<String, dynamic>;
      final List<dynamic> images = body['results'] as List<dynamic>;

      return images.cast<Map<dynamic, dynamic>>().map((Map<dynamic, dynamic> json) => Picture.fromJson(json)).toList();
    } else {
      throw StateError(response.body);
    }
  }
}

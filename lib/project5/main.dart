// Project 5 - Build a random image generator using Unsplash API
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class UnsplashApi {
  static final String? _accessKey = dotenv.env['UNSPLASH_ACCESS_KEY'];

  static Future<String> getRandomImageUrl() async {
    final Uri url = Uri(
        scheme: 'https',
        host: 'api.unsplash.com',
        path: '/photos/random',
        queryParameters: {'client_id': '$_accessKey'});

    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> body = json.decode(response.body) as Map<String, dynamic>;
      return (body['urls'] as Map<String, dynamic>)['regular'] as String;
    } else {
      throw Exception('Failed to load image');
    }
  }
}

Future<dynamic> main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String _imageUrl;
  late bool _isLoading;

  @override
  void initState() {
    super.initState();
    _loadImage();
  }

  Future<void> _loadImage() async {
    try {
      setState(() {
        _isLoading = true;
      });
      final String imageUrl = await UnsplashApi.getRandomImageUrl();
      setState(() {
        _imageUrl = imageUrl;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Unsplash App'), centerTitle: true),
        body: Center(
          child: _isLoading
              ? const CircularProgressIndicator()
              : Image.network(
                  _imageUrl,
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return const CircularProgressIndicator();
                  },
                  errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) => const Icon(Icons.error),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _loadImage,
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}

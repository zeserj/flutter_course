// Project 5 - Build a random image generator using Unsplash API
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class UnsplashApi {
  static final String? _accessKey = dotenv.env['UNSPLASH_ACCESS_KEY'];

  static Future<List<String>> getRandomImageUrls() async {
    final Uri url = Uri(
        scheme: 'https',
        host: 'api.unsplash.com',
        path: '/photos/random',
        queryParameters: <String, String?>{
          'client_id': '$_accessKey',
          'count': '20'
        },
    );

    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> body = json.decode(response.body) as List<dynamic>;
      return body.map((dynamic image)=> image as Map<String, dynamic>).map((Map<String, dynamic> image) => image ['urls'] as Map<String, dynamic>).map((Map<String, dynamic> urls) => urls['regular'] as String).toList();
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
  late List<String> _imageUrls;
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
      final List<String> imageUrls = await UnsplashApi.getRandomImageUrls();
      setState(() {
        _imageUrls = imageUrls;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Widget _buildImageGrid() {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      crossAxisCount: 2,
      children: _imageUrls.map<Widget>((String imageUrl) => Image.network(
        imageUrl,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return const CircularProgressIndicator();
        },
        errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) => const Icon(Icons.error),
      )).toList(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Unsplash App'), centerTitle: true),
        body: Center(
          child: _isLoading
              ? const CircularProgressIndicator()
              : _buildImageGrid(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _loadImage,
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}

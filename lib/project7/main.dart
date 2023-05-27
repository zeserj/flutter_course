// Project 6 - Build an Unsplash app with a search box, infinite scroll and model for api
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

import 'picture.dart';

Future<dynamic> main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UnsplashApp(),
    );
  }
}

class UnsplashApp extends StatefulWidget {
  const UnsplashApp({super.key});

  @override
  State<UnsplashApp> createState() => _UnsplashAppState();
}

class _UnsplashAppState extends State<UnsplashApp> {
  final List<Picture> _images = <Picture>[];
  bool _isLoading = false;
  bool _hasMore = true;

  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  String _query = 'photos';
  int _page = 1;

  @override
  void initState() {
    super.initState();
    _loadImage();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final double height = MediaQuery.of(context).size.height;
    final double offset = _scrollController.position.pixels;
    final double maxScrollExtent = _scrollController.position.maxScrollExtent;

    if (_hasMore && !_isLoading && maxScrollExtent - offset < 3 * height) {
      _page++;
      _loadImage();
    }
  }

  Future<List<Picture>> getImages(String query, int page) async {
    final String? accessKey = dotenv.env['UNSPLASH_ACCESS_KEY'];

    final Uri url = Uri(
      scheme: 'https',
      host: 'api.unsplash.com',
      path: '/search/photos',
      queryParameters: <String, String?>{
        'client_id': '$accessKey',
        'query': query,
        'page': page.toString(),
        'per_page': 30.toString(),
      },
    );

    final http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> body = json.decode(response.body) as Map<String, dynamic>;
      final List<dynamic> images = body['results'] as List<dynamic>;
      _hasMore = _page < (body['total_pages'] as int);

      return images.cast<Map<dynamic, dynamic>>().map((Map<dynamic, dynamic> json) => Picture.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load image');
    }
  }

  Future<void> _loadImage() async {
    try {
      setState(() {
        _isLoading = true;
      });
      final List<Picture> imageUrls = await getImages(_query, _page);

      setState(() {
        if (_page == 1) {
          _images.clear();
        }
        _images.addAll(imageUrls);
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unsplash App'),
        centerTitle: true,
        actions: <Widget>[
          if (_isLoading)
            const Center(
              child: FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
        ],
      ),
      body: _isLoading && _page == 1
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _searchController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                            hintText: 'Search...',
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () => _searchController.clear(),
                            ),
                            border: const OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _images.clear();
                          _query = _searchController.text;
                          _page = 1;
                          _loadImage();
                        },
                        child: const Text('search')),
                  ],
                ),
                Expanded(
                    flex: 4,
                    child: GridView.builder(
                      controller: _scrollController,
                      itemCount: _images.length,
                      padding: const EdgeInsets.all(10),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        final Picture picture = _images[index];
                        return Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            GridTile(
                              child: Image.network(
                                picture.urls.regular,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional.bottomEnd,
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: AlignmentDirectional.bottomCenter,
                                    end: AlignmentDirectional.topCenter,
                                    colors: <Color>[
                                      Colors.black45,
                                      Colors.black12,
                                    ],
                                  ),
                                ),
                                child: ListTile(
                                    title: Text(
                                      picture.user.username,
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                    trailing: CircleAvatar(
                                      backgroundImage: NetworkImage(picture.user.profileImage!.small!),
                                    )),
                              ),
                            )
                          ],
                        );
                      },
                    )),
              ],
            ),
    );
  }
}

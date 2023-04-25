import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Movie> _movies = <Movie>[];

  @override
  void initState() {
    super.initState();
    _getMovies();
  }

  Future<void> _getMovies() async {
    final Uri url = Uri(scheme: 'https', host: 'yts.mx', pathSegments: <String>[
      'api',
      'v2',
      'list_movies.json'
    ], queryParameters: <String, String>{
      'page': '4',
    });

    final Response response = await get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic> map = jsonDecode(response.body) as Map<String, dynamic>;
      final Map<String, dynamic> data = map['data'] as Map<String, dynamic>;
      final List<dynamic> movies = data['movies'] as List<dynamic>;

      for (int i = 0; i < movies.length; i++) {
        final Map<String, dynamic> movie = movies[i] as Map<String, dynamic>;
        final Movie item = Movie(
            title: movie['title'] as String,
            image: movie['medium_cover_image'] as String,
            rating: movie['rating'] as num,
            year: movie['year'] as int);
        _movies.add(item);
      }
    }

    setState(() {
      // update list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movies App'), centerTitle: true),
      body: GridView.builder(
        padding: const EdgeInsets.all(4.0),
        itemCount: _movies.length,
        itemBuilder: (BuildContext context, int index) {
          final Movie movie = _movies[index];

          return GridTile(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Image.network(movie.image, fit: BoxFit.cover),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                    color: Colors.black54,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${movie.title} (${movie.year})',
                          style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          'Rating: ${movie.rating}',
                          style: const TextStyle(fontSize: 14.0, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
      ),
    );
  }
}

class Movie {
  Movie({required this.title, required this.image, required this.rating, required this.year});

  final String title;
  final String image;
  final num rating;
  final int year;
}

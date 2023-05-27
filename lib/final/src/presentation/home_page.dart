import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';
import 'favorite_images_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    final double height = MediaQuery.of(context).size.height;
    final double offset = _scrollController.position.pixels;
    final double maxScrollExtent = _scrollController.position.maxScrollExtent;

    if (store.state.hasMore && !store.state.isLoading && maxScrollExtent - offset < 3 * height) {
      store.dispatch(GetImages.start(query: store.state.query, page: store.state.page));
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
          IsLoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              if (isLoading) {
                return const Center(
                  child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
          const FavoriteImagesButton(),
        ],
      ),
      body: IsLoadingContainer(
        builder: (BuildContext context, bool isLoading) {
          return FavoriteImagesContainer(
            builder: (BuildContext context, List<Picture> favoriteImages) {
              return ImagesContainer(
                builder: (BuildContext context, List<Picture> images) {
                  if (isLoading && images.isEmpty) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextField(
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
                                  hintText: 'Search...',
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (String value) {
                                  if (value.isEmpty) {
                                    return;
                                  }
                                  StoreProvider.of<AppState>(context).dispatch(GetImages.start(query: value, page: 1));
                                  _scrollController.jumpTo(0);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 4,
                        child: GridView.builder(
                          controller: _scrollController,
                          itemCount: images.length,
                          padding: const EdgeInsets.all(4.0),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 4,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            final Picture picture = images[index];
                            return GestureDetector(
                              onTap: () {
                                StoreProvider.of<AppState>(context).dispatch(SetSelectedImage(picture.id));
                                Navigator.pushNamed(context, '/details');
                              },
                              child: Stack(
                                fit: StackFit.expand,
                                children: <Widget>[
                                  GridTile(
                                    child: CachedNetworkImage(
                                      imageUrl: picture.urls.regular,
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
                                        contentPadding: const EdgeInsets.all(4.0),
                                        leading: SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: IconButton(
                                            padding: EdgeInsets.zero,
                                            iconSize: 24,
                                            icon: Icon(
                                              favoriteImages.contains(picture) ? Icons.favorite : Icons.favorite_border,
                                              color: favoriteImages.contains(picture) ? Colors.red : Colors.white,
                                            ),
                                            onPressed: () {
                                              if (favoriteImages.contains(picture)) {
                                                StoreProvider.of<AppState>(context)
                                                    .dispatch(SetFavoriteImage(picture, addFavorite: false));
                                              } else {
                                                StoreProvider.of<AppState>(context)
                                                    .dispatch(SetFavoriteImage(picture, addFavorite: true));
                                              }
                                            },
                                          ),
                                        ),
                                        title: Text(
                                          picture.user.username,
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                        trailing: CircleAvatar(
                                          backgroundImage: CachedNetworkImageProvider(picture.user.profileImage.medium),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

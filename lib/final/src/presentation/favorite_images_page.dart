import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import 'containers/index.dart';

class FavoriteImagesPage extends StatelessWidget {
  const FavoriteImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FavoriteImagesContainer(builder: (BuildContext context, List<Picture> favoriteImages) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            favoriteImages.isEmpty ? 'No favorites' : '${favoriteImages.length} favorites',
          ),
        ),
        body: favoriteImages.isEmpty
            ? const Center(child: Text('Add an image to favorites'))
            : GridView.builder(
                itemCount: favoriteImages.length,
                padding: const EdgeInsets.all(4.0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final Picture picture = favoriteImages[index];
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
      );
    });
  }
}

import 'package:flutter/material.dart';

import '../models/index.dart';
import 'containers/index.dart';

class FavoriteImagesButton extends StatelessWidget {
  const FavoriteImagesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FavoriteImagesContainer(
      builder: (BuildContext context, List<Picture> favoriteImages) {
        return Stack(
          alignment: AlignmentDirectional.topEnd,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/favorites');
              },
              icon: Icon(
                favoriteImages.isNotEmpty ? Icons.favorite : Icons.favorite_border,
                color: favoriteImages.isNotEmpty ? Colors.red : Colors.white,
              ),
            ),
            if (favoriteImages.isNotEmpty)
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(4),
                  child: Text('${favoriteImages.length}'),
                ),
              ),
          ],
        );
      },
    );
  }
}

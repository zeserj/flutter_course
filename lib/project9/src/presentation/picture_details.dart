import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/index.dart';
import 'containers/index.dart';

class PictureDetails extends StatelessWidget {
  const PictureDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectedPictureContainer(
      builder: (BuildContext context, Picture picture) {
        return Scaffold(
          appBar: AppBar(
            title: Text(picture.user.username),
            actions: <Widget>[
              CircleAvatar(
                foregroundImage: CachedNetworkImageProvider(picture.user.profileImage.medium),
              )
            ],
          ),
          body: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CachedNetworkImage(
                    imageUrl: picture.urls.regular,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Table(
                  children: <TableRow>[
                    TableRow(children: <Widget>[
                      const Text(
                        'Likes',
                        style: TextStyle(color: Colors.black54, fontSize: 14),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'By: ${picture.user.name}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]),
                    TableRow(children: <Widget>[
                      Text(
                        '${picture.likes}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(),
                    ]),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

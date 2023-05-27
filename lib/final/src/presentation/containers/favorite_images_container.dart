part of 'index.dart';

class FavoriteImagesContainer extends StatelessWidget {
  const FavoriteImagesContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Picture>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Picture>>(
      converter: (Store<AppState> store) {
        return store.state.favoriteImages;
      },
      builder: builder,
    );
  }
}

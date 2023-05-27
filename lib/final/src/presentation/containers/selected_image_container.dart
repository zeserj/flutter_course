part of 'index.dart';

class SelectedImageContainer extends StatelessWidget {
  const SelectedImageContainer({super.key, required this.builder});

  final ViewModelBuilder<Picture> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Picture>(
      builder: builder,
      converter: (Store<AppState> store) {
        int index = store.state.images.indexWhere((Picture picture) => picture.id == store.state.selectedPictureId);

        if (index == -1) {
          index =
              store.state.favoriteImages.indexWhere((Picture picture) => picture.id == store.state.selectedPictureId);
          return store.state.favoriteImages[index];
        } else {
          return store.state.images[index];
        }
      },
    );
  }
}

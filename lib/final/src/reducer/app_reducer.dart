import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

AppState reducer(AppState state, dynamic action) {
  if (kDebugMode) {
    print(action);
  }

  return _reducer(state, action);
}

Reducer<AppState> _reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetImagesStart>(_getImagesStart).call,
  TypedReducer<AppState, GetImagesSuccessful>(_getImagesSuccessful).call,
  TypedReducer<AppState, GetImagesError>(_getImagesError).call,
  TypedReducer<AppState, SetSelectedImage>(_setSelectedImage).call,
  TypedReducer<AppState, SetFavoriteImage>(_setFavoriteImage).call,
]);

AppState _getImagesStart(AppState state, GetImagesStart action) {
  return state.copyWith(
    isLoading: true,
    query: action.query,
    page: action.page,
  );
}

AppState _getImagesSuccessful(AppState state, GetImagesSuccessful action) {
  return state.copyWith(
    isLoading: false,
    hasMore: action.images.isNotEmpty,
    images: <Picture>[
      if (state.page != 1) ...state.images,
      ...action.images,
    ],
    page: state.page + 1,
  );
}

AppState _getImagesError(AppState state, GetImagesError action) {
  return state.copyWith(isLoading: false);
}

AppState _setSelectedImage(AppState state, SetSelectedImage action) {
  return state.copyWith(selectedPictureId: action.pictureId);
}

AppState _setFavoriteImage(AppState state, SetFavoriteImage action) {
  final List<Picture> favoriteImages = <Picture>[...state.favoriteImages];
  final int index = favoriteImages.indexWhere((Picture favorite) => favorite.id == action.picture.id);

  if (action.addFavorite) {
    if (index == -1) {
      favoriteImages.add(action.picture);
    }
  } else {
    favoriteImages.removeAt(index);
  }

  return state.copyWith(favoriteImages: favoriteImages);
}

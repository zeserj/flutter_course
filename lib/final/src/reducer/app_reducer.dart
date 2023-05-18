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

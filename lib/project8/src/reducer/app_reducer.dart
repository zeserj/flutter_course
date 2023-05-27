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
]);

AppState _getImagesStart(AppState state, GetImagesStart action) {
  final String newQuery = action.query != state.query ? action.query! : state.query;
  final int newPage = action.query != state.query ? 1 : state.page;

  return state.copyWith(
    isLoading: true,
    query: newQuery,
    page: newPage,
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

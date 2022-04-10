part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    bool? loggedIn,
  }) = _AppState;

  factory AppState.init() => const AppState(loggedIn: null);
}

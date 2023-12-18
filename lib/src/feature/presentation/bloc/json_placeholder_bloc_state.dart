part of 'json_placeholder_bloc_bloc.dart';

@immutable
sealed class JsonPlaceholderBlocState {}

final class JsonPlaceholderBlocInitialState extends JsonPlaceholderBlocState {}

final class JsonPlaceholderBlocLoadingState extends JsonPlaceholderBlocState {}

final class JsonPlaceholderBlocLoadedState extends JsonPlaceholderBlocState {
  final PostEntity jsonPlaceholderLoaded;

  JsonPlaceholderBlocLoadedState({required this.jsonPlaceholderLoaded});
}

final class JsonPlaceholderBlocErrorState extends JsonPlaceholderBlocState {
  final String errorMessage;

  JsonPlaceholderBlocErrorState({required this.errorMessage});
}
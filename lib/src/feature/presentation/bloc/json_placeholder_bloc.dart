
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json_placeholder_request/src/feature/data/implementations/data_json_placeholder_api_impl.dart';
import 'package:json_placeholder_request/src/feature/domain/models/json_placeholder_entity/json_placeholder_entity.dart';


part 'json_placeholder_event.dart';
part 'json_placeholder_state.dart';

class JsonPlaceholderBloc
    extends Bloc<JsonPlaceholderBlocEvent, JsonPlaceholderBlocState> {
  JsonPlaceholderBloc() : super(JsonPlaceholderBlocInitialState()) {
    on<FetchJsonPlaceholderBlocEvent>((event, emit) async {
      try {
        final jsonPlaceholderLoaded =
            await DataJsonPlaceholderApiImpl().fetchJsonPlaceholder();
        emit(JsonPlaceholderBlocLoadedState(
            jsonPlaceholderLoaded: jsonPlaceholderLoaded));
      } catch (e) {
        emit(JsonPlaceholderBlocErrorState(errorMessage: e.toString()));
      }
    });
  }
}

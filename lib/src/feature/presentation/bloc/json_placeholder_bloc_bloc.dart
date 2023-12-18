import 'package:bloc/bloc.dart';
import 'package:json_placeholder_request/src/feature/domain/models/json_placeholder_entity/json_placeholder_entity.dart';
import 'package:meta/meta.dart';

part 'json_placeholder_bloc_event.dart';
part 'json_placeholder_bloc_state.dart';

class JsonPlaceholderBlocBloc extends Bloc<JsonPlaceholderBlocEvent, JsonPlaceholderBlocState> {
  JsonPlaceholderBlocBloc() : super(JsonPlaceholderBlocInitialState()) {
    on<JsonPlaceholderBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

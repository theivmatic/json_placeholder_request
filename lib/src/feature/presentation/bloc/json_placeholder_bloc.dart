import 'package:bloc/bloc.dart';
import 'package:json_placeholder_request/src/feature/data/implementations/data_json_placeholder_api_impl.dart';
import 'package:json_placeholder_request/src/feature/domain/models/json_placeholder_entity/json_placeholder_entity.dart';
import 'package:meta/meta.dart';

part 'json_placeholder_event.dart';
part 'json_placeholder_state.dart';

class JsonPlaceholderBlocBloc
    extends Bloc<JsonPlaceholderBlocEvent, JsonPlaceholderBlocState> {
  JsonPlaceholderBlocBloc() : super(JsonPlaceholderBlocInitialState()) {
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

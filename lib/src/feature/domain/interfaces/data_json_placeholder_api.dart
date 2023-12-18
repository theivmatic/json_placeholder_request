import 'package:json_placeholder_request/src/feature/domain/models/json_placeholder_entity/json_placeholder_entity.dart';

abstract class IDataJsonPlaceholderApi {
  Future<List<PostEntity>> fetchJsonPlaceholder();
}
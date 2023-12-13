import 'package:http/http.dart' as http;
import 'package:json_placeholder_request/src/feature/domain/interfaces/data_json_placeholder_api.dart';
import 'package:json_placeholder_request/src/feature/domain/models/json_placeholder_entity/json_placeholder_entity.dart';

class DataJsonPlaceholderApiImpl implements IDataJsonPlaceholderApi {
  final http.Client? _client;

  DataJsonPlaceholderApiImpl({http.Client? client})
      : _client = client ?? http.Client();

  @override
  Future<PostEntity> fetchJsonPlaceholder({dynamic}) async {
    final responce = await _client!.get(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      headers: {
        'ContentType': 'application/json',
      },
    );
    if (responce.statusCode == 200) {
      return postEntityDataFromString(responce.body);
    } else {
      throw Exception(
          'Status Code: ${responce.statusCode}, Message: ${responce.reasonPhrase}');
    }
  }
}

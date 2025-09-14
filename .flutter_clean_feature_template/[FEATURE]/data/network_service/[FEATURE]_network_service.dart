import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '<FEATURE>_network_service.g.dart';

@RestApi(baseUrl: '', callAdapter: ResponseAdapter)
abstract class <FEATURE | pascalcase>NetworkService {
  factory <FEATURE | pascalcase>NetworkService({required Dio dio}) = _<FEATURE | pascalcase>NetworkService;
}


import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '../../../../flutter_clean_feature_template/[DEFAULT_FEATURE]/data/network_service/<DEFAULT_FEATURE>_network_service.g.dart';

@RestApi(baseUrl: '', callAdapter: ResponseAdapter)
abstract class <DEFAULT_FEATURE | pascalcase>NetworkService {
  factory <DEFAULT_FEATURE | pascalcase>NetworkService({required Dio dio}) = _<DEFAULT_FEATURE | pascalcase>NetworkService;
}


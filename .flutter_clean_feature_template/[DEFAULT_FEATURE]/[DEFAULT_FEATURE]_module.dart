import 'package:injectable/injectable.dart';

@module
abstract class <DEFAULT_FEATURE | pascalcase>Module {

  <DEFAULT_FEATURE | pascalcase>NetworkService get<DEFAULT_FEATURE | pascalcase>NetworkService(Dio dio) =>
      <DEFAULT_FEATURE | pascalcase>NetworkService(dio: dio);

  <DEFAULT_FEATURE | pascalcase>DataSource get<DEFAULT_FEATURE | pascalcase>DataSource(<DEFAULT_FEATURE | pascalcase>NetworkService service) =>
      <DEFAULT_FEATURE | pascalcase>DataSource(service: service);

  <DEFAULT_FEATURE | pascalcase>RepositoryInterface get<DEFAULT_FEATURE | pascalcase>RepositoryInterface(<DEFAULT_FEATURE | pascalcase>DataSource dataSource) =>
      <DEFAULT_FEATURE | pascalcase>Repository(dataSource: dataSource);

  <DEFAULT_FEATURE | pascalcase>UseCase get<DEFAULT_FEATURE | pascalcase>UseCase(<DEFAULT_FEATURE | pascalcase>RepositoryInterface repository) =>
      <DEFAULT_FEATURE | pascalcase>UseCase(repository: repository);

  <DEFAULT_FEATURE | pascalcase>Service get<DEFAULT_FEATURE | pascalcase>Service(<DEFAULT_FEATURE | pascalcase>RepositoryInterface repository) =>
      <DEFAULT_FEATURE | pascalcase>Service(repository: repository);

  <DEFAULT_FEATURE | pascalcase>Bloc get<DEFAULT_FEATURE | pascalcase>Bloc(<DEFAULT_FEATURE | pascalcase>UseCase <DEFAULT_FEATURE | camelCase>UseCase) =>
      <DEFAULT_FEATURE | pascalcase>Bloc(<DEFAULT_FEATURE | camelCase>UseCase: <DEFAULT_FEATURE | camelCase>UseCase);
}

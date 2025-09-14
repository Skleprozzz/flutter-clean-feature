import 'package:injectable/injectable.dart';

@module
abstract class <FEATURE | pascalcase>Module {

  <FEATURE | pascalcase>NetworkService get<FEATURE | pascalcase>NetworkService(Dio dio) =>
      <FEATURE | pascalcase>NetworkService(dio: dio);

  <FEATURE | pascalcase>DataSource get<FEATURE | pascalcase>DataSource(<FEATURE | pascalcase>NetworkService service) =>
      <FEATURE | pascalcase>DataSource(service: service);

  <FEATURE | pascalcase>RepositoryInterface get<FEATURE | pascalcase>RepositoryInterface(<FEATURE | pascalcase>DataSource dataSource) =>
      <FEATURE | pascalcase>Repository(dataSource: dataSource);

  <FEATURE | pascalcase>UseCase get<FEATURE | pascalcase>UseCase(<FEATURE | pascalcase>RepositoryInterface repository) =>
      <FEATURE | pascalcase>UseCase(repository: repository);

  <FEATURE | pascalcase>Service get<FEATURE | pascalcase>Service(<FEATURE | pascalcase>RepositoryInterface repository) =>
      <FEATURE | pascalcase>Service(repository: repository);

  <FEATURE | pascalcase>Bloc get<FEATURE | pascalcase>Bloc(<FEATURE | pascalcase>UseCase <FEATURE | camelCase>UseCase) =>
      <FEATURE | pascalcase>Bloc(<FEATURE | camelCase>UseCase: <FEATURE | camelCase>UseCase);
}

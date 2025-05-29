import 'package:injectable/injectable.dart';

@module
abstract class <FTName | pascalcase>Module {
  <FTName | pascalcase>DataSource get<FTName | pascalcase>DataSource(NetworkService service) =>
      <FTName | pascalcase>DataSource(service: service);

  <FTName | pascalcase>RepositoryInterface get<FTName | pascalcase>RepositoryInterface(<FTName | pascalcase>DataSource dataSource) =>
      <FTName | pascalcase>Repository(dataSource: dataSource);

  <FTName | pascalcase>UseCase get<FTName | pascalcase>UseCase(<FTName | pascalcase>RepositoryInterface repository) =>
      <FTName | pascalcase>UseCase(repository: repository);

  <FTName | pascalcase>Service get<FTName | pascalcase>Service(<FTName | pascalcase>RepositoryInterface repository) =>
      <FTName | pascalcase>Service(repository: repository);

  <FTName | pascalcase>Bloc get<FTName | pascalcase>Bloc(<FTName | pascalcase>UseCase useCase) =>
      <FTName | pascalcase>Bloc(useCase: useCase);
}

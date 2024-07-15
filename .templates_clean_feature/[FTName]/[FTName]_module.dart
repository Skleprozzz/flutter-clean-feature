import 'package:injectable/injectable.dart';

@module
abstract class <FTName | pascalcase>Module {
  <FTName | pascalcase>DataSource dataSource(NetworkService service) =>
      <FTName | pascalcase>DataSource(service: service);

  <FTName | pascalcase>RepositoryInterface repository(<FTName | pascalcase>DataSource dataSource) =>
      <FTName | pascalcase>Repository(dataSource: dataSource);

  <FTName | pascalcase>UseCase useCase(<FTName | pascalcase>RepositoryInterface repository) =>
      <FTName | pascalcase>UseCase(repository: repository);

  <FTName | pascalcase>Service service(<FTName | pascalcase>RepositoryInterface repository) =>
      <FTName | pascalcase>Service(repository: repository);

  <FTName | pascalcase>Bloc bloc(<FTName | pascalcase>UseCase useCase) =>
      <FTName | pascalcase>Bloc(useCase: useCase);
}

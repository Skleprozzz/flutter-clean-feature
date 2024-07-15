import 'package:injectable/injectable.dart';
import 'package:susanin_tourist_mob/app/network/service/network_service.dart';
import 'package:susanin_tourist_mob/features/city_picker/data/data_source/city_picker_data_source.dart';
import 'package:susanin_tourist_mob/features/city_picker/data/repository/city_picker_repository.dart';
import 'package:susanin_tourist_mob/features/city_picker/domain/repository/city_picker_repository_interface.dart';
import 'package:susanin_tourist_mob/features/city_picker/domain/usecase/city_picker_use_case.dart';
import 'package:susanin_tourist_mob/features/city_picker/presentation/bloc/city_picker_bloc.dart';

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

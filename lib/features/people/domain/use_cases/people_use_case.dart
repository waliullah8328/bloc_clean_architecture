import 'package:bloc_clean_architecture/core/resources/data_state.dart';
import 'package:bloc_clean_architecture/core/user_cases/uses_cases.dart';
import 'package:bloc_clean_architecture/features/people/domain/entity/people_entity.dart';
import 'package:bloc_clean_architecture/features/people/domain/repository/people_repository.dart';

class PeopleUseCase extends UseCases<DataState<PeopleEntity>, String> {
  final PeopleRepository peopleRepository;

  PeopleUseCase(this.peopleRepository);

  @override
  Future<DataState<PeopleEntity>> call(String? params) async {
    return peopleRepository.getPeople();
  }
}

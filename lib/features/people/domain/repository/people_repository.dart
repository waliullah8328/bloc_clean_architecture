import 'package:bloc_clean_architecture/core/resources/data_state.dart';
import 'package:bloc_clean_architecture/features/people/domain/entity/people_entity.dart';

abstract class PeopleRepository {

  Future<DataState<PeopleEntity>> getPeople();
  
}
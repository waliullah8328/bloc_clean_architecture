import 'package:bloc_clean_architecture/core/resources/data_state.dart';
import 'package:bloc_clean_architecture/features/people/data/data_source/remote/people_api_client.dart';
import 'package:bloc_clean_architecture/features/people/data/models/people_model.dart';
import 'package:bloc_clean_architecture/features/people/domain/entity/people_entity.dart';
import 'package:bloc_clean_architecture/features/people/domain/repository/people_repository.dart';
import 'package:dio/dio.dart';

class NewsRepositoryImpl extends PeopleRepository {

  final PeopleApiClient peopleApiClient;

  NewsRepositoryImpl (this.peopleApiClient);
  @override
  Future<DataState<PeopleEntity>> getPeople() async {
    
    try{
      Response response = await peopleApiClient.getPeople();

      if(response.statusCode == 200){
        PeopleEntity peopleEntity = PeopleModel.fromJson(response.data);
        return DataSuccess(peopleEntity );
      }else{
        return DataFailed("Unexpected status code ${response.statusCode}");
      }

    }catch(e){
      return DataFailed(e.toString());

    }
  }
}
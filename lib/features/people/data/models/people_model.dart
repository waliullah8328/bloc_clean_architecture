


import 'package:bloc_clean_architecture/features/people/domain/entity/people_entity.dart';

// ignore: must_be_immutable
class PeopleModel extends PeopleEntity {
   

    PeopleModel({
        super.userId,
        super.id,
        super.title,
        super.body,
    });

    factory PeopleModel.fromJson(Map<String, dynamic> json) => PeopleModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    
}
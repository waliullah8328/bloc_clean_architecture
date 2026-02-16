import 'package:bloc_clean_architecture/features/people/domain/entity/people_entity.dart';
import 'package:flutter/material.dart';

@immutable
sealed class PeopleStatus {}

class PeopleLoading extends PeopleStatus {
  PeopleLoading();
}

class PeopleLoaded extends PeopleStatus {
 final PeopleEntity peopleEntity;

  PeopleLoaded(this.peopleEntity);
}

class PeopleError extends PeopleStatus {
  final String message;

  PeopleError(this.message);
}

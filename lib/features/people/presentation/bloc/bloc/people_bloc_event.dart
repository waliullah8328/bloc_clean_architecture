part of 'people_bloc_bloc.dart';

sealed class PeopleBlocEvent extends Equatable {
  const PeopleBlocEvent();

  @override
  List<Object> get props => [];
}

class LoadPeopleEvent extends PeopleBlocEvent {


  const LoadPeopleEvent();

 
}


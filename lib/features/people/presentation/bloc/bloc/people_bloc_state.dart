part of 'people_bloc_bloc.dart';

class PeopleBlocState {
PeopleStatus status;

PeopleBlocState({required this.status });


PeopleBlocState copyWith({PeopleStatus? status}) {
    return PeopleBlocState(status: status?? this.status);
}

}
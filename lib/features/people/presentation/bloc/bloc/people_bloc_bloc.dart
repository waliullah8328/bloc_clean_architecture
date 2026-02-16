import 'package:bloc/bloc.dart';
import 'package:bloc_clean_architecture/core/resources/data_state.dart';
import 'package:bloc_clean_architecture/features/people/domain/use_cases/people_use_case.dart';
import 'package:bloc_clean_architecture/features/people/presentation/bloc/bloc/people_status.dart';
import 'package:equatable/equatable.dart';

part 'people_bloc_event.dart';
part 'people_bloc_state.dart';

class PeopleBlocBloc extends Bloc<PeopleBlocEvent, PeopleBlocState> {

  final PeopleUseCase _peopleUseCase;

  PeopleBlocBloc(this._peopleUseCase) : super(PeopleBlocState(status: PeopleLoading())) {
    on<LoadPeopleEvent>((event, emit) async {
      emit(state.copyWith(status: PeopleLoading()));

      DataState dataState = await _peopleUseCase(null);

      switch(dataState) {
        case DataSuccess():
          emit(state.copyWith(status: PeopleLoaded( dataState.data)));
          break;
        case DataFailed():
          emit(state.copyWith(status: PeopleError(dataState.error!)));
          break;
        default:
        emit(state.copyWith(status: PeopleError('Unknown error')));
      }
    });
  }
}

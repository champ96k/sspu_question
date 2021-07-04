import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../core.dart';
import '../models/models.dart';

part 'fetch_firebase_data_state.dart';

class FetchFirebaseDataCubit extends Cubit<FetchFirebaseDataState> {
  final FetchFirebaseRepository _repository;
  FetchFirebaseDataCubit({@required repository})
      : _repository = repository,
        super(LoadingState()) {
    _fetchQuestionBanks();
  }

  void _fetchQuestionBanks() async {
    try {
      emit(LoadingState());
      final models = await _repository.fetchFirebaseData();
      emit(LoadedState(models));
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}

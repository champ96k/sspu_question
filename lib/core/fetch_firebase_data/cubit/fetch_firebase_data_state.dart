part of 'fetch_firebase_data_cubit.dart';

abstract class FetchFirebaseDataState extends Equatable {}

class LoadingState extends FetchFirebaseDataState {
  @override
  List<Object?> get props => ['LoadingState'];
}

class LoadedState extends FetchFirebaseDataState {
  final QuestionBankModel model;
  LoadedState(this.model);
  @override
  List<Object?> get props => [model];
}

class ErrorState extends FetchFirebaseDataState {
  final String errorMessage;
  ErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

part of 'fetch_firebase_data_cubit.dart';

abstract class FetchFirebaseDataState extends Equatable {}

class LoadingState extends FetchFirebaseDataState {
  @override
  List<Object?> get props => ['LoadingState'];
}

class LoadedState extends FetchFirebaseDataState {
  final List<QuestionBankModel> models;
  LoadedState(this.models);
  @override
  List<Object?> get props => [models];
}

class ErrorState extends FetchFirebaseDataState {
  final String errorMessage;
  ErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

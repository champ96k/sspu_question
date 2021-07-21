import 'package:get_it/get_it.dart';

import '../fetch_firebase_data/repository/fetch_firebase_repository.dart';
import '../services/firestore_services.dart';

GetIt getIt = GetIt.instance;

void serviceLoactor() {
  getIt.registerLazySingleton<FetchFirebaseRepository>(
      () => FetchFirebaseRepository());

  getIt.registerLazySingleton<FirestoreServices>(() => FirestoreServices());
}

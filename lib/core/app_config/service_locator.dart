import 'package:get_it/get_it.dart';

import '../core.dart';

GetIt getIt = GetIt.instance;

void serviceLoactor() {
  getIt.registerLazySingleton<FetchFirebaseRepository>(
      () => FetchFirebaseRepository());
}

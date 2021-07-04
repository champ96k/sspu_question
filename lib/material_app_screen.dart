import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'core/core.dart';
import 'src/pages/home/home_screen.dart';

class MaterialAppScreen extends StatelessWidget {
  const MaterialAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FetchFirebaseDataCubit>(
      create: (context) => FetchFirebaseDataCubit(
        repository: GetIt.I<FetchFirebaseRepository>(),
      ),
      child: MaterialApp(
        onGenerateRoute: RouteGenerator.generate,
        theme: ThemeData(
          scaffoldBackgroundColor: ConstantsColor.primaryBackground,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

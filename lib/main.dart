// @dart=2.9
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

import 'core/app_config/service_locator.dart';
import 'material_app_screen.dart';
import 'src/pages/error/initialization_error.dart';
import 'src/pages/loading/loading_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Phoenix(child: MyApp()));
}

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Set default `_initialized` and `_error` state to false
  bool _initialized = false;
  bool _error = false;

  // Define an async function to initialize FlutterFire
  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      serviceLoactor();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Show error message if initialization failed
    if (_error) {
      return const InitializationError();
    }

    // Show a loader until FlutterFire is initialized
    if (!_initialized) {
      return const LoadingScreen();
    }
    return const MaterialAppScreen();
  }
}

import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:easy_way/injector/injector.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Custom [BlocObserver] implementation that logs state changes and errors.
///
/// Helps in debugging by printing bloc state transitions and errors to the console.
class AppBlocObserver extends BlocObserver {
  /// Creates a const instance of [AppBlocObserver].
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

/// Initializes app dependencies, local storage, error handling, and runs the app.
///
/// - Ensures Flutter bindings are initialized.
/// - Configures dependency injection.
/// - Initializes Hive for local data storage and opens a box named 'myAppData'.
/// - Sets a global Flutter error handler to log uncaught errors.
/// - Sets the global [Bloc.observer] to [AppBlocObserver].
/// - Runs the Flutter app by invoking the provided [builder] function.
///
/// [builder] should return the root widget of the app.
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  await Hive.initFlutter();
  await Hive.openBox<dynamic>('myAppData');

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  runApp(await builder());
}

import 'package:easy_way/car_route/car_route_screen.dart';
import 'package:easy_way/car_route/cubit/car_route_cubit.dart' show CarRouteCubit;
import 'package:easy_way/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: BlocProvider(
        create: (_) => CarRouteCubit(),
        child: const CarRouteScreen(),
      ),
    );
  }
}

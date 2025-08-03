import 'package:easy_way/core/app_colors.dart';
import 'package:easy_way/injector/injector.dart';
import 'package:easy_way/l10n/gen/app_localizations.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_cubit.dart';
import 'package:easy_way/presentation/cubits/user_preferences/user_preferences_state.dart';
import 'package:easy_way/presentation/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserPreferencesCubit>(
          create: (ctx) => injector()..getThemeMode(),
        ),
        BlocProvider<CarConnectCubit>(create: (ctx) => injector()),
      ],
      child: BlocBuilder<UserPreferencesCubit, UserPreferencesState>(
        builder: (context, state) {
          final isDarkMode = state.isDarkTheme;
          final isBangla = state.isBangla;

          SystemChrome.setSystemUIOverlayStyle(
            SystemUiOverlayStyle(
              statusBarColor: context.colors.backGroundColor,
            ),
          );
          return MaterialApp.router(
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              scaffoldBackgroundColor: context.colors.backGroundColor,
              colorScheme: isDarkMode
                  ? const ColorScheme.dark().copyWith(
                      primary: context.colors.primaryColor,
                    )
                  : const ColorScheme.light().copyWith(
                      primary: context.colors.primaryColor,
                    ),
              useMaterial3: true,
            ),
            locale: isBangla ? const Locale('bn') : const Locale('en'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
          );
        },
      ),
    );
  }
}

import 'package:easy_way/injector/injector.dart';
import 'package:easy_way/l10n/l10n.dart';
import 'package:easy_way/presentation/car_connect/cubit/car_connect_cubit.dart';
import 'package:easy_way/presentation/routes/routes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CarConnectCubit>(
      create: (ctx) => injector(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,

          // scaffoldBackgroundColor: context.colors.backgroundColor,
          // colorScheme: isDarkMode
          //     ? const ColorScheme.dark().copyWith(
          //   primary: context.colors.primaryColor,
          // )
          //     : const ColorScheme.light().copyWith(
          //   primary: context.colors.primaryColor,
          // ),
          // textTheme: isBangla
          //     ? GoogleFonts.notoSansTextTheme().copyWith(
          //   bodyLarge: TextStyle(color: context.colors.textColor),
          // )
          //     : GoogleFonts.poppinsTextTheme().copyWith(
          //   bodyLarge: TextStyle(color: context.colors.textColor),
          // ),
          // hintColor: context.colors.lightTextColor,
          // dialogBackgroundColor: Colors.white,
        ),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        // locale: isBangla ? const Locale('bn') : const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}

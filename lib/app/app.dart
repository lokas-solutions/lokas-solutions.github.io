import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:plk_galacticos/app/app.dart';
import 'package:plk_galacticos/config/config.dart';
import 'package:plk_galacticos/screens/screens.dart';

export 'bloc/app_bloc.dart';

CustomTransitionPage defaultTransitionPage<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (_, __, ___, child) => child,
  );
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      routes: [
        GoRoute(
          path: '/',
          name: 'home',
          pageBuilder: (context, state) => defaultTransitionPage(
            context: context,
            state: state,
            child: HomeScreen(),
          ),
        ),
        GoRoute(
          path: '/members',
          name: 'members',
          pageBuilder: (context, state) => defaultTransitionPage(
            context: context,
            state: state,
            child: MembersScreen(),
          ),
        ),
      ],
      builder: (context, state, child) {
        return ShellScreen(child: child);
      },
    ),
  ],
  errorBuilder: (context, state) {
    return Scaffold(body: Center(child: CircularProgressIndicator()));
  },
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state.loading) return CircularProgressIndicator();

          return MaterialApp.router(
            title: 'PLK Galacticos',
            theme: ThemeConfig.theme,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: BlocProvider.of<AppBloc>(context).state.locale,
            routerConfig: _router,
          );
        },
      ),
    );
  }
}

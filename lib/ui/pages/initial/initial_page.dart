import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/app_router.dart';
import '../../../logic/bloc/app/app_bloc.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppBloc, AppState>(
      listener: (context, state) {
        if (state.status == AppStatus.unauthenticated) {
          Navigator.of(context).pushReplacementNamed(AppRouter.signin);
        } else if (state.status == AppStatus.authenticated) {
          Navigator.of(context).pushReplacementNamed(AppRouter.main);
        }
      },
      child: const InitialView(),
    );
  }
}

class InitialView extends StatelessWidget {
  const InitialView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              width: 100,
              height: 100,
              child: Theme.of(context).brightness == Brightness.light
                  ? Image.asset('assets/icons/companion1.png')
                  : Image.asset('assets/icons/companion2.png'),
            ),
            const SizedBox(height: 40),
            Center(
              child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).primaryColor)),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_navigation_generator_annotations/flutter_navigation_generator_annotations.dart';
import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/viewmodel/splash_viewmodel.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@flutterRoute
class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProviderWidget<SplashViewmodel>(
      create: () => getIt()..init(),
      builder: (context, viewModel) => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

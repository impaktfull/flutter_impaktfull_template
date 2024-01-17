import 'package:flutter/material.dart';
import 'package:flutter_template/app.dart';
import 'package:flutter_template/common.dart';
import 'package:flutter_template/util/flavor/flavor_config.dart';

Future<void> main() async {
  await initApp();
  FlavorConfig(
    flavor: Flavor.beta,
    values: const FlavorValues(
      baseUrl: 'https://your-api.com/api/v1/',
    ),
  );
  runApp(const App());
}

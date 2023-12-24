import 'package:flutter/material.dart';
import 'package:flutter_template/di/injectable.dart';

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
}

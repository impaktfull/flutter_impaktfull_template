import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_template/di/injectable.config.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

final getIt = GetIt.asNewInstance();

@InjectableInit(
  initializerName: r'initGetIt',
  generateForDir: ['lib'],
)
Future<void> configureDependencies() async {
  getIt.initGetIt();
  await configureImpaktfullArchitecture(GetItHelper(getIt));
  await getIt.allReady();
}

@module
abstract class RegisterModule {
  @lazySingleton
  Dio provideDio() {
    final dio = Dio();
    (dio.transformer as BackgroundTransformer).jsonDecodeCallback = parseJson;
    return dio;
  }
}

dynamic _parseAndDecode(String response) => jsonDecode(response);

dynamic parseJson(String text) =>
    compute<String, dynamic>(_parseAndDecode, text);

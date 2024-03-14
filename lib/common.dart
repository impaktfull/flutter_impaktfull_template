import 'package:flutter_template/di/injectable.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:impaktfull_architecture/impaktfull_architecture.dart';

Future<void> initApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  _initTheme();
  _initLocalizations();
}

T _getTheme<T>(BuildContext context) => ImpaktfullTheme.of(context) as T;
void _initTheme() {
  themeLookup = _getTheme;
}

L _getLocale<L>(BuildContext context) => Localization.of(context) as L;
void _initLocalizations() {
  localizationLookup = _getLocale;
}

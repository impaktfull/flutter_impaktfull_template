import 'package:impaktfull_architecture/impaktfull_architecture.dart';

@injectable
class HomeViewmodel extends ChangeNotifierEx {
  var _counter = 0;

  String get counterValue => '$_counter';

  Future<void> init() async {}

  void onIncrementTapped() {
    _counter++;
    notifyListeners();
  }
}

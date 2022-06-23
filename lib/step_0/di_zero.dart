import 'package:di_1/classes/classes.dart';
import 'package:get_it/get_it.dart';

class DiInit0 {
  void init() {
    final getIt = GetIt.instance;
    getIt.registerSingleton(DataSource1());
  }

  void deInit() {
    final getIt = GetIt.instance;
    getIt.reset();
  }
}

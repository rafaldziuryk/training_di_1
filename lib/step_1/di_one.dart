import 'package:di_1/classes/classes.dart';
import 'package:get_it/get_it.dart';

class DiInit1 {
  void init() {
    final getIt = GetIt.instance;
    getIt.registerSingleton(DataSource1());
    getIt.registerSingleton(DataSource2());
    getIt.registerSingleton(Repository1Impl(
      dataSource1: getIt.get(),
      dataSource2: getIt.get(),
    ));
  }

  void deInit() {
    final getIt = GetIt.instance;
    getIt.reset();
  }
}

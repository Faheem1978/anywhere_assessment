import 'package:get_it/get_it.dart';
import 'package:anywhere_ui/anywhere_ui.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => Api());
  locator.registerLazySingleton(() => NavigationService());
}

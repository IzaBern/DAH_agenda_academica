import 'package:agenda_academica/store/activity_store.dart';
import 'package:agenda_academica/store/navigation_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpDependencies() {
  if (!getIt.isRegistered<NavigationStore>()) {
    getIt.registerSingleton<NavigationStore>(NavigationStore());
  }
  
  if (!getIt.isRegistered<ActivityStore>()) {
    getIt.registerSingleton<ActivityStore>(ActivityStore());
  }
}
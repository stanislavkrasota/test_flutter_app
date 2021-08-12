import 'package:flutter_app/screens/people/people_manager.dart';
import 'package:flutter_app/screens/people/people_service.dart';
import 'package:get_it/get_it.dart';


final GetIt sl = GetIt.instance;

void setup() {
  // Services
  sl.registerLazySingleton<PeopleService>(() => PeopleService());
  
  // Managers
  sl.registerLazySingleton<PeopleManager>(() => PeopleManager());
}
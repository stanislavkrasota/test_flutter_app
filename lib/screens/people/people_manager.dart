import 'package:flutter_app/main.dart';
import 'package:flutter_app/models/person.dart';
import 'package:flutter_app/screens/people/people_service.dart';
import 'package:rx_command/rx_command.dart';

import '../../service_locator.dart';

//
// abstract class PeopleManager {
//   RxCommand<void, List<Person>> fetchPeople;
// }
//
// class PeopleManagerImplementation implements PeopleManager{
//   @override
//   RxCommand<void, List<Person>> fetchPeople;
//
//   PeopleManagerImplementation() {
//     fetchPeople = RxCommand.createAsyncNoParam(_fetchPeople);
//   }
//
//   Future<List<Person>> _fetchPeople() async {
//     return await sl.get<PeopleService>().fetchPeople();
//   }
// }



class PeopleManager {
  @override
  RxCommand<void, List<Person>> fetchPeople;

  PeopleManager() {
    fetchPeople = RxCommand.createAsyncNoParam(_fetchPeople);
  }

  Future<List<Person>> _fetchPeople() async {
    return await sl.get<PeopleService>().fetchPeople();
  }
}
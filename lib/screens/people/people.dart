import 'package:flutter/material.dart';
import 'package:get_it_mixin/get_it_mixin.dart';
import 'package:flutter_app/screens/people/people_manager.dart';
import 'package:flutter_app/models/person.dart';

import '../../service_locator.dart';

class PeoplePage extends StatelessWidget with GetItMixin  {
  final PeopleManager peopleManager = sl.get<PeopleManager>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: Text('People'),
          centerTitle: true
      ),
      body: Container(
         child: StreamBuilder<List<Person>>(
          stream:  peopleManager.fetchPeople,
          builder: (BuildContext context, AsyncSnapshot<List<Person>> snapshot) {
            List<Person> persons = snapshot.data;
            return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  Person _person = persons[index];
                  return ListTile(
                    title: Text(_person.name),
                    subtitle: Text(_person.email),
                    leading: CircleAvatar(),
                  );
                },
                separatorBuilder: (context, index) => Divider(),
                itemCount: persons?.length ?? 0
            );
          }
         )
      ),
    );
  }
}

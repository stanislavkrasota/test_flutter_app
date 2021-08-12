
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/people/people.dart';


class Nav extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // registerHandler((PeopleManager x) => x.fetchPeople.thrownExceptions, (context, newValue, cancel) async {
    //   if (cancel != null) {
    //     await showDialog(
    //         context: context,
    //         builder: (context) {
    //           return AlertDialog(content: Text(cancel.toString()));
    //         }
    //     );
    //   }
    // });

    final padding = EdgeInsets.symmetric(horizontal: 20);

    return Drawer(
      child: Container(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 24),
            BuildMenuItem(
              text: 'People',
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0)
            ),
            const SizedBox(height: 16),
            BuildMenuItem(
              text: 'Favorites',
              icon: Icons.favorite_border,
              onClicked: () => selectedItem(context, 1)
            ),
            const SizedBox(height: 16),
            BuildMenuItem(
              text: 'Workflow',
              icon: Icons.work_off_outlined,
              onClicked: () => selectedItem(context, 0)
            ),
            const SizedBox(height: 16 ),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),

    ],
        ),
      ),
    );
  }

  Widget BuildMenuItem({
    String text,
    IconData icon,
    VoidCallback onClicked
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch(index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PeoplePage(),
        ));
        break;
    }
  }
}


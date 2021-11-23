import 'package:flutter/material.dart';
import 'ghost_face.dart';
import 'jason.dart';
import 'freddy.dart';
import 'chucky.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int current = 0;

  // ignore: non_constant_identifier_names
  final tab_list = [
    Init(),
    Umb(),
    Eeve(),
    Mew(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: tab_list[current],
      drawer: drawer(),
    );
  }

  title() {
    return AppBar(
      title: Text("HALLOWEEN DRAWER"),
      backgroundColor: Colors.purple,
    );
  }

  drawer() {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple),
      child: Drawer(
          child: ListView(
        children: [
          circle(),
          list('Ghost Face', 'First', Icons.ac_unit, 0),
          list('Jason', 'Second', Icons.access_alarm, 1),
          list('Freddy Krueger', 'Third', Icons.accessibility, 2),
          list('Chucky', 'Fourth', Icons.backpack, 3)
        ],
      )),
    );
  }

  circle() {
    return Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.scaleDown,
                image: NetworkImage(
                    'https://c.tenor.com/hUZWT9W6VScAAAAC/ghostface-scream-mask.gif'))));
  }

  list(title, sub, icon, c) {
    return ListTile(
      title: Text(title),
      subtitle: Text(sub),
      trailing: Icon(icon),
      onTap: () {
        setState(() {
          Navigator.pop(context);
          current = c;
        });
      },
    );
  }
}

import 'package:flutter/material.dart';

class Eeve extends StatelessWidget {
  const Eeve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
        child: Container(
            height: 500,
            width: 500,
            child: Image(
                fit: BoxFit.contain,
                image: NetworkImage(
                    'https://4.bp.blogspot.com/--gVs_BUtRyI/VagiveQFEiI/AAAAAAAAGXo/fZ2f29xwul4/s640/Freddy%2BKrueger.gif'))));
  }
}

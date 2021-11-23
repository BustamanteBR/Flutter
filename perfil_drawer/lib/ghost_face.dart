import 'package:flutter/material.dart';

class Init extends StatelessWidget {
  const Init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: 500,
            width: 500,
            child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://c.tenor.com/hUZWT9W6VScAAAAC/ghostface-scream-mask.gif'))));
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      backgroundColor: Colors.purple[300],
      body: body(),
    );
  }

  title() {
    return AppBar(
      title: Text(
        'Anuncios',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.purple,
    );
  }

  body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          carousel(),
        ],
      ),
    );
  }

  image(link) {
    return Image.network(
      link,
      width: 250,
      height: 150,
      fit: BoxFit.cover,
    );
  }

  carousel() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      height: 400,
      child: ListView(
        children: <Widget>[
          pading(
              containerAd(
                  image(
                      'https://s2.glbimg.com/0C9XOU-eCrnqARniqPNVC9SJFhQ=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2021/R/R/SWxgtMRuuLJAtuDAqWxQ/bocw-wz-s6-thehaunting-005.jpg'),
                  container(
                      pading(
                          text('Pack The Haunting - GHOST FACE', 30.0,
                              Colors.white),
                          0,
                          10,
                          0,
                          0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image('https://i.ytimg.com/vi/FVgNkA2HU2o/maxresdefault.jpg'),
                  container(
                      pading(
                          text('Pack Haunting of Verdansk - SAW ', 30.0,
                              Colors.white),
                          0,
                          10,
                          0,
                          0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://warzonei.com/wp-content/uploads/2021/10/Necro-Queen-bundle-warzone.jpg'),
                  container(
                      pading(
                          text('Tracer Pack Necro Queen', 30.0, Colors.white),
                          0,
                          10,
                          0,
                          0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image('https://i.ytimg.com/vi/JPaL982puCc/maxresdefault.jpg'),
                  container(
                      pading(
                          text('Pack Dark Dispatch Maxis', 30.0, Colors.white),
                          0,
                          10,
                          0,
                          0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://bnetcmsus-a.akamaihd.net/cms/blog_header/4VYBO0OWYTYM1622243107976.jpg'),
                  container(
                      pading(text('Pack Deaths Veil Maxis', 30.0, Colors.white),
                          0, 10, 0, 0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://s2.glbimg.com/hFatRyNUc37XEr2eimb6t1i63j8=/0x0:1920x1080/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_bc8228b6673f488aa253bbcb03c80ec5/internal_photos/bs/2021/J/s/jTz4FsQkGYbDgjAQMYvw/bocw-season-three-reloaded-002.jpg'),
                  container(
                      pading(text('Tracer Pack RAMBO', 30.0, Colors.white), 0,
                          10, 0, 0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  containerAd(context, content) {
    return Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0), child: context),
          content
        ]));
  }

  container(content, describe) {
    return Container(
      child: Column(
        children: <Widget>[content, describe],
      ),
    );
  }

  pading(content, double L, double T, double B, double R) {
    return Padding(padding: EdgeInsets.fromLTRB(L, T, R, B), child: content);
  }

  text(content, double size, color) {
    return Text(content, style: TextStyle(fontSize: size, color: color));
  }

  unavailable() {
    return text('Indisponivel', 30.0, Colors.red);
  }
}

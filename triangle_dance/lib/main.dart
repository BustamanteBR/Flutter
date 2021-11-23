import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tropa do Bustamante',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Ola eu sou Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var _imagem =
      'https://i.pinimg.com/originals/85/42/6f/85426f9ac4242d91a8f69f5276fd0d5d.gif';

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _changeImage() {
    setState(() {
      if (_counter == 1) {
        _imagem =
            'https://pm1.narvii.com/6853/89bcdbd2dd8e56ea15362242903a3ab431e2e8fav2_hq.jpg';
      }
      if (_counter == 2) {
        _imagem =
            'https://lh5.googleusercontent.com/p3zyaIq86afCaRyZ3_r1SMC0C1Fl48_a_pSdNRv2oS9J_X62d9P0IwtedZzNmq6eixIuKwONHOOfVlGXG8dQuqsI_6gYWNStYNKBL3UzLmUtkYkCdCPnNXvVGhtGNgR4W_9Y4KHi';
      }
      if (_counter == 3) {
        _imagem =
            'https://lh4.googleusercontent.com/b8KHO_0CjS7HIMMD_WTrkxF9pJ76xT6WSetjvuDB6N7rCq8Wlwdk_0_IH4MYjtkcN4qTToTZaoMbK0B9i2U_Ww_jggoO4VM0GkZpuD20FY7H7bAhkfPujosP1jJT1fPrw90DT7OZ';
      }
      if (_counter == 4) {
        _imagem =
            'https://i.pinimg.com/originals/8a/ee/e1/8aeee13acbaeecb859fd1a3353235c8a.jpg';
      }
      if (_counter == 5) {
        _imagem =
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRByoPZ7MKsuLnAzpzgBPa8eIT-_Fx-j9RlgCeyn_24XG6tKjxP7QElI2m4OVyw0IY3FkA&usqp=CAU';
      }
      if (_counter == 6) {
        _imagem =
            'https://i.pinimg.com/originals/48/87/cd/4887cd11d88a3617456f1d8f6a9cac14.jpg';
      }
      if (_counter == 7) {
        _imagem = 'https://cdn.ligadosgames.com/imagens/thermite-cke.jpg';
      }
      if (_counter == 8) {
        _imagem =
            'https://i2-prod.dailystar.co.uk/incoming/article20035960.ece/ALTERNATES/s1200b/1640680';
      }
      if (_counter == 9) {
        _imagem =
            'https://sm.ign.com/ign_br/news/a/atualizaca/atualizacao-de-rainbow-six-siege-traz-ajustes-ao-operador-pu_zpur.jpg';
        _counter = 1;
      }
    });
  }

  void _callAll() {
    setState(() {
      _incrementCounter();
      _changeImage();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(_imagem),
            Text(
              'Chama no Passinho',
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _callAll,
        tooltip: 'Counting',
        child: Icon(Icons.favorite),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool nightMode = false;
  bool smtxt = false;

  double fsize = 25.0;

  Color varBlack = Colors.black;
  Color varWhite = Colors.white;

  @override
  void initState() {
    super.initState();
    getSaved();
  }

  getSaved() async {
    SharedPreferences config = await SharedPreferences.getInstance();
    bool? nightValue = config.getBool("nKey");
    bool? sizeValue = config.getBool("sKey");
    if (nightValue != null && nightValue != nightMode) {
      nightMode = nightValue;
      setState(() {
        nightBringer();
      });
    }
    if (sizeValue == true) fsize = 15;
    if (sizeValue == false) fsize = 25;
  }

  setSaved() async {
    SharedPreferences config = await SharedPreferences.getInstance();
    await config.setBool('nKey', nightMode);

    await config.setBool('sKey', smtxt);
  }

  nightBringer() {
    setState(() {
      if (nightMode == false) {
        varBlack = Colors.black;
        varWhite = Colors.white;
      }
      if (nightMode == true) {
        varBlack = Colors.white54;
        varWhite = Colors.black87;
      }
      setSaved();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      body: body(),
    );
  }

  title() {
    return AppBar(
      title: Text('Veja isso', style: TextStyle(color: varWhite)),
      backgroundColor: Colors.blueAccent[300],
    );
  }

  body() {
    return Container(
        color: varWhite,
        child: Column(
          children: <Widget>[
            pad(0, 10, 0, 0),
            options(),
            pad(0, 10, 0, 0),
            cont(),
          ],
        ));
  }

  options() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        opTxt('Dark Mode'),
        nswt(),
        pad(10, 0, 10, 0),
        opTxt('Small Text'),
        tswt(),
      ],
    );
  }

  cont() {
    return Container(
        height: 400,
        width: 320,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
            border: Border.all(color: varBlack, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: SingleChildScrollView(child: lyric()));
  }

  opTxt(txt) {
    return Text(txt,
        style: TextStyle(
          fontSize: 17.5,
          fontWeight: FontWeight.bold,
          color: varBlack,
        ));
  }

  pad(double L, double T, double R, double B) {
    return Padding(padding: EdgeInsets.fromLTRB(L, T, R, B));
  }

  nswt() {
    return Switch(
      value: nightMode,
      onChanged: (value) {
        setState(() {
          nightMode = value;
          nightBringer();
        });
      },
      activeTrackColor: Colors.orange[300],
      inactiveTrackColor: Colors.grey,
      activeColor: Colors.grey[200],
      inactiveThumbColor: Colors.grey[200],
    );
  }

  tswt() {
    return Switch(
      value: smtxt,
      onChanged: (value) {
        setState(() {
          smtxt = value;

          if (smtxt == true) {
            fsize = 15.0;
          }
          if (smtxt == false) {
            fsize = 25.0;
          }
          setSaved();
        });
      },
      activeTrackColor: Colors.orange[300],
      inactiveTrackColor: Colors.grey,
      activeColor: Colors.grey[200],
      inactiveThumbColor: Colors.grey[200],
    );
  }

  lyric() {
    return Text(
        "?? proibido chorar sem aprender, Levantar-se um dia sem saber o que fazer Ter medo de suas lembran??as. ?? proibido n??o rir dos problema N??o lutar pelo que se quer, Abandonar tudo por medo, N??o transformar sonhos em realidade. ?? proibido n??o demonstrar amor Fazer com que algu??m pague por tuas d??vidas e mau-humor. ?? proibido deixar os amigos N??o tentar compreender o que viveram juntos Cham??-los somente quando necessita deles. ?? proibido n??o ser voc?? mesmo diante das pessoas, Fingir que elas n??o te importam, Ser gentil s?? para que se lembrem de voc??, Esquecer aqueles que gostam de voc??. ?? proibido n??o fazer as coisas por si mesmo, N??o crer em Deus e fazer seu destino, Ter medo da vida e de seus compromissos, N??o viver cada dia como se fosse um ??ltimo suspiro. ?? proibido sentir saudades de algu??m sem se alegrar, Esquecer seus olhos, seu sorriso, s?? porque seus caminhos se desencontraram, Esquecer seu passado e pag??-lo com seu presente. ?? proibido n??o tentar compreender as pessoas, Pensar que as vidas deles valem mais que a sua, N??o saber que cada um tem seu caminho e sua sorte. ?? proibido n??o criar sua hist??ria, Deixar de dar gra??as a Deus por sua vida, N??o ter um momento para quem necessita de voc??, N??o compreender que o que a vida te d??, tamb??m te tira. ?? proibido n??o buscar a felicidade, N??o viver sua vida com uma atitude positiva, N??o pensar que podemos ser melhores, N??o sentir que sem voc?? este mundo n??o seria igual.",
        style: TextStyle(fontSize: fsize, color: varBlack));
  }
}

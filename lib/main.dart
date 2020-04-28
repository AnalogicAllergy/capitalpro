import 'package:capitalpro/pages/worker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import './utils/colors.dart' as OurColours;
import './utils/dimensions.dart' as OurDimensions;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[_findWorker()],
          ),
          Column(
            children: <Widget>[_findJobs()],
          ),
        ],
      ),
    ));
  }
}

class _findWorker extends StatelessWidget {
  const _findWorker({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Center(
            child: Container(
          height: OurDimensions.pictureSize,
          width: MediaQuery.of(context).size.width - 20,
          child: SvgPicture.asset("assets/find_people.svg"),
        )),
        Text(
          "Encontre especialistas",
          style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Entre em contato diretamente. Sem cadastro!",
          style: GoogleFonts.lato(fontSize: 16),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 44,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(OurColours.ourBlue)),
            child: Center(
              child: Text(
                "Quero contratar",
                style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class _findJobs extends StatelessWidget {
  const _findJobs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Center(
            child: Container(
          height: OurDimensions.pictureSize,
          width: MediaQuery.of(context).size.width - 20,
          child: SvgPicture.asset("assets/find_jobs.svg"),
        )),
        Text(
          "Presta serviços?",
          style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Cadastre-se em segundos! Não precisa de currículo.",
          style: GoogleFonts.lato(fontSize: 14),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Worker()));
          },
          child: Container(
            height: 44,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
                border: Border.all(color: Color(OurColours.ourBlue)),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            child: Center(
              child: Text(
                "Cadastrar como freelancer",
                style: GoogleFonts.lato(
                    fontSize: 18, color: Color(OurColours.ourBlue)),
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Jud',
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
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    // Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
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
      body: ListView(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          children: <Widget>[
            Row(
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: CupertinoButton(
                    onPressed: () => {showAlertDialog(context)},
                    child: const Text('About'),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: CupertinoButton(
                    onPressed: () => {
                      _selectDate(context),
                      // ignore: avoid_print
                      print(selectedDate.day +
                          selectedDate.month +
                          selectedDate.year)
                    },
                    child: const Text('Release Date'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(
                      flex: 10,
                      child: Text(
                        '5 Trending Anime This Season',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.red),
                      ),
                    )
                  ]),
            ),
            Container(
                color: Colors.yellow,
                height: 380,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image(
                          image: NetworkImage(
                              'https://cdn.myanimelist.net/images/anime/1111/127508.jpg')),
                    ),
                    Expanded(
                        flex: 7,
                        child: Text(
                          '1.   SPY X FAMILY',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 21),
                        ))
                  ],
                )),
            Container(
                color: Colors.yellow,
                height: 380,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image(
                          image: NetworkImage(
                              'https://cdn.myanimelist.net/images/anime/1806/126216.jpg')),
                    ),
                    Expanded(
                        flex: 7,
                        child: Text(
                          '2.   Chainsaw Man',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 21),
                        ))
                  ],
                )),
            Container(
                color: Colors.yellow,
                height: 380,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image(
                          image: NetworkImage(
                              'https://cdn.myanimelist.net/images/anime/1874/121869.jpg')),
                    ),
                    Expanded(
                        flex: 7,
                        child: Text(
                          '3.   Eminence in Shadow',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 21),
                        ))
                  ],
                )),
            Container(
                color: Colors.yellow,
                height: 380,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image(
                          image: NetworkImage(
                              'https://cdn.myanimelist.net/images/anime/1258/126929.jpg')),
                    ),
                    Expanded(
                        flex: 7,
                        child: Text(
                          '4.   Blue Lock',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 21),
                        ))
                  ],
                )),
            Container(
                color: Colors.yellow,
                height: 380,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Image(
                          image: NetworkImage(
                              'https://cdn.myanimelist.net/images/anime/1764/126627.jpg')),
                    ),
                    Expanded(
                        flex: 7,
                        child: Text(
                          '5.   Bleach: Thousand-Year Blood War',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 21),
                        ))
                  ],
                )),
          ]),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("About"),
    content: const Text("ini adalah aplikasi untuk melihat daftar anime"),
    actions: [
      okButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

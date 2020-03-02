import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';

import 'Music.dart';

void main() async {
  runApp(MyApp());
  Raper morgen = new Raper("Morgenshtern", "Пыль");
  morgen.display();
  morgen.play();

  List<String> names = new List<String>();
  names.add("Kizaru");
  names.add("Face");
  names.add("Skrip");

  Iterator<String> iterator = names.iterator;
  while(iterator.moveNext()){
    print(iterator.current);
  }

  //Iterable
  void loop(final Iterable<int> list) {
    if(list.isNotEmpty) {
      print(list.first);
      loop(list.skip(1));
    }
  }
  final Random rng = Random();
  final Iterable<int> list = Iterable<int>.generate(3, (i) => rng.nextInt(100));
  print(list.toList());
  loop(list);



  //toJson
  RapTrack track = RapTrack("Morgen", "Pyl");
  Map<String, dynamic> json = track.toJson();
  RapTrack trackJson = RapTrack.fromJson(json);
  print("$trackJson");

  foo(){
    return 10;
  }

  bar(value){
    return value;
  }

  Future<int> future = new Future(foo);  // Result of foo() as a future.
  future.then((int value) => bar(value))
      .catchError((e) => 499);

  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum); // 55

  singleStream();
  broadcast();

}

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}

asyncFunc() async{
  var x = 0;
  var count = await counter(x);
  if(count == 4){
    print("x=4");
  }
}

counter(int x){
  return x++;
}

singleStream() {
  var data = [1,2,3,4,5]; // some sample data
  var stream = new Stream.fromIterable(data);
  stream.listen((value) {
    print("Received: $value");
  });
}

broadcast() {
  var data = [1,2,3,4,5];
  var stream = new Stream.fromIterable(data);
  var broadcastStream = stream.asBroadcastStream();

  broadcastStream.listen((value) => print("stream.listen: $value"));
  broadcastStream.first.then((value) => print("stream.first: $value"));
  broadcastStream.last.then((value) => print("stream.last: $value"));
  broadcastStream.isEmpty.then((value) => print("stream.isEmpty: $value"));
  broadcastStream.length.then((value) => print("stream.length: $value"));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

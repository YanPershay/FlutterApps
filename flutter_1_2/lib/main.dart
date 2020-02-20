import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  hello();
  math(5,7);
  math(5,7,9);
  person();
  showPerson(person);

  var ages = {16, 18, 19, 20, 21};
  for (var n in ages){
    print(n);
  }

  for (int i = 0; i < 10; i++){
    if (i == 5)
      break;
    print(i);
  }

  for (int i = 0; i < 10; i++){
    if (i == 7)
      continue;
    print(i);
  }

  int x = 12;
  int y = 0;
  int res;

  try {
    res = x ~/ y;
  }
  catch(e) {
    print(e);
  }
}

void hello(){
  print("Hello world");
}

void math(int a, int b, [int k]){
  int c = a + b;
  print(c.toString());
  print(k);
}

void person({name = "Tom", age = 20}){
  print("$name, $age");
}

void showPerson(Function func){
  func();
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

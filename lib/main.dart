import 'package:flutter/material.dart';
import 'package:listview/car.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


 List<car> cars=[
  car("Audi","",Image.asset("images/audi.jpg")),
  car("BMW","",Image.asset("images/bmw.jpg")),
  car("dmax","",Image.asset("images/dmax.jpg")),
  car("ferrari","",Image.asset("images/ferrari.jpg")),
  car("Lamborghini","",Image.asset("images/lamborghini.jpg")),
  car("Mercedes","",Image.asset("images/mercedes.jpg")),
  car("Opel Astra","",Image.asset("images/opelAstra.jpg")),
  car("Tesla","",Image.asset("images/tesla.jpg")),
  car("Toyouta","",Image.asset("images/toyouta.jpg")),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView"),),
    );
  }
}

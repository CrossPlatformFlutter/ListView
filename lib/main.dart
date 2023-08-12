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
  car("Audi","1",Image.asset("images/audi.jpg")),
  car("BMW","2",Image.asset("images/bmw.jpg")),
  car("dmax","3",Image.asset("images/dmax.jpg")),
  car("ferrari","4",Image.asset("images/ferrari.jpg")),
  car("Lamborghini","5",Image.asset("images/lamborghini.jpg")),
  car("Mercedes","6",Image.asset("images/mercedes.jpg")),
  car("Opel Astra","7",Image.asset("images/opelAstra.jpg")),
  car("Tesla","8",Image.asset("images/tesla.jpg")),
  car("Toyouta","9",Image.asset("images/toyouta.jpg")),
    car("Mercedes","10",Image.asset("images/mercedes.jpg")),
  car("Opel Astra","11",Image.asset("images/opelAstra.jpg")),
  car("Tesla","12",Image.asset("images/tesla.jpg")),
  car("Toyouta","13",Image.asset("images/toyouta.jpg")),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView"),),
      body: ListView.builder(  itemCount: cars.length,
                            itemBuilder: (context,index){
                              final item=cars[index];
                              return Dismissible(
                                key: Key(item.model), 
                                background:  Container(
                                   color: Colors.cyan,
                                    child:const Icon(Icons.delete,size: 40,color: Colors.white,),
                                ),
                              onDismissed: (direction){
                                setState(() {
                                  cars.remove(item);
                                });
                                ScaffoldMessenger.of(context).showSnackBar(
                                   SnackBar(content: Text("${item.brand} Deleted"))
                                );
                              },
                              child: ListTile(
                                title:Text(item.brand),
                               leading:  Container(
                                  width: 50, 
                                  height: 50, 
                                  decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(25), 
                                     boxShadow:[
                                       BoxShadow(
                                          color: const Color.fromARGB(255, 161, 142, 142),
                                      )
                                     ]
                                  ),
                                  child: item.image,
                                ),
                              ),
                              );
                            },
                          ),
                  );
  }
}

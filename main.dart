import 'package:flutter/material.dart';

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
        primarySwatch: Colors.purple, 
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> { 
  @override 
  Widget build(BuildContext context) { 
    return DefaultTabController( 
      length: 3, 
      child: Scaffold( 
        appBar: AppBar( 
          title: Text("Home Page"), 
        ), 
         body: Padding( 
          padding: const EdgeInsets.all(8.0), 
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [ 
              Container( 
                height: 50, 
                decoration: BoxDecoration( 
                   borderRadius: BorderRadius.circular(20), color: Colors.red), 
                 child: TabBar( 
                   tabs: [ 
                    Tab( 
                      icon: Icon( 
                        Icons.home, 
                        color: Colors.black, 
                      ), 
                    ), 
                    Tab( 
                      icon: Icon( 
                        Icons.contacts, 
                        color: Colors.black, 
                      ), 
                    ), 
                    Tab( 
                      icon: Icon( 
                        Icons.settings, 
                        color: Colors.black, 
                      ), 
                    ), 
                  ], 
                ), 
              ), 
              Expanded( 
                child: TabBarView(children: [ 
                   
                ]), 
              ) 
            ], 
          ), 
        ), 
      ), 
    ); 
  } 
}
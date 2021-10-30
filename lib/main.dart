import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom sheet',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Dismissible(
          key: ValueKey("145"),
          child: ListTile(
            title: Text('Tamim',style: TextStyle(color: Colors.white),),
            subtitle: Text("Tamimiskhan@gmail.com",style: TextStyle(color: Colors.white),),
            trailing: Icon(Icons.access_alarms,color: Colors.white,),
            tileColor: Colors.green,
          ),
          background: Container(
            color: Colors.blue,
            child: Icon(
              Icons.delete,
              size: 40,
            ),
          ),
          secondaryBackground: Container(
            color: Colors.red,
            child: Icon(
              Icons.delete,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}

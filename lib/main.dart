import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Home(),
    );
  }
}

class Home extends StatelessWidget {
  var size, height, width;
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MediaQuery Demo"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        color: Colors.yellow,
        height: height/2,
        width: width/2,
      ),

    );
  }
}



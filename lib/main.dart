import 'package:flutter/material.dart';
import 'package:avatar/images.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Avatar Builder'),
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
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(children: [
          Text('Avatar Builder'),
          SizedBox(width: 275,
            child: Stack(
              children: [
                Image.asset('assets/mouth/body_default.png'),
                Image.asset('assets/accessory/accessory_kurt.png'),
                //Image.asset('assets/accessory/$accessories'),
                Image.asset('assets/clothing/clothes_hoodie.png'),
                // Image.asset('assets/accessory/${clothing[index]}'),
                Image.asset('assets/eyebrows/eyebrow_default.png'),
                // Image.asset('assets/accessory/${eyebrows[index]}'),
                Image.asset('assets/eyes/eyes_default.png'),
                // Image.asset('assets/accessory/${eyes[index]}'),
                Image.asset('assets/hair/top_short_dreads_01.png'),
                // Image.asset('assets/accessory/${hair[index]}'),
                Image.asset('assets/mouth/mouth_default.png'),
                // Image.asset('assets/accessory/${mouth[index]}'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (Icon(Icons.arrow_left, size: 45,)),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Accessory')])),
              Icon(Icons.arrow_right, size: 45,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (Icon(Icons.arrow_left, size: 45,)),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Clothing')])),
              Icon(Icons.arrow_right, size: 45,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (Icon(Icons.arrow_left, size: 45,)),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Eyebrows')])),
              Icon(Icons.arrow_right, size: 45,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (Icon(Icons.arrow_left, size: 45,)),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Eyes')])),
              Icon(Icons.arrow_right, size: 45,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (Icon(Icons.arrow_left, size: 45,)),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Hair')])),
              Icon(Icons.arrow_right, size: 45,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (Icon(Icons.arrow_left, size: 45,)),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('Mouth')])),
              Icon(Icons.arrow_right, size: 45,)
            ],
          ),
        ])));
  }
}

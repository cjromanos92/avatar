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
  int accessoryIndex = 0;
  int clothingIndex = 0;
  int eyebrowIndex = 0;
  int eyeIndex = 0;
  int hairIndex = 0;
  int mouthIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(children: [
          SizedBox(width: 275,
            child: Center(
              child: Stack(
                children: [
                  Image.asset('assets/skin/${skinList[0]}'),
                  Image.asset('assets/hair/${hairList[hairIndex]}'),
                  Image.asset('assets/clothing/${clothingList[clothingIndex]}'),
                  Image.asset('assets/eyebrow/${eyebrowsList[eyebrowIndex]}'),
                  Image.asset('assets/eyes/${eyesList[eyeIndex]}'),
                  Image.asset('assets/mouth/${mouthList[mouthIndex]}'),
                  Image.asset('assets/accessories/${accessoriesList[accessoryIndex]}'),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (TextButton(child:const Icon(Icons.arrow_left, size: 45,), onPressed: (){
                setState(() {
                  if(accessoryIndex == 0){
                    accessoryIndex = accessoriesList.length-1;
                  }else {
                    accessoryIndex = accessoryIndex - 1;
                  }});
              })),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('Accessory')])),
              (TextButton(child:const Icon(Icons.arrow_right, size: 45,), onPressed: (){
                setState(() {
                  if(accessoryIndex == accessoriesList.length-1){
                    accessoryIndex = 0;
                  }else {
                    accessoryIndex = accessoryIndex + 1;
                  }
                });
              })),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (TextButton(child:const Icon(Icons.arrow_left, size: 45,), onPressed: (){
                setState(() {
                  if(clothingIndex == 0){
                    clothingIndex = clothingList.length-1;
                  }else {
                    clothingIndex = clothingIndex - 1;
                  }
                });
              })),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('Clothing')])),
              (TextButton(child:const Icon(Icons.arrow_right, size: 45,), onPressed: (){
                setState(() {
                  if(clothingIndex == clothingList.length-1){
                    clothingIndex = 0;
                  }else {
                    clothingIndex = clothingIndex + 1;
                  }
                });
              })),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (TextButton(child:const Icon(Icons.arrow_left, size: 45,), onPressed: (){
                setState(() {
                  if(eyebrowIndex == 0){
                    eyebrowIndex = eyebrowsList.length-1;
                  }else {
                    eyebrowIndex = eyebrowIndex - 1;
                  }
                });
              })),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('Eyebrows')])),
              (TextButton(child:const Icon(Icons.arrow_right, size: 45,), onPressed: (){
                setState(() {
                  if(eyebrowIndex == eyebrowsList.length-1){
                    eyebrowIndex = 0;
                  }else {
                    eyebrowIndex = eyebrowIndex + 1;
                  }
                });
              })),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (TextButton(child:const Icon(Icons.arrow_left, size: 45,), onPressed: (){
                setState(() {
                  if(eyeIndex == 0){
                    eyeIndex = eyesList.length-1;
                  }else {
                    eyeIndex = eyeIndex - 1;
                  }
                });
              })),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('Eyes')])),
              (TextButton(child:const Icon(Icons.arrow_right, size: 45,), onPressed: (){
                setState(() {
                  if(eyeIndex == eyesList.length-1){
                    eyeIndex = 0;
                  }else {
                    eyeIndex = eyeIndex + 1;
                  }
                });
              })),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (TextButton(child:const Icon(Icons.arrow_left, size: 45,), onPressed: (){
                setState(() {
                  if(hairIndex == 0){
                    hairIndex = hairList.length-1;
                  }else {
                    hairIndex = hairIndex - 1;
                  }
                });
              })),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('Hair')])),
              (TextButton(child:const Icon(Icons.arrow_right, size: 45,), onPressed: (){
                setState(() {
                  if(hairIndex == hairList.length-1){
                    hairIndex = 0;
                  }else {
                    hairIndex = hairIndex + 1;
                  }
                });
              })),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (TextButton(child:const Icon(Icons.arrow_left, size: 45,), onPressed: (){
                setState(() {
                  if(mouthIndex == 0){
                    mouthIndex = mouthList.length-1;
                  }else {
                    mouthIndex = mouthIndex - 1;
                  }
                });
              })),
              SizedBox(
                  width: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('Mouth')])),
              (TextButton(child:const Icon(Icons.arrow_right, size: 45,), onPressed: (){
                setState(() {
                  if(mouthIndex == mouthList.length-1){
                    mouthIndex = 0;
                  }else {
                    mouthIndex = mouthIndex + 1;
                  }
                });
              })),
            ],
          ),
        ])));
  }
}


import 'dart:typed_data';
import 'package:flutter/material.dart';

class ShowPic extends StatefulWidget {
  late List<int> _imgFile;
  ShowPic(List<int> imgFile){
    this._imgFile = imgFile;
  }

  @override
  _ShowPicState createState() => _ShowPicState(_imgFile);
}

class _ShowPicState extends State<ShowPic> {
  late List<int> _imgFile;
  _ShowPicState(List<int> imgFile){
    this._imgFile = imgFile;
  }

    @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image.memory(Uint8List.fromList(_imgFile))
    );
  }
}

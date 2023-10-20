import 'package:flutter/material.dart';
import 'package:movieapp_20091/model/Media.dart'; // 
import 'dart:ui' as ui;
class MediaDetail extends StatelessWidget{
final Media media;
MediaDetail(this.media);

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Stack(fit: StackFit.expand,
      children: <Widget>[
        new Image.network(
          media.getBackDropUrl(),
          fit: BoxFit.cover,
        ),
          new BackdropFilter(
            filter: new ui.ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: new Container(
              color: Colors.black.withOpacity(0.4),
            ),
          ),
          new SingleChildScrollView(
            child: new Container(
              margin: const EdgeInsets.all(20.0),
              child: new Column(
                children: <Widget>[
                  new Container(
                    alignment: Alignment.center,
                    child: new Container(
                      width: 390.0,
                      height: 390.0,
                    ),
                  )
                ],
              ),
            ),
          )
      ],),
    );
  }
}